package c.b.a.c.a;

import android.view.View;
import com.lingc.notification.ui.activities.EditPosActivity;

/* JADX INFO: loaded from: classes.dex */
public class g implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditPosActivity f1731a;

    public g(EditPosActivity editPosActivity) {
        this.f1731a = editPosActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditPosActivity.a(this.f1731a, false);
        new Thread(new f(this)).start();
    }
}
