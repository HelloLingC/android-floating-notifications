package com.lingc.notification;

import a.b.b.a.a.a;
import android.app.Application;
import c.b.a.b;

/* JADX INFO: loaded from: classes.dex */
public class MyApplication extends Application {
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        b bVar = b.f1705a;
        bVar.f1706b = getApplicationContext();
        Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(bVar);
        a.w = getApplicationContext();
    }
}
