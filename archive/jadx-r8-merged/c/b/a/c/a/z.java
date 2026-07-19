package c.b.a.c.a;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.lingc.notification.ui.activities.SplashActivity;

/* JADX INFO: loaded from: classes.dex */
public class z implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SplashActivity f1758a;

    public z(SplashActivity splashActivity) {
        this.f1758a = splashActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Toast.makeText(this.f1758a, "找到 自定义悬浮通知 并打开", 0).show();
        this.f1758a.startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
    }
}
