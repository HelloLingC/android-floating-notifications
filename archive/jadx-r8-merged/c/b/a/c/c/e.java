package c.b.a.c.c;

import android.support.v4.view.ViewPager;
import android.view.View;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class e implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewPager f1793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntroActivity f1794b;

    public e(IntroActivity introActivity, ViewPager viewPager) {
        this.f1794b = introActivity;
        this.f1793a = viewPager;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1793a.setCurrentItem(this.f1794b.o + 1);
    }
}
