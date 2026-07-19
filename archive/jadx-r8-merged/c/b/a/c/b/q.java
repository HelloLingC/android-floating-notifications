package c.b.a.c.b;

import android.accessibilityservice.AccessibilityService;
import android.content.DialogInterface;
import android.support.v14.preference.SwitchPreference;
import android.widget.Toast;
import com.lingc.notification.ui.activities.SplashActivity;

/* JADX INFO: loaded from: classes.dex */
public class q implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f1779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f1780b;

    public q(r rVar, SwitchPreference switchPreference) {
        this.f1780b = rVar;
        this.f1779a = switchPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (SplashActivity.a(this.f1780b.f1781a.e(), (Class<? extends AccessibilityService>) com.lingc.notification.AccessibilityService.class)) {
            return;
        }
        this.f1779a.e(false);
        Toast.makeText(this.f1780b.f1781a.e(), "清先前往权限引导打开无障碍服务", 0).show();
    }
}
