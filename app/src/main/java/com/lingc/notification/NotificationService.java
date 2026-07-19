package com.lingc.notification;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;

import androidx.core.app.NotificationCompat;

import com.lingc.notification.data.NotificationRecord;
import com.lingc.notification.data.NotificationRepository;
import com.lingc.notification.overlay.OverlayCoordinator;
import com.lingc.notification.overlay.OverlayPayload;
import com.lingc.notification.util.KeywordFilter;
import com.lingc.notification.util.Settings;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class NotificationService extends NotificationListenerService {
    private static final String MIRROR_CHANNEL = "041123";
    private final NotificationRepository repository = new NotificationRepository();
    private int interceptedId = Integer.MIN_VALUE;

    @Override
    public void onNotificationPosted(StatusBarNotification status) {
        if (!shouldIntercept(status)) return;
        String packageName = status.getPackageName();
        if (repository.getBlacklist().contains(packageName)) return;

        Notification source = status.getNotification();
        Bundle extras = source.extras;
        String title = text(extras.getCharSequence(Notification.EXTRA_TITLE));
        String content = text(extras.getCharSequence(Notification.EXTRA_TEXT));
        if (TextUtils.isEmpty(title) && TextUtils.isEmpty(content)) return;

        interceptedId = status.getId();
        repository.add(new NotificationRecord(title, content, packageName,
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date())));

        if (Build.VERSION.SDK_INT >= 21) cancelNotification(status.getKey());
        else cancelAllNotifications();
        if (Settings.global(this).getBoolean("notifitSuperMode", false)) return;
        if (KeywordFilter.isBlocked(title, content, repository.getKeywords())) return;

        Bitmap largeIcon = null;
        Object rawIcon = extras.get(Notification.EXTRA_LARGE_ICON);
        if (rawIcon instanceof Bitmap) largeIcon = (Bitmap) rawIcon;
        Drawable appIcon = null;
        try { appIcon = getPackageManager().getApplicationIcon(packageName); } catch (Exception ignored) {}
        OverlayCoordinator.show(this, new OverlayPayload(packageName, title, content, largeIcon,
                appIcon, source.contentIntent));
    }

    @Override
    public void onNotificationRemoved(StatusBarNotification status) {
        super.onNotificationRemoved(status);
        if (status == null || status.getId() != interceptedId) return;
        if (getPackageName().equals(status.getPackageName()) || "android".equals(status.getPackageName())) return;
        if (!Settings.global(this).getBoolean("notifitShowInBar", false)) return;

        Notification source = status.getNotification();
        String title = text(source.extras.getCharSequence(Notification.EXTRA_TITLE));
        String content = text(source.extras.getCharSequence(Notification.EXTRA_TEXT));
        NotificationManager manager = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= 26) {
            manager.createNotificationChannel(new NotificationChannel(MIRROR_CHANNEL,
                    "在状态栏通知", NotificationManager.IMPORTANCE_HIGH));
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, MIRROR_CHANNEL)
                .setWhen(System.currentTimeMillis())
                .setSmallIcon(R.drawable.ic_notification)
                .setLargeIcon(android.graphics.BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher))
                .setContentTitle(TextUtils.isEmpty(title) ? getString(R.string.app_name) : title)
                .setContentText(content)
                .setStyle(new NotificationCompat.BigTextStyle().bigText(content))
                .setContentIntent(source.contentIntent)
                .setAutoCancel(true)
                .setPriority(NotificationCompat.PRIORITY_HIGH);
        manager.notify(status.getPackageName(), status.getId(), builder.build());
    }

    private boolean shouldIntercept(StatusBarNotification status) {
        if (status == null || !status.isClearable()) return false;
        String packageName = status.getPackageName();
        if (getPackageName().equals(packageName) || "android".equals(packageName)) return false;
        PowerManager power = (PowerManager) getSystemService(POWER_SERVICE);
        return Build.VERSION.SDK_INT >= 20 ? power.isInteractive() : power.isScreenOn();
    }

    private static String text(CharSequence value) { return value == null ? "" : value.toString(); }
}
