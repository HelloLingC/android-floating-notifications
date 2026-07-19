package c.b.a.c.b;

import android.graphics.BitmapFactory;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class x implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1787a;

    public x(y yVar) {
        this.f1787a = yVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        c.b.a.e.b.f fVar = new c.b.a.e.b.f();
        fVar.a(BitmapFactory.decodeResource(this.f1787a.v(), R.mipmap.ic_tile), "Title", "Message", this.f1787a.l().getPackageName(), null);
        fVar.o = c.b.a.e.b.g.f1845b;
        fVar.a(this.f1787a.l());
        return false;
    }
}
