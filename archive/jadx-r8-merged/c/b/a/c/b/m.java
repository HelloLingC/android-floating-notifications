package c.b.a.c.b;

import a.b.i.a.l;
import android.os.Build;
import android.support.v14.preference.SwitchPreference;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;

/* JADX INFO: loaded from: classes.dex */
public class m implements Preference.d {
    public m(n nVar) {
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        SwitchPreference switchPreference = (SwitchPreference) preference;
        if (switchPreference.D() && Build.VERSION.SDK_INT < 21) {
            l.a aVar = new l.a(preference.b());
            AlertController.a aVar2 = aVar.f867a;
            aVar2.f = "系统版本过低";
            aVar2.h = "你的系统 API 小于 21，无法使用此功能";
            aVar2.i = "关闭";
            aVar2.k = null;
            aVar.b();
            switchPreference.e(false);
        }
        return false;
    }
}
