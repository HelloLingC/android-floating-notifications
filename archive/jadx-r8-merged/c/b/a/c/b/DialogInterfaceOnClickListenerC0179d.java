package c.b.a.c.b;

import a.b.i.a.l;
import android.content.DialogInterface;
import android.support.v7.app.AlertController;
import android.support.v7.preference.Preference;
import com.lingc.notification.R;

/* JADX INFO: renamed from: c.b.a.c.b.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class DialogInterfaceOnClickListenerC0179d implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Preference f1767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0182g f1768b;

    public DialogInterfaceOnClickListenerC0179d(C0182g c0182g, Preference preference) {
        this.f1768b = c0182g;
        this.f1767a = preference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        l.a aVar = new l.a(this.f1767a.b());
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "设置教程（欢迎补充）";
        aVar2.h = "如果以下没有你的机型，请自己变通一下，如果实在不行可以百度或在酷安评论区询问。\n\n原生Android 9.0: 点击下方“跳转”按钮后，点击“在状态栏显示” -> “行为” -> “发出提示音”\n\nMIUI：跳转后，关闭“悬浮通知”\n\n部分MIUI：跳转后，将“允许快速查看”关闭即可";
        DialogInterfaceOnClickListenerC0178c dialogInterfaceOnClickListenerC0178c = new DialogInterfaceOnClickListenerC0178c(this);
        AlertController.a aVar3 = aVar.f867a;
        aVar3.i = "跳转";
        aVar3.k = dialogInterfaceOnClickListenerC0178c;
        aVar.a(R.string.dialog_close_btn, (DialogInterface.OnClickListener) null);
        aVar.b();
    }
}
