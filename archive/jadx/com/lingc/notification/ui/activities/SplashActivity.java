package com.lingc.notification.ui.activities;

import a.b.h.a.ba;
import android.accessibilityservice.AccessibilityService;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.widget.Button;
import c.b.a.c.a.w;
import c.b.a.c.a.x;
import c.b.a.c.a.y;
import c.b.a.c.a.z;
import com.lingc.notification.R;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class SplashActivity extends BaseActivity {
    public boolean p;
    public Button q;
    public Button r;
    public Button s;
    public Button t;

    public static boolean a(Context context, Class<? extends AccessibilityService> cls) {
        int i;
        String string;
        String str = context.getPackageName() + "/" + cls.getCanonicalName();
        try {
            i = Settings.Secure.getInt(context.getApplicationContext().getContentResolver(), "accessibility_enabled");
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            i = 0;
        }
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        if (i == 1 && (string = Settings.Secure.getString(context.getApplicationContext().getContentResolver(), "enabled_accessibility_services")) != null) {
            simpleStringSplitter.setString(string);
            while (simpleStringSplitter.hasNext()) {
                if (simpleStringSplitter.next().equalsIgnoreCase(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean m() {
        try {
            try {
                Intent intent = new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS");
                intent.addFlags(268435456);
                startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent();
            intent2.addFlags(268435456);
            intent2.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$NotificationAccessSettingsActivity"));
            intent2.putExtra(":settings:show_fragment", "NotificationAccessSettings");
            startActivity(intent2);
            return true;
        }
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        this.q = (Button) findViewById(R.id.splash_getnotifica_btn);
        this.r = (Button) findViewById(R.id.splash_getfloating_btn);
        this.s = (Button) findViewById(R.id.splash_battery_btn);
        this.t = (Button) findViewById(R.id.splash_accessibility_btn);
        this.q.setOnClickListener(new w(this));
        this.r.setOnClickListener(new x(this));
        this.s.setOnClickListener(new y(this));
        this.t.setOnClickListener(new z(this));
    }

    @Override // a.b.h.a.ActivityC0072k, android.app.Activity
    public void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT < 23) {
            this.p = true;
            this.r.setEnabled(false);
        }
        String packageName = getPackageName();
        String string = Settings.Secure.getString(getContentResolver(), "enabled_notification_listeners");
        if (string != null ? string.contains(packageName) : false) {
            this.q.setEnabled(false);
        }
        if (Build.VERSION.SDK_INT >= 23 ? ((PowerManager) getSystemService("power")).isIgnoringBatteryOptimizations(getPackageName()) : true) {
            this.s.setEnabled(false);
        }
        if (a(this, (Class<? extends AccessibilityService>) com.lingc.notification.AccessibilityService.class)) {
            this.t.setEnabled(false);
        }
        if (Build.VERSION.SDK_INT >= 23 && Settings.canDrawOverlays(this)) {
            this.p = Settings.canDrawOverlays(this);
            this.r.setEnabled(false);
        }
        boolean booleanExtra = getIntent().getBooleanExtra("isMain", false);
        if (ba.a(this).contains(getPackageName()) && this.p && !booleanExtra) {
            startActivity(getSharedPreferences("appSettings", 0).getBoolean("isFirstBoot", true) ? new Intent(this, (Class<?>) IntroActivity.class) : new Intent(this, (Class<?>) MainActivity.class));
            finish();
        }
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
