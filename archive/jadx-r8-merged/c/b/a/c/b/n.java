package c.b.a.c.b;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.preference.ListPreference;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class n extends a.b.i.f.p {
    @Override // a.b.i.f.p
    public void a(Bundle bundle, String str) {
        a.b.i.f.v vVar = this.Y;
        vVar.f = "globalSettings";
        vVar.f951c = null;
        c(R.xml.pref_global_lay);
        ListPreference listPreference = (ListPreference) a("notificatStyle");
        if (listPreference.M().equals("asswecan")) {
            a("backgroundColor").d(true);
            a("titleColor").d(true);
            a("messageColor").d(true);
        }
        listPreference.a((Preference.c) new C0177b(this));
        a("notifitShowInBar").a((Preference.d) new C0182g(this));
        a("permissionSplash").a((Preference.d) new h(this));
        a("keyPrevent").a((Preference.d) new i(this));
        a("notifitWhiteList").a((Preference.d) new j(this));
        a("notifitManager").a((Preference.d) new k(this));
        a("notificatEditPos").a((Preference.d) new l(this));
        a("hideInBackground").a((Preference.d) new m(this));
    }

    public final void la() {
        Intent intent = new Intent();
        intent.setFlags(268435456);
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", e().getPackageName());
            intent.putExtra("android.provider.extra.CHANNEL_ID", e().getApplicationInfo().uid);
        } else if (i >= 21) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", e().getPackageName());
            intent.putExtra("app_uid", e().getApplicationInfo().uid);
            a(intent);
        } else {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("package:" + e().getPackageName()));
        }
        a(intent);
    }
}
