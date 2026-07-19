package c.b.a.d;

import a.b.i.a.l;
import android.support.v7.app.AlertController;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f1806a;

    public c(e eVar) {
        this.f1806a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVar = this.f1806a;
        if (eVar.f1811d.equals("2.0.4")) {
            if (eVar.f1810c) {
                Toast.makeText(eVar.f1808a, "未发现可用版本更新", 0).show();
                return;
            }
            return;
        }
        l.a aVar = new l.a(eVar.f1808a);
        aVar.f867a.f = "发现有可用版本更新";
        StringBuilder sbA = c.a.a.a.a.a("目标版本：");
        sbA.append(eVar.f1811d);
        sbA.append("\n\n");
        sbA.append(eVar.e);
        aVar.f867a.h = sbA.toString();
        d dVar = new d(eVar);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.i = "更新";
        aVar2.k = dVar;
        aVar2.l = "取消";
        aVar2.n = null;
        aVar.b();
    }
}
