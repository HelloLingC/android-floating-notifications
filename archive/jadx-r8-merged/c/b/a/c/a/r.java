package c.b.a.c.a;

import a.b.h.a.ComponentCallbacksC0070i;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.FloatingActionButton;
import android.view.MenuItem;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.MainActivity;
import com.lingc.notification.ui.fragment.OtherFragment;

/* JADX INFO: loaded from: classes.dex */
public class r implements BottomNavigationView.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButton f1749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1750b;

    public r(MainActivity mainActivity, FloatingActionButton floatingActionButton) {
        this.f1750b = mainActivity;
        this.f1749a = floatingActionButton;
    }

    public boolean a(MenuItem menuItem) {
        MainActivity mainActivity;
        ComponentCallbacksC0070i otherFragment;
        switch (menuItem.getItemId()) {
            case R.id.bottom_nav_about /* 2131296299 */:
                this.f1749a.e();
                mainActivity = this.f1750b;
                otherFragment = new OtherFragment();
                break;
            case R.id.bottom_nav_main /* 2131296300 */:
                this.f1749a.b();
                mainActivity = this.f1750b;
                otherFragment = new c.b.a.c.b.y();
                break;
            default:
                return false;
        }
        mainActivity.c(otherFragment);
        return true;
    }
}
