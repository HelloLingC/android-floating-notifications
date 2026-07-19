package c.b.a.c.a;

import android.view.View;
import com.lingc.notification.ui.activities.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class q implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1748a;

    public q(MainActivity mainActivity) {
        this.f1748a = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1748a.m();
    }
}
