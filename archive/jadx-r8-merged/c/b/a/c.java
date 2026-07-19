package c.b.a;

import android.service.notification.StatusBarNotification;
import c.b.a.e.a.f;
import c.b.a.e.b.g;
import com.lingc.notification.NotificationService;

/* JADX INFO: loaded from: classes.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ StatusBarNotification f1715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NotificationService f1716b;

    public c(NotificationService notificationService, StatusBarNotification statusBarNotification) {
        this.f1716b = notificationService;
        this.f1715a = statusBarNotification;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (c.b.a.d.a.d(this.f1716b).getString("notificatWays", "floating").equals("floating")) {
            f fVar = new f(this.f1716b.getApplicationContext());
            fVar.a(this.f1716b.f, this.f1716b.f1850c, this.f1716b.f1851d, this.f1716b.f1849b, this.f1715a.getNotification().contentIntent);
            fVar.b();
        } else {
            c.b.a.e.b.f fVar2 = new c.b.a.e.b.f();
            fVar2.a(this.f1716b.f, this.f1716b.f1850c, this.f1716b.f1851d, this.f1715a.getPackageName(), this.f1715a.getNotification().contentIntent);
            fVar2.o = g.f1845b;
            fVar2.a(this.f1716b.getApplicationContext());
        }
    }
}
