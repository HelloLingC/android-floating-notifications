package c.b.a.c.a;

import a.b.d.l.L;
import android.content.DialogInterface;
import android.support.design.widget.Snackbar;
import android.support.design.widget.SnackbarContentLayout;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;

/* JADX INFO: loaded from: classes.dex */
public class k implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f1738c;

    public k(m mVar, View view, String str) {
        this.f1738c = mVar;
        this.f1736a = view;
        this.f1737b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        View view = this.f1736a;
        StringBuilder sbA = c.a.a.a.a.a("是否要删除：");
        sbA.append(this.f1737b);
        Snackbar snackbarA = Snackbar.a(view, sbA.toString(), 0);
        j jVar = new j(this);
        Button actionView = ((SnackbarContentLayout) snackbarA.f.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty("删除")) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            snackbarA.o = false;
        } else {
            snackbarA.o = true;
            actionView.setVisibility(0);
            actionView.setText("删除");
            actionView.setOnClickListener(new L(snackbarA, jVar));
        }
        snackbarA.f();
    }
}
