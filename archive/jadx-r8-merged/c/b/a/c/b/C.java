package c.b.a.c.b;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.support.v7.preference.Preference;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class C implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Preference f1761a;

    public C(D d2, Preference preference) {
        this.f1761a = preference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ((ClipboardManager) this.f1761a.b().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, "910708531"));
        Toast.makeText(this.f1761a.b(), "已复制", 0).show();
    }
}
