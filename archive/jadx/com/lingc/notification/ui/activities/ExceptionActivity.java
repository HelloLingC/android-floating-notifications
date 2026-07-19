package com.lingc.notification.ui.activities;

import a.b.i.a.m;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import c.b.a.c.a.h;
import c.b.a.c.a.i;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class ExceptionActivity extends m {
    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_exception);
        TextView textView = (TextView) findViewById(R.id.exception_info_text);
        Button button = (Button) findViewById(R.id.exception_copy_btn);
        findViewById(R.id.exception_exit_btn).setOnClickListener(new h(this));
        if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra("message");
            textView.setText(stringExtra);
            button.setOnClickListener(new i(this, stringExtra));
        }
    }
}
