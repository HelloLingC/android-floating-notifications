package c.b.a.c.b;

/* JADX INFO: loaded from: classes.dex */
public class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f1785a;

    public v(w wVar) {
        this.f1785a = wVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.b.a.e.a.f fVar = new c.b.a.e.a.f(this.f1785a.f1786a.e());
        fVar.a(null, "这是一条测试通知", "这里是通知描述", null, null);
        fVar.b();
    }
}
