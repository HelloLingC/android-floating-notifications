package com.lingc.notification.util;

import android.content.Context;
import android.content.Intent;

import com.lingc.notification.ui.activities.ExceptionActivity;

import java.io.PrintWriter;
import java.io.StringWriter;

public final class CrashHandler implements Thread.UncaughtExceptionHandler {
    private final Context context;
    private final Thread.UncaughtExceptionHandler fallback;

    public CrashHandler(Context context) {
        this.context = context.getApplicationContext();
        this.fallback = Thread.getDefaultUncaughtExceptionHandler();
    }

    @Override
    public void uncaughtException(Thread thread, Throwable throwable) {
        try {
            StringWriter text = new StringWriter();
            throwable.printStackTrace(new PrintWriter(text));
            Intent intent = new Intent(context, ExceptionActivity.class)
                    .putExtra("message", text.toString())
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            context.startActivity(intent);
        } catch (RuntimeException ignored) {
            if (fallback != null) fallback.uncaughtException(thread, throwable);
        }
    }
}
