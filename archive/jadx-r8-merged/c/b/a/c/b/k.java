package c.b.a.c.b;

import android.content.Intent;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.ManagerActivity;

/* JADX INFO: loaded from: classes.dex */
public class k implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1775a;

    public k(n nVar) {
        this.f1775a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        this.f1775a.a(new Intent(this.f1775a.e(), (Class<?>) ManagerActivity.class));
        return false;
    }
}
