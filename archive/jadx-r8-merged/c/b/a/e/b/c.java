package c.b.a.e.b;

/* JADX INFO: loaded from: classes.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1833a;

    public c(f fVar) {
        this.f1833a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar = this.f1833a;
        fVar.g.addView(fVar.q, fVar.h);
        f fVar2 = this.f1833a;
        if (fVar2.i) {
            return;
        }
        g.f1846c.add(fVar2);
    }
}
