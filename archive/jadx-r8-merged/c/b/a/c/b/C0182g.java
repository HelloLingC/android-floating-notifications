package c.b.a.c.b;

import a.b.i.a.l;
import android.support.v14.preference.SwitchPreference;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: renamed from: c.b.a.c.b.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0182g implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1771a;

    public C0182g(n nVar) {
        this.f1771a = nVar;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        SwitchPreference switchPreference = (SwitchPreference) preference;
        if (switchPreference.D()) {
            l.a aVar = new l.a(preference.b());
            AlertController.a aVar2 = aVar.f867a;
            aVar2.f = "此功能有一些问题";
            aVar2.h = "当打开此选项后，5.0以上的系统会在屏幕顶端显示一条系统悬挂式通知，请到系统设置中关闭 自定义悬浮通知 的在屏幕中显示通知的权限，不同系统的修改方法不同。";
            DialogInterfaceOnClickListenerC0181f dialogInterfaceOnClickListenerC0181f = new DialogInterfaceOnClickListenerC0181f(this);
            AlertController.a aVar3 = aVar.f867a;
            aVar3.i = "跳转设置";
            aVar3.k = dialogInterfaceOnClickListenerC0181f;
            aVar.a(R.string.dialog_cancel_btn, new DialogInterfaceOnClickListenerC0180e(this, switchPreference));
            DialogInterfaceOnClickListenerC0179d dialogInterfaceOnClickListenerC0179d = new DialogInterfaceOnClickListenerC0179d(this, preference);
            AlertController.a aVar4 = aVar.f867a;
            aVar4.o = "教程";
            aVar4.q = dialogInterfaceOnClickListenerC0179d;
            aVar4.r = false;
            aVar.b();
        }
        return false;
    }
}
