package c.b.a.c.b;

import android.content.DialogInterface;
import android.support.v14.preference.SwitchPreference;

/* JADX INFO: renamed from: c.b.a.c.b.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class DialogInterfaceOnClickListenerC0180e implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f1769a;

    public DialogInterfaceOnClickListenerC0180e(C0182g c0182g, SwitchPreference switchPreference) {
        this.f1769a = switchPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1769a.e(false);
    }
}
