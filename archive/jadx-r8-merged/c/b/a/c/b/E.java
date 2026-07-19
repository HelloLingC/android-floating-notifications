package c.b.a.c.b;

import a.b.i.a.l;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class E implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ OtherFragment.AboutFragment f1762a;

    public E(OtherFragment.AboutFragment aboutFragment) {
        this.f1762a = aboutFragment;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        l.a aVar = new l.a(this.f1762a.e());
        aVar.f867a.f = "FAQ";
        aVar.a(R.string.faq);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.i = "关闭";
        aVar2.k = null;
        aVar.b();
        return false;
    }
}
