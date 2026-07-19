package com.lingc.notification.data;

import android.content.Context;

import java.io.File;

public final class LegacyObjectStore {
    private static volatile Context appContext;

    private LegacyObjectStore() {}

    public static void initialize(Context context) {
        appContext = context.getApplicationContext();
    }

    public static synchronized void write(String name, Object value) {
        Context context = requireContext();
        try {
            ObjectFileCodec.write(new File(context.getFilesDir(), name + ".dat"), value);
        } catch (Exception exception) {
            throw new IllegalStateException("Unable to write " + name + ".dat", exception);
        }
    }

    public static synchronized Object read(String name) {
        Context context = requireContext();
        File file = new File(context.getFilesDir(), name + ".dat");
        if (!file.isFile()) return null;
        try {
            return ObjectFileCodec.read(file);
        } catch (Exception exception) {
            return null;
        }
    }

    private static Context requireContext() {
        if (appContext == null) throw new IllegalStateException("LegacyObjectStore is not initialized");
        return appContext;
    }
}
