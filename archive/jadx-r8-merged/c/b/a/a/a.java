package c.b.a.a;

import android.view.View;
import c.b.a.a.b;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b.a f1700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f1701b;

    public a(b bVar, b.a aVar) {
        this.f1701b = bVar;
        this.f1700a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Throwable {
        c.b.a.b.a aVar = this.f1701b.f1702c.get(this.f1700a.c());
        Set hashSet = (Set) a.b.b.a.a.a.c("blackList");
        if (hashSet == null) {
            hashSet = new HashSet();
        }
        if (hashSet.contains(aVar.f1709c)) {
            hashSet.remove(aVar.f1709c);
            this.f1701b.f1702c.get(this.f1700a.c()).f1710d = false;
        } else {
            hashSet.add(aVar.f1709c);
            this.f1701b.f1702c.get(this.f1700a.c()).f1710d = true;
        }
        a.b.b.a.a.a.a((Object) hashSet, "blackList");
        this.f1700a.w.setChecked(!this.f1700a.w.isChecked());
    }
}
