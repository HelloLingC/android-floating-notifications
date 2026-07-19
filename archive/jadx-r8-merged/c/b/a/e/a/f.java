package c.b.a.e.a;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import c.b.a.c.a.C0173b;
import com.lingc.notification.ui.activities.EditPosActivity;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager f1824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f1825d;
    public Context e;
    public View f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int j;
    public int k;
    public Bitmap m;
    public String n;
    public String o;
    public Drawable p;
    public PendingIntent q;
    public b r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1822a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1823b = false;
    public boolean l = true;
    public View.OnTouchListener s = new e(this);

    /* JADX INFO: Access modifiers changed from: private */
    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f1826a = 0.0f;

        public /* synthetic */ a(c cVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                motionEvent.getX();
                this.f1826a = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            motionEvent.getX();
            if (motionEvent.getY() - this.f1826a <= ViewConfiguration.get(f.this.e).getScaledTouchSlop()) {
                return false;
            }
            f.this.a(view);
            return false;
        }
    }

    public interface b {
    }

    public f(Context context) {
        this.e = context;
    }

    public final f a() {
        WeakReference<f> weakReference;
        if (this.g || (weakReference = c.b.a.e.a.b.f1813a) == null) {
            return null;
        }
        return weakReference.get();
    }

    public void a(Bitmap bitmap, String str, String str2, Drawable drawable, PendingIntent pendingIntent) {
        this.m = bitmap;
        this.n = str;
        this.o = str2;
        this.p = drawable;
        this.q = pendingIntent;
    }

    public void a(View view) {
        if (this.f1823b) {
            return;
        }
        if (view == null) {
            view = this.f;
        }
        try {
            this.f1824c.removeView(view);
            c.b.a.e.a.b.f1814b--;
            this.f1823b = true;
            b bVar = this.r;
            if (bVar != null) {
                EditPosActivity.a(((C0173b) bVar).f1726a.f1727a.f1728a, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            Method dump skipped, instruction units count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.e.a.f.b():void");
    }
}
