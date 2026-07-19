package c.b.a.c.a;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.lingc.notification.ui.activities.SplashActivity;

/* JADX INFO: loaded from: classes.dex */
public class y implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashActivity f1757a;

    public y(SplashActivity splashActivity) {
        this.f1757a = splashActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        StringBuilder sbA = c.a.a.a.a.a("package:");
        sbA.append(this.f1757a.getPackageName());
        intent.setData(Uri.parse(sbA.toString()));
        this.f1757a.startActivity(intent);
    }
}
