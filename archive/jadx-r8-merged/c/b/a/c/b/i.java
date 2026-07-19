package c.b.a.c.b;

import android.content.Intent;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.KeyPreventActivity;

/* JADX INFO: loaded from: classes.dex */
public class i implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1773a;

    public i(n nVar) {
        this.f1773a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        n nVar = this.f1773a;
        nVar.a(new Intent(nVar.e(), (Class<?>) KeyPreventActivity.class));
        return false;
    }
}
