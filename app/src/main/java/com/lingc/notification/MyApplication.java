package com.lingc.notification;

import android.app.Application;

import com.lingc.notification.data.LegacyObjectStore;
import com.lingc.notification.util.CrashHandler;

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        LegacyObjectStore.initialize(this);
        Thread.setDefaultUncaughtExceptionHandler(new CrashHandler(this));
    }
}
