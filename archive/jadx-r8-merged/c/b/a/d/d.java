package c.b.a.d;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class d implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f1807a;

    public d(e eVar) {
        this.f1807a = eVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1807a.f1808a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f1807a.f1809b)));
    }
}
