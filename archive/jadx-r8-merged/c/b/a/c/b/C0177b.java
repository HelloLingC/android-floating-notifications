package c.b.a.c.b;

import android.support.v7.preference.Preference;

/* JADX INFO: renamed from: c.b.a.c.b.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0177b implements Preference.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1765a;

    public C0177b(n nVar) {
        this.f1765a = nVar;
    }

    public boolean a(Preference preference, Object obj) {
        boolean zEquals = obj.equals("asswecan");
        this.f1765a.a((CharSequence) "backgroundColor").d(zEquals);
        this.f1765a.a((CharSequence) "titleColor").d(zEquals);
        this.f1765a.a((CharSequence) "messageColor").d(zEquals);
        return true;
    }
}
