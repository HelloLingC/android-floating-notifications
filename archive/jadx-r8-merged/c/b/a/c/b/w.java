package c.b.a.c.b;

import android.support.v7.preference.Preference;

/* JADX INFO: loaded from: classes.dex */
public class w implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1786a;

    public w(y yVar) {
        this.f1786a = yVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        new Thread(new v(this)).start();
        return false;
    }
}
