package c.b.a.c.b;

import android.content.Intent;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.SplashActivity;

/* JADX INFO: loaded from: classes.dex */
public class h implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1772a;

    public h(n nVar) {
        this.f1772a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        Intent intent = new Intent(this.f1772a.e(), (Class<?>) SplashActivity.class);
        intent.putExtra("isMain", true);
        this.f1772a.a(intent);
        return false;
    }
}
