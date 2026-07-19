package com.lingc.notification;

import a.b.b.a.a.a;
import android.app.Notification;
import android.os.Bundle;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityEvent;
import c.b.a.b.b;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityService extends android.accessibilityservice.AccessibilityService {
    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) throws Throwable {
        if (getSharedPreferences("globalSettings", 0).getBoolean("notifitSuperMode", false)) {
            String string = accessibilityEvent.getPackageName().toString();
            Notification notification = (Notification) accessibilityEvent.getParcelableData();
            if (notification == null || string.equals(getPackageName()) || string.equals("android") || !((PowerManager) getApplicationContext().getSystemService("power")).isScreenOn()) {
                return;
            }
            List list = (List) a.c("whiteList");
            if (list == null || !list.contains(string)) {
                Bundle bundle = notification.extras;
                String string2 = bundle.getString("android.title");
                String string3 = bundle.getString("android.text");
                if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                    return;
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                b bVar = new b();
                bVar.f1711a = string2;
                bVar.f1712b = string3;
                bVar.f1713c = ((Object) accessibilityEvent.getPackageName()) + "";
                bVar.f1714d = simpleDateFormat.format(new Date());
                List arrayList = (List) a.c("data");
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(bVar);
                a.a((Object) arrayList, "data");
                new Thread(new c.b.a.a(this, string, null, string2, string3, notification)).start();
            }
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
    }
}
