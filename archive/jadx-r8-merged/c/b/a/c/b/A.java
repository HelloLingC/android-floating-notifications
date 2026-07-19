package c.b.a.c.b;

import a.b.i.a.l;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class A implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ OtherFragment.AboutFragment f1759a;

    public A(OtherFragment.AboutFragment aboutFragment) {
        this.f1759a = aboutFragment;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        l.a aVar = new l.a(preference.b());
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "获取应用源代码";
        aVar2.h = "自定义悬浮通知的磁贴模式采用 GNU GPL 3.0 协议开源。\n你可以点击下方的按钮跳转到Github浏览项目。";
        z zVar = new z(this);
        AlertController.a aVar3 = aVar.f867a;
        aVar3.i = "Github";
        aVar3.k = zVar;
        aVar.b();
        return false;
    }
}
