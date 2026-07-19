package c.b.a.c.a;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class u implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1753a;

    public u(MainActivity mainActivity) {
        this.f1753a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://lcblog.cn/donate"));
        intent.setFlags(268435456);
        this.f1753a.startActivity(intent);
    }
}
