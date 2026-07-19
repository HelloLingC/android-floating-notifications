package c.b.a.e.b;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import com.lingc.notification.ui.activities.EditPosActivity;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Bitmap f1840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f1842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1843d;
    public PendingIntent e;
    public Context f;
    public WindowManager g;
    public WindowManager.LayoutParams h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean n;
    public f o;
    public boolean p;
    public View q;
    public a r;
    public boolean m = true;
    public View.OnTouchListener s = new d(this);
    public View.OnTouchListener t = new e(this);

    public interface a {
    }

    public void a() {
        if (this.p) {
            return;
        }
        a aVar = this.r;
        if (aVar != null) {
            EditPosActivity.a(((c.b.a.c.a.e) aVar).f1729a.f1730a.f1731a, true);
        }
        g.f1844a--;
        this.p = true;
        g.f1846c.remove(this);
        g.f1847d.put(this.h.y, false);
        b();
        this.g.removeView(this.q);
    }

    public void a(Bitmap bitmap, String str, String str2, String str3, PendingIntent pendingIntent) {
        this.f1840a = bitmap;
        this.f1841b = str;
        if (!TextUtils.isEmpty(str2) && str2.length() > 17) {
            str2 = str2.substring(0, 18) + "...";
        }
        this.f1842c = str2;
        this.f1843d = str3;
        this.e = pendingIntent;
    }

    public void b() {
        if (g.e.isEmpty()) {
            return;
        }
        f fVar = g.e.get(0);
        fVar.o = this.o;
        fVar.a(this.f);
        g.e.remove(fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r13) {
        /*
            Method dump skipped, instruction units count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.e.b.f.a(android.content.Context):void");
    }
}
