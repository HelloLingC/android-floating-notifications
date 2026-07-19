package com.lingc.notification;

import a.b.b.a.a.a;
import a.b.h.a.X;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import c.b.a.b.b;
import c.b.a.c;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NotificationService extends NotificationListenerService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable f1849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f1850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1851d;
    public List<X.a> e = new ArrayList();
    public Bitmap f;

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) throws Throwable {
        super.onNotificationPosted(statusBarNotification);
        if (!statusBarNotification.isClearable() || statusBarNotification.getPackageName().equals(getPackageName()) || statusBarNotification.getPackageName().equals("android") || !((PowerManager) getApplicationContext().getSystemService("power")).isScreenOn()) {
            return;
        }
        Set set = (Set) a.c("blackList");
        if (set == null || !set.contains(statusBarNotification.getPackageName())) {
            if (Build.VERSION.SDK_INT >= 21) {
                cancelNotification(statusBarNotification.getKey());
            } else {
                cancelAllNotifications();
            }
            if (getSharedPreferences("globalSettings", 0).getBoolean("notifitSuperMode", false)) {
                return;
            }
            Bundle bundle = statusBarNotification.getNotification().extras;
            this.f1848a = statusBarNotification.getId();
            try {
                this.f = (Bitmap) bundle.getParcelable("android.largeIcon");
            } catch (ClassCastException e) {
                e.printStackTrace();
            }
            if (this.f == null) {
                this.f1849b = a.b(getApplicationContext(), statusBarNotification.getPackageName());
            }
            this.f1850c = bundle.getString("android.title", "");
            this.f1851d = bundle.getString("android.text", "");
            if (TextUtils.isEmpty(this.f1850c) && TextUtils.isEmpty(this.f1851d)) {
                return;
            }
            if (TextUtils.isEmpty(this.f1851d)) {
                this.f1851d = "";
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            b bVar = new b();
            bVar.f1711a = this.f1850c;
            bVar.f1712b = this.f1851d;
            bVar.f1713c = statusBarNotification.getPackageName();
            bVar.f1714d = simpleDateFormat.format(new Date());
            List arrayList = (List) a.c("data");
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(bVar);
            a.a((Object) arrayList, "data");
            List<String> list = (List) a.c("keys");
            if (list != null && !list.isEmpty()) {
                for (String str : list) {
                    String strSubstring = str.substring(str.indexOf(" ") + 1);
                    if (str.startsWith("title: ")) {
                        if (this.f1850c.contains(strSubstring)) {
                            return;
                        }
                    } else if (str.startsWith("content: ")) {
                        if (this.f1851d.contains(strSubstring)) {
                            return;
                        }
                    } else if (str.startsWith("or: ")) {
                        if (this.f1850c.contains(strSubstring) || this.f1851d.contains(strSubstring)) {
                            return;
                        }
                    } else if (str.startsWith("and: ") && this.f1850c.contains(strSubstring) && this.f1851d.contains(strSubstring)) {
                        return;
                    }
                }
            }
            new Thread(new c(this, statusBarNotification)).start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04c4 A[PHI: r5
      0x04c4: PHI (r5v13 android.app.Notification) = (r5v9 android.app.Notification), (r5v12 android.app.Notification), (r5v15 android.app.Notification) binds: [B:236:0x04c2, B:212:0x047d, B:186:0x0433] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028b  */
    @Override // android.service.notification.NotificationListenerService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNotificationRemoved(android.service.notification.StatusBarNotification r17) {
        /*
            Method dump skipped, instruction units count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lingc.notification.NotificationService.onNotificationRemoved(android.service.notification.StatusBarNotification):void");
    }
}
