package com.lingc.notification;

import android.app.Notification;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.PowerManager;
import android.view.accessibility.AccessibilityEvent;

import com.lingc.notification.data.NotificationRecord;
import com.lingc.notification.data.NotificationRepository;
import com.lingc.notification.overlay.OverlayCoordinator;
import com.lingc.notification.overlay.OverlayPayload;
import com.lingc.notification.util.Settings;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class AccessibilityService extends android.accessibilityservice.AccessibilityService {
    private final NotificationRepository repository = new NotificationRepository();

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (!Settings.global(this).getBoolean("notifitSuperMode", false)) return;
        if (!(event.getParcelableData() instanceof Notification) || event.getPackageName() == null) return;
        String packageName = event.getPackageName().toString();
        if (getPackageName().equals(packageName) || "android".equals(packageName)
                || repository.getBlacklist().contains(packageName)) return;
        PowerManager power = (PowerManager) getSystemService(POWER_SERVICE);
        if (!(Build.VERSION.SDK_INT >= 20 ? power.isInteractive() : power.isScreenOn())) return;

        Notification notification = (Notification) event.getParcelableData();
        String title = String.valueOf(notification.extras.getCharSequence(Notification.EXTRA_TITLE, ""));
        String content = String.valueOf(notification.extras.getCharSequence(Notification.EXTRA_TEXT, ""));
        if (title.isEmpty() && content.isEmpty()) return;
        repository.add(new NotificationRecord(title, content, packageName,
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date())));
        Drawable icon = null;
        try { icon = getPackageManager().getApplicationIcon(packageName); } catch (Exception ignored) {}
        OverlayCoordinator.show(this, new OverlayPayload(packageName, title, content, null, icon,
                notification.contentIntent));
    }

    @Override public void onInterrupt() {}
}
