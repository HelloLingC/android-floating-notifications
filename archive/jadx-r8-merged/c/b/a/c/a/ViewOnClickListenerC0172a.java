package c.b.a.c.a;

import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.DoateActivity;

/* JADX INFO: renamed from: c.b.a.c.a.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class ViewOnClickListenerC0172a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f1722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f1723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageView f1724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DoateActivity f1725d;

    public ViewOnClickListenerC0172a(DoateActivity doateActivity, LinearLayout linearLayout, TextView textView, ImageView imageView) {
        this.f1725d = doateActivity;
        this.f1722a = linearLayout;
        this.f1723b = textView;
        this.f1724c = imageView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DoateActivity doateActivity;
        int i;
        if (this.f1725d.p == 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                Window window = this.f1725d.getWindow();
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(Color.parseColor("#FF2186F3"));
            }
            this.f1722a.setBackgroundColor(Color.parseColor("#FF2186F3"));
            this.f1723b.setText("支付宝");
            this.f1724c.setImageResource(R.mipmap.alipay);
            doateActivity = this.f1725d;
            i = 1;
        } else {
            if (Build.VERSION.SDK_INT >= 23) {
                Window window2 = this.f1725d.getWindow();
                window2.clearFlags(67108864);
                window2.addFlags(Integer.MIN_VALUE);
                window2.setStatusBarColor(Color.parseColor("#FF35B751"));
            }
            this.f1722a.setBackgroundColor(Color.parseColor("#FF35B751"));
            this.f1723b.setText("微信");
            this.f1724c.setImageResource(R.mipmap.wechat);
            doateActivity = this.f1725d;
            i = 0;
        }
        doateActivity.p = i;
    }
}
