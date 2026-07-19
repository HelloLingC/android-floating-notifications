package com.lingc.notification.ui.activities;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import c.b.a.c.a.ViewOnClickListenerC0172a;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class DoateActivity extends BaseActivity {
    public int p = 0;

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_doate);
        if (Build.VERSION.SDK_INT >= 23) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(Color.parseColor("#FF35B751"));
        }
        findViewById(R.id.pay_change_btn).setOnClickListener(new ViewOnClickListenerC0172a(this, (LinearLayout) findViewById(R.id.pay_lay), (TextView) findViewById(R.id.pay_text), (ImageView) findViewById(R.id.pay_img)));
    }
}
