package c.b.a.c.a;

import android.view.View;
import android.widget.Toast;
import com.lingc.notification.ui.activities.EditPosActivity;

/* JADX INFO: renamed from: c.b.a.c.a.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class ViewOnClickListenerC0175d implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditPosActivity f1728a;

    public ViewOnClickListenerC0175d(EditPosActivity editPosActivity) {
        this.f1728a = editPosActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditPosActivity.a(this.f1728a, false);
        new Thread(new RunnableC0174c(this)).start();
        Toast.makeText(this.f1728a, "拖动到最佳位置然后松手", 0).show();
    }
}
