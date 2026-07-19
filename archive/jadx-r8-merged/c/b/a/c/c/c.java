package c.b.a.c.c;

import android.view.View;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class c implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IntroActivity f1790a;

    public c(IntroActivity introActivity) {
        this.f1790a = introActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1790a.l();
    }
}
