package c.b.a.c.a;

import android.view.View;
import com.lingc.notification.ui.activities.ExceptionActivity;

/* JADX INFO: loaded from: classes.dex */
public class h implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExceptionActivity f1732a;

    public h(ExceptionActivity exceptionActivity) {
        this.f1732a = exceptionActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1732a.finish();
    }
}
