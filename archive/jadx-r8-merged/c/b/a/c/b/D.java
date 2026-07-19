package c.b.a.c.b;

import a.b.i.a.l;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class D implements Preference.d {
    public D(OtherFragment.AboutFragment aboutFragment) {
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        l.a aVar = new l.a(preference.b());
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "加入内测QQ群";
        aVar2.h = "点一下玩一年，装备不花一分钱\n以后的抢先体验版都会在群里发布，欢迎加群灌水聊天！";
        C c2 = new C(this, preference);
        AlertController.a aVar3 = aVar.f867a;
        aVar3.i = "复制群号";
        aVar3.k = c2;
        aVar.b();
        return false;
    }
}
