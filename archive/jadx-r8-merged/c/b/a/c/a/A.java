package c.b.a.c.a;

/* JADX INFO: loaded from: classes.dex */
public class A implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B f1717a;

    public A(B b2) {
        this.f1717a = b2;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.b.a.a.b bVar = new c.b.a.a.b(this.f1717a.f1719b.p);
        this.f1717a.f1718a.setVisibility(8);
        this.f1717a.f1719b.q.setAdapter(bVar);
    }
}
