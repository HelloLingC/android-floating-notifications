package c.b.a.d;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f1801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f1802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f1803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f1804d;
    public static boolean e;
    public static int f;
    public static boolean g;
    public static boolean h;
    public static String i;

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("appSettings", 0);
    }

    public static boolean a(Context context, String str, boolean z) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE);
        for (int i2 = 0; i2 < runningServices.size(); i2++) {
            ComponentName componentName = runningServices.get(i2).service;
            if (componentName.getClassName().equals(str)) {
                return true;
            }
            if (componentName.getClassName().contains(str) && z && !componentName.getClassName().equals("com.lingc.notification.NotificationService")) {
                i = componentName.getClassName();
                return true;
            }
        }
        return false;
    }

    public static boolean a(String str, Context context) {
        return a(context, str, false);
    }

    public static SharedPreferences b(Context context) {
        return context.getSharedPreferences("floatingSettings", 0);
    }

    public static SharedPreferences c(Context context) {
        return context.getSharedPreferences("globalSettings", 0);
    }

    public static SharedPreferences d(Context context) {
        return context.getSharedPreferences("mainSettings", 0);
    }

    public static void e(Context context) {
        f1801a = context.getSharedPreferences("globalSettings", 0).getString("notificatStyle", "white");
        f1802b = context.getSharedPreferences("globalSettings", 0).getString("backgroundColor", "#FFFFFF");
        f1803c = context.getSharedPreferences("globalSettings", 0).getString("titleColor", "#000000");
        f1804d = context.getSharedPreferences("globalSettings", 0).getString("messageColor", "#212121");
        e = context.getSharedPreferences("globalSettings", 0).getBoolean("isAntiBlock", true);
        f = Integer.valueOf(context.getSharedPreferences("globalSettings", 0).getString("mostShowNum", "6")).intValue();
        g = context.getSharedPreferences("globalSettings", 0).getBoolean("notificatShowUp", true);
        h = context.getSharedPreferences("globalSettings", 0).getBoolean("notificatCanClick", true);
    }
}
