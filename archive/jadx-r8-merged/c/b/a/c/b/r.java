package c.b.a.c.b;

import a.b.i.a.l;
import android.support.v14.preference.SwitchPreference;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class r implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1781a;

    public r(y yVar) {
        this.f1781a = yVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        SwitchPreference switchPreference = (SwitchPreference) preference;
        if (!switchPreference.D()) {
            return false;
        }
        l.a aVar = new l.a(this.f1781a.e());
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "兼容模式";
        aVar2.h = "注意此功能仍在测试阶段，当打开兼容模式后你可以随时关闭。\n\n兼容模式将会牺牲一定功能以达到完全兼容的目的。";
        q qVar = new q(this, switchPreference);
        AlertController.a aVar3 = aVar.f867a;
        aVar3.i = "开启";
        aVar3.k = qVar;
        aVar.a(R.string.dialog_cancel_btn, new p(this, switchPreference));
        o oVar = new o(this);
        AlertController.a aVar4 = aVar.f867a;
        aVar4.o = "详细";
        aVar4.q = oVar;
        aVar.b();
        return false;
    }
}
