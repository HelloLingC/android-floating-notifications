package c.b.a.c.a;

import android.content.DialogInterface;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class s implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1751a;

    public s(MainActivity mainActivity) {
        this.f1751a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        c.b.a.d.a.a(this.f1751a).edit().putString("lastVersion", "2.0.4").apply();
    }
}
