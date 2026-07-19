package c.b.a.e.a;

import android.app.PendingIntent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class c implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1817a;

    public c(f fVar) {
        this.f1817a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            this.f1817a.q.send();
            this.f1817a.a(this.f1817a.f);
        } catch (PendingIntent.CanceledException e) {
            e.printStackTrace();
        }
    }
}
