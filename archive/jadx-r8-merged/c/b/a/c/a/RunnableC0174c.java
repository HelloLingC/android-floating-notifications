package c.b.a.c.a;

/* JADX INFO: renamed from: c.b.a.c.a.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class RunnableC0174c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewOnClickListenerC0175d f1727a;

    public RunnableC0174c(ViewOnClickListenerC0175d viewOnClickListenerC0175d) {
        this.f1727a = viewOnClickListenerC0175d;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.b.a.e.a.f fVar = new c.b.a.e.a.f(this.f1727a.f1728a);
        fVar.g = true;
        if (this.f1727a.f1728a.r.isChecked()) {
            fVar.l = false;
            fVar.h = true;
        }
        fVar.a(null, "将我拖动到最佳位置", "然后松手", null, null);
        fVar.r = new C0173b(this);
        fVar.b();
    }
}
