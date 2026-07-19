package c.b.a.c.a;

import android.os.Handler;
import android.os.Looper;
import android.widget.ProgressBar;
import com.lingc.notification.ui.activities.WhiteListActivity;

/* JADX INFO: loaded from: classes.dex */
public class B implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f1718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WhiteListActivity f1719b;

    public B(WhiteListActivity whiteListActivity, ProgressBar progressBar) {
        this.f1719b = whiteListActivity;
        this.f1718a = progressBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1719b.m();
        new Handler(Looper.getMainLooper()).post(new A(this));
    }
}
