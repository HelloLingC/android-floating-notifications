package c.b.a.e.b;

import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f1828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f1829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f1830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f1831d;

    public a(f fVar, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.f1831d = fVar;
        this.f1828a = linearLayout;
        this.f1829b = textView;
        this.f1830c = textView2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f1831d.n) {
            this.f1828a.setVisibility(8);
        } else {
            this.f1828a.setVisibility(0);
            this.f1829b.setText(this.f1831d.f1841b);
            this.f1830c.setText(this.f1831d.f1842c);
        }
        this.f1831d.q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        f fVar = this.f1831d;
        WindowManager.LayoutParams layoutParams = fVar.h;
        layoutParams.width = measuredWidth;
        layoutParams.height = measuredHeight;
        fVar.g.updateViewLayout(view, layoutParams);
        this.f1831d.n = !r5.n;
    }
}
