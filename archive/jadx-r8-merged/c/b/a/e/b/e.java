package c.b.a.e.b;

import android.content.SharedPreferences;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class e implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f1839c;

    public e(f fVar) {
        this.f1839c = fVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        SharedPreferences.Editor editorEdit;
        int i;
        String str;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1837a = (int) motionEvent.getRawX();
            this.f1838b = (int) motionEvent.getRawY();
        } else if (action == 1) {
            f fVar = this.f1839c;
            if (fVar.j) {
                c.b.a.d.a.c(fVar.f).edit().putInt("hozX", this.f1839c.h.x).apply();
                editorEdit = c.b.a.d.a.c(this.f1839c.f).edit();
                i = this.f1839c.h.y;
                str = "hozY";
            } else {
                c.b.a.d.a.c(fVar.f).edit().putInt("x", this.f1839c.h.x).apply();
                editorEdit = c.b.a.d.a.c(this.f1839c.f).edit();
                i = this.f1839c.h.y;
                str = "y";
            }
            editorEdit.putInt(str, i).apply();
            this.f1839c.a();
            Toast.makeText(this.f1839c.f, "修改成功", 0).show();
        } else if (action == 2) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            int i2 = rawX - this.f1837a;
            int i3 = rawY - this.f1838b;
            this.f1837a = rawX;
            this.f1838b = rawY;
            f fVar2 = this.f1839c;
            WindowManager.LayoutParams layoutParams = fVar2.h;
            layoutParams.x += i2;
            layoutParams.y += i3;
            fVar2.g.updateViewLayout(view, layoutParams);
        }
        return false;
    }
}
