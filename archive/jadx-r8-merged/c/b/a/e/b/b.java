package c.b.a.e.b;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class b implements View.OnLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1832a;

    public b(f fVar) {
        this.f1832a = fVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!c.b.a.d.a.h) {
            return false;
        }
        try {
            this.f1832a.e.send();
            this.f1832a.a();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
