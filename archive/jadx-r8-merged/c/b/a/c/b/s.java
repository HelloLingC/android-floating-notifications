package c.b.a.c.b;

import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class s implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1782a;

    public s(y yVar) {
        this.f1782a = yVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        ((MainActivity) this.f1782a.e()).c(new n());
        return false;
    }
}
