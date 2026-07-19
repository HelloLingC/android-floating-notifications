package c.b.a.c.b;

import android.content.Intent;
import android.support.v7.preference.Preference;
import com.lingc.notification.ui.activities.EditPosActivity;

/* JADX INFO: loaded from: classes.dex */
public class l implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1776a;

    public l(n nVar) {
        this.f1776a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        n nVar = this.f1776a;
        nVar.a(new Intent(nVar.e(), (Class<?>) EditPosActivity.class));
        return false;
    }
}
