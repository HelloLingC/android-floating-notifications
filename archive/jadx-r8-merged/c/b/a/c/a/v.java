package c.b.a.c.a;

import android.content.DialogInterface;
import android.content.Intent;
import com.lingc.notification.ui.activities.DoateActivity;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class v implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1754a;

    public v(MainActivity mainActivity) {
        this.f1754a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainActivity mainActivity = this.f1754a;
        mainActivity.startActivity(new Intent(mainActivity, (Class<?>) DoateActivity.class));
    }
}
