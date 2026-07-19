package c.b.a.c.c;

import android.support.v4.view.ViewPager;
import android.view.View;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class d implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPager f1791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntroActivity f1792b;

    public d(IntroActivity introActivity, ViewPager viewPager) {
        this.f1792b = introActivity;
        this.f1791a = viewPager;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1791a.setCurrentItem(this.f1792b.o - 1);
    }
}
