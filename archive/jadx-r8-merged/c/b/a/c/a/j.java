package c.b.a.c.a;

import android.view.View;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class j implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f1735a;

    public j(k kVar) {
        this.f1735a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Throwable {
        this.f1735a.f1738c.f1743b.p.remove(this.f1735a.f1737b);
        a.b.b.a.a.a.a((Object) this.f1735a.f1738c.f1743b.p, "keys");
        k kVar = this.f1735a;
        kVar.f1738c.f1742a.remove(kVar.f1737b);
        Toast.makeText(this.f1735a.f1738c.f1743b, "已删除", 0).show();
    }
}
