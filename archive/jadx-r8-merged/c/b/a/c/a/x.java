package c.b.a.c.a;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.lingc.notification.ui.activities.SplashActivity;

/* JADX INFO: loaded from: classes.dex */
public class x implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashActivity f1756a;

    public x(SplashActivity splashActivity) {
        this.f1756a = splashActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SplashActivity splashActivity = this.f1756a;
        StringBuilder sbA = c.a.a.a.a.a("package:");
        sbA.append(this.f1756a.getPackageName());
        splashActivity.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse(sbA.toString())), 1);
    }
}
