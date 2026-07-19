package c.b.a.c.b;

import android.support.v7.preference.Preference;
import android.widget.Toast;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class F implements Preference.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OtherFragment.AuthorFragment f1764b;

    public F(OtherFragment.AuthorFragment authorFragment) {
        this.f1764b = authorFragment;
    }

    @Override // android.support.v7.preference.Preference.d
    public boolean a(Preference preference) {
        if (c.b.a.d.a.d(this.f1764b.e()).getBoolean("isBetaFuncOpen", false)) {
            Toast.makeText(this.f1764b.e(), "你已开启 Beta 模式", 0).show();
            return false;
        }
        int i = this.f1763a;
        this.f1763a = i + 1;
        if (i == 20) {
            c.b.a.d.a.d(this.f1764b.e()).edit().putBoolean("isBetaFuncOpen", true).apply();
            Toast.makeText(this.f1764b.e(), "已开启 Beta 模式", 0).show();
        }
        return false;
    }
}
