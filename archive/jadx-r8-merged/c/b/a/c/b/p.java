package c.b.a.c.b;

import android.content.DialogInterface;
import android.support.v14.preference.SwitchPreference;

/* JADX INFO: loaded from: classes.dex */
public class p implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f1778a;

    public p(r rVar, SwitchPreference switchPreference) {
        this.f1778a = switchPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1778a.e(false);
    }
}
