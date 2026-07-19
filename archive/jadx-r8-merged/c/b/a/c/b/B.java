package c.b.a.c.b;

import android.support.v7.preference.Preference;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class B implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ OtherFragment.AboutFragment f1760a;

    public B(OtherFragment.AboutFragment aboutFragment) {
        this.f1760a = aboutFragment;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        c.b.a.d.e eVar = new c.b.a.d.e(this.f1760a.e());
        eVar.f1809b = "https://www.coolapk.com/apk/com.lingc.notification";
        eVar.f1810c = true;
        new Thread(new c.b.a.d.b(eVar)).start();
        return false;
    }
}
