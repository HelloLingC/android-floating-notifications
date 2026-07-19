package c.b.a.c.c;

import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.b.a.e.a.f f1797a;

    public g(IntroActivity introActivity, c.b.a.e.a.f fVar) {
        this.f1797a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1797a.a(null, "这是一条测试通知", "这里是通知描述", null, null);
        c.b.a.e.a.f fVar = this.f1797a;
        fVar.i = true;
        fVar.b();
    }
}
