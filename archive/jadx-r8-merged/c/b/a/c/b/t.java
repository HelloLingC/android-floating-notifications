package c.b.a.c.b;

import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class t implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1783a;

    public t(y yVar) {
        this.f1783a = yVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        ((MainActivity) this.f1783a.e()).c(new C0176a());
        return false;
    }
}
