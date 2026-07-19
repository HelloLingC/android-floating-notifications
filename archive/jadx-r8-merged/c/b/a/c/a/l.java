package c.b.a.c.a;

import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class l implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EditText f1740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f1741c;

    public l(m mVar, int i, EditText editText) {
        this.f1741c = mVar;
        this.f1739a = i;
        this.f1740b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) throws Throwable {
        this.f1741c.f1743b.p.set(this.f1739a, this.f1740b.getText().toString());
        a.b.b.a.a.a.a((Object) this.f1741c.f1743b.p, "keys");
        Toast.makeText(this.f1741c.f1743b, "修改成功", 0).show();
    }
}
