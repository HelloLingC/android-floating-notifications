package c.b.a.c.b;

import android.os.Bundle;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class y extends a.b.i.f.p {
    @Override // a.b.i.f.p
    public void a(Bundle bundle, String str) {
        a.b.i.f.v vVar = this.Y;
        vVar.f = "mainSettings";
        vVar.f951c = null;
        c(R.xml.pref_main_lay);
        a("betaFuncCategory").d(c.b.a.d.a.d(e()).getBoolean("isBetaFuncOpen", false));
        a("notifitSuperMode").a((Preference.d) new r(this));
        a("globalSettings").a((Preference.d) new s(this));
        a("floatingSettings").a((Preference.d) new t(this));
        a("tileSettings").a((Preference.d) new u(this));
        a("sendFloatingTest").a((Preference.d) new w(this));
        a("sendTileTest").a((Preference.d) new x(this));
    }

    @Override // a.b.i.f.p, a.b.h.a.ComponentCallbacksC0070i
    public void c(Bundle bundle) {
        super.c(bundle);
    }
}
