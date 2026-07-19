package c.b.a.c.a;

import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class o implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditText f1745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f1746b;

    public o(p pVar, EditText editText) {
        this.f1746b = pVar;
        this.f1745a = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) throws Throwable {
        this.f1746b.f1747a.p.add(this.f1745a.getText().toString());
        a.b.b.a.a.a.a((Object) this.f1746b.f1747a.p, "keys");
        Toast.makeText(this.f1746b.f1747a, "已添加", 0).show();
    }
}
