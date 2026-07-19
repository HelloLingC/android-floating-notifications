package com.lingc.notification.util;

import android.content.Context;
import android.content.SharedPreferences;

public final class Settings {
    private Settings() {}

    public static SharedPreferences app(Context context) { return context.getSharedPreferences("appSettings", Context.MODE_PRIVATE); }
    public static SharedPreferences main(Context context) { return context.getSharedPreferences("mainSettings", Context.MODE_PRIVATE); }
    public static SharedPreferences global(Context context) { return context.getSharedPreferences("globalSettings", Context.MODE_PRIVATE); }
    public static SharedPreferences floating(Context context) { return context.getSharedPreferences("floatingSettings", Context.MODE_PRIVATE); }
    public static SharedPreferences tile(Context context) { return context.getSharedPreferences("tileSettings", Context.MODE_PRIVATE); }

    public static int integer(SharedPreferences preferences, String key, int fallback) {
        try { return Integer.parseInt(preferences.getString(key, String.valueOf(fallback))); }
        catch (RuntimeException ignored) { return fallback; }
    }

    public static float decimal(SharedPreferences preferences, String key, float fallback) {
        try { return Float.parseFloat(preferences.getString(key, String.valueOf(fallback))); }
        catch (RuntimeException ignored) { return fallback; }
    }
}
