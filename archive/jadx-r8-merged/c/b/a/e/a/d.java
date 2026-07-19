package c.b.a.e.a;

import c.b.a.e.a.f.a;

/* JADX INFO: loaded from: classes.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1818a;

    public d(f fVar) {
        this.f1818a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar = this.f1818a;
        if (fVar.g) {
            fVar.f.setOnTouchListener(fVar.s);
        } else {
            fVar.f.setOnTouchListener(fVar.new a(null));
        }
        f fVar2 = this.f1818a;
        fVar2.f1823b = false;
        fVar2.f1824c.addView(fVar2.f, fVar2.f1825d);
    }
}
