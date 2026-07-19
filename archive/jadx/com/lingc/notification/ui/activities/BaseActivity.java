package com.lingc.notification.ui.activities;

import a.b.i.a.m;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BaseActivity extends m {
    public static List<Activity> o = new ArrayList();

    public boolean l() {
        boolean z = getSharedPreferences("globalSettings", 0).getBoolean("hideInBackground", false);
        if (z) {
            if (Build.VERSION.SDK_INT < 21) {
                return false;
            }
            finishAndRemoveTask();
        }
        return z;
    }

    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o.add(this);
    }

    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        o.remove(this);
    }

    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, android.app.Activity
    public void onStop() {
        super.onStop();
        if (o.size() == 1) {
            l();
        }
    }
}
