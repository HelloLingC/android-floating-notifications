package c.b.a.c.a;

import a.b.i.a.l;
import android.content.DialogInterface;
import android.support.v7.app.AlertController;
import android.view.View;
import android.widget.EditText;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.KeyPreventActivity;

/* JADX INFO: loaded from: classes.dex */
public class p implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ KeyPreventActivity f1747a;

    public p(KeyPreventActivity keyPreventActivity) {
        this.f1747a = keyPreventActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText = new EditText(this.f1747a);
        l.a aVar = new l.a(this.f1747a);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "添加关键字";
        aVar2.h = "请规范填写，否则将不会生效";
        aVar2.z = editText;
        aVar2.y = 0;
        aVar2.E = false;
        o oVar = new o(this, editText);
        AlertController.a aVar3 = aVar.f867a;
        aVar3.i = "添加";
        aVar3.k = oVar;
        aVar.a(R.string.dialog_cancel_btn, (DialogInterface.OnClickListener) null);
        n nVar = new n(this);
        AlertController.a aVar4 = aVar.f867a;
        aVar4.o = "使用说明";
        aVar4.q = nVar;
        aVar.b();
    }
}
