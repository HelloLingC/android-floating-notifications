package c.b.a.c.a;

import android.graphics.BitmapFactory;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f1730a;

    public f(g gVar) {
        this.f1730a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.b.a.e.b.f fVar = new c.b.a.e.b.f();
        fVar.i = true;
        if (this.f1730a.f1731a.r.isChecked()) {
            fVar.m = false;
            fVar.j = true;
        }
        fVar.a(BitmapFactory.decodeResource(this.f1730a.f1731a.getResources(), R.mipmap.ic_tile), "将我拖动到最佳位置", "然后松手", this.f1730a.f1731a.getPackageName(), null);
        fVar.r = new e(this);
        fVar.a(this.f1730a.f1731a.getApplicationContext());
    }
}
