package c.b.a.c.b;

import a.b.i.a.l;
import android.content.DialogInterface;
import android.support.v7.app.AlertController;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class o implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f1777a;

    public o(r rVar) {
        this.f1777a = rVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        l.a aVar = new l.a(this.f1777a.f1781a.e());
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "详细";
        aVar2.h = "你将无法使用“在状态栏上显示通知”功能\n\n应用将无法删除原通知\n\n通知图标只能显示应用的图标";
        aVar.b(R.string.dialog_close_btn, (DialogInterface.OnClickListener) null);
        aVar.b();
    }
}
