package com.lingc.notification.ui.activities;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;

import com.lingc.notification.NotificationService;
import com.lingc.notification.R;
import com.lingc.notification.ui.intro.IntroActivity;

public class SplashActivity extends BaseActivity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        if (hasRequiredPermissions()) {
            continueToApp();
            return;
        }
        setContentView(R.layout.activity_splash);
        findViewById(R.id.splash_getnotifica_btn).setOnClickListener(v -> startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS")));
        findViewById(R.id.splash_getfloating_btn).setOnClickListener(v -> {
            if (Build.VERSION.SDK_INT >= 23) startActivity(new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + getPackageName())));
        });
        findViewById(R.id.splash_battery_btn).setOnClickListener(v -> {
            if (Build.VERSION.SDK_INT >= 23) startActivity(new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS, Uri.parse("package:" + getPackageName())));
        });
        findViewById(R.id.splash_accessibility_btn).setOnClickListener(v -> startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS)));
    }

    @Override protected void onResume() {
        super.onResume();
        if (hasRequiredPermissions()) continueToApp();
    }

    private boolean hasRequiredPermissions() {
        boolean overlay = Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(this);
        String enabled = Settings.Secure.getString(getContentResolver(), "enabled_notification_listeners");
        ComponentName component = new ComponentName(this, NotificationService.class);
        return overlay && enabled != null && enabled.contains(component.flattenToString());
    }

    private void continueToApp() {
        if (isFinishing()) return;
        boolean first = com.lingc.notification.util.Settings.app(this).getBoolean("isFirstBoot", true);
        startActivity(new Intent(this, first ? IntroActivity.class : MainActivity.class));
        finish();
    }
}
