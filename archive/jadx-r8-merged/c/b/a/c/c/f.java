package c.b.a.c.c;

import android.support.v4.view.ViewPager;
import com.lingc.notification.ui.intro.IntroActivity;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f implements ViewPager.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f1795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntroActivity f1796b;

    public f(IntroActivity introActivity, List list) {
        this.f1796b = introActivity;
        this.f1795a = list;
    }

    public void a(int i) {
    }

    public void a(int i, float f, int i2) {
    }

    public void b(int i) {
        this.f1796b.o = i;
        if (this.f1795a.size() == this.f1796b.o + 1) {
            this.f1796b.q.setVisibility(0);
            this.f1796b.s.setVisibility(8);
        } else {
            if (this.f1796b.o == 0) {
                this.f1796b.p.setVisibility(0);
                this.f1796b.r.setVisibility(8);
            } else {
                this.f1796b.p.setVisibility(8);
                this.f1796b.q.setVisibility(8);
                this.f1796b.r.setVisibility(0);
            }
            this.f1796b.s.setVisibility(0);
        }
        if (!this.f1796b.t.isEmpty()) {
            Iterator it = this.f1796b.t.iterator();
            while (it.hasNext()) {
                ((c.b.a.e.a.f) it.next()).a(null);
            }
            c.b.a.e.a.b.f1813a = null;
            this.f1796b.t.clear();
        }
        if (!c.b.a.e.b.g.f1846c.isEmpty()) {
            c.b.a.e.b.g.e.clear();
            c.b.a.e.b.g.a();
            this.f1796b.u.clear();
        }
        if (((a) this.f1795a.get(i)).ba) {
            this.f1796b.m();
        }
        if (((a) this.f1795a.get(i)).ca) {
            this.f1796b.n();
        }
    }
}
