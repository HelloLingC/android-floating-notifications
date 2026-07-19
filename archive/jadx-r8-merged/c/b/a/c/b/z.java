package c.b.a.c.b;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class z implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f1788a;

    public z(A a2) {
        this.f1788a = a2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/HelloLingC/floating-tile"));
        intent.addFlags(268435456);
        this.f1788a.f1759a.a(intent);
    }
}
