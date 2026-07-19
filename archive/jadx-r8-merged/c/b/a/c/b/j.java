package c.b.a.c.b;

import android.content.Intent;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.WhiteListActivity;

/* JADX INFO: loaded from: classes.dex */
public class j implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1774a;

    public j(n nVar) {
        this.f1774a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        this.f1774a.a(new Intent(this.f1774a.e(), (Class<?>) WhiteListActivity.class));
        return false;
    }
}
