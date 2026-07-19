package c.b.a.c.c;

import android.graphics.BitmapFactory;
import com.lingc.notification.R;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IntroActivity f1800a;

    public j(IntroActivity introActivity) {
        this.f1800a = introActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.b.a.e.b.f fVar = new c.b.a.e.b.f();
        fVar.a(BitmapFactory.decodeResource(this.f1800a.getResources(), R.mipmap.ic_tile), "Title", "Message", "", null);
        fVar.o = c.b.a.e.b.g.f1845b;
        fVar.k = true;
        fVar.a(this.f1800a);
        c.b.a.e.b.f fVar2 = new c.b.a.e.b.f();
        fVar2.a(BitmapFactory.decodeResource(this.f1800a.getResources(), R.mipmap.ic_tile), "Title", "Message", "", null);
        fVar2.k = true;
        fVar2.l = true;
        fVar2.o = c.b.a.e.b.g.f1845b;
        fVar2.a(this.f1800a);
        c.b.a.e.b.f fVar3 = new c.b.a.e.b.f();
        fVar3.a(BitmapFactory.decodeResource(this.f1800a.getResources(), R.mipmap.ic_tile), "Title", "Message", "", null);
        fVar3.k = true;
        fVar3.o = c.b.a.e.b.g.f1845b;
        fVar3.a(this.f1800a);
    }
}
