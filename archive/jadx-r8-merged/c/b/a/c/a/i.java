package c.b.a.c.a;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.widget.Toast;
import com.lingc.notification.ui.activities.ExceptionActivity;

/* JADX INFO: loaded from: classes.dex */
public class i implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExceptionActivity f1734b;

    public i(ExceptionActivity exceptionActivity, String str) {
        this.f1734b = exceptionActivity;
        this.f1733a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((ClipboardManager) this.f1734b.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Label", this.f1733a));
        Toast.makeText(this.f1734b, "复制成功", 0).show();
    }
}
