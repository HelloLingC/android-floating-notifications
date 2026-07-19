package c.b.a.c.a;

import a.b.i.a.l;
import android.content.DialogInterface;
import android.support.v7.app.AlertController;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class t implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1752a;

    public t(MainActivity mainActivity) {
        this.f1752a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        l.a aVar = new l.a(this.f1752a);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "All Service Name";
        aVar2.h = "ANDROID: com.android.systemui.statusbar.NotificationListener\nMIUI: com.xiaomi.xmsf.push.service.notificationcollection.NotificationListener";
        aVar.b(R.string.dialog_close_btn, (DialogInterface.OnClickListener) null);
        aVar.b();
    }
}
