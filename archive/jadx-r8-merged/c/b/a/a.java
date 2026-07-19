package c.b.a;

import android.app.Notification;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import c.b.a.e.a.f;
import c.b.a.e.b.g;
import com.lingc.notification.AccessibilityService;

/* JADX INFO: loaded from: classes.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bitmap f1697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f1699d;
    public final /* synthetic */ Notification e;
    public final /* synthetic */ AccessibilityService f;

    public a(AccessibilityService accessibilityService, String str, Bitmap bitmap, String str2, String str3, Notification notification) {
        this.f = accessibilityService;
        this.f1696a = str;
        this.f1697b = bitmap;
        this.f1698c = str2;
        this.f1699d = str3;
        this.e = notification;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (c.b.a.d.a.d(this.f).getString("notificatWays", "floating").equals("floating")) {
            Drawable drawableB = a.b.b.a.a.a.b(this.f, this.f1696a);
            f fVar = new f(this.f.getApplicationContext());
            fVar.a(this.f1697b, this.f1698c, this.f1699d, drawableB, this.e.contentIntent);
            fVar.b();
            return;
        }
        c.b.a.e.b.f fVar2 = new c.b.a.e.b.f();
        fVar2.a(this.f1697b, this.f1698c, this.f1699d, this.f.getPackageName(), null);
        fVar2.o = g.f1845b;
        fVar2.a(this.f.getApplicationContext());
    }
}
