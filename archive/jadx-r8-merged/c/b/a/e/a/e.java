package c.b.a.e.a;

import android.content.SharedPreferences;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class e implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f1821c;

    public e(f fVar) {
        this.f1821c = fVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        SharedPreferences.Editor editorEdit;
        int i;
        String str;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1819a = (int) motionEvent.getRawX();
            this.f1820b = (int) motionEvent.getRawY();
        } else if (action == 1) {
            f fVar = this.f1821c;
            if (fVar.h) {
                c.b.a.d.a.c(fVar.e).edit().putInt("hozX", this.f1821c.f1825d.x).apply();
                editorEdit = c.b.a.d.a.c(this.f1821c.e).edit();
                i = this.f1821c.f1825d.y;
                str = "hozY";
            } else {
                c.b.a.d.a.c(fVar.e).edit().putInt("x", this.f1821c.f1825d.x).apply();
                editorEdit = c.b.a.d.a.c(this.f1821c.e).edit();
                i = this.f1821c.f1825d.y;
                str = "y";
            }
            editorEdit.putInt(str, i).apply();
            Toast.makeText(this.f1821c.e, "修改成功", 0).show();
            this.f1821c.a(view);
        } else if (action == 2) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            int i2 = rawX - this.f1819a;
            int i3 = rawY - this.f1820b;
            this.f1819a = rawX;
            this.f1820b = rawY;
            f fVar2 = this.f1821c;
            WindowManager.LayoutParams layoutParams = fVar2.f1825d;
            layoutParams.x += i2;
            layoutParams.y += i3;
            fVar2.f1824c.updateViewLayout(view, layoutParams);
        }
        return false;
    }
}
