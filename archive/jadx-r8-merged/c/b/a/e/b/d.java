package c.b.a.e.b;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class d implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f1834a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f1835b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f1836c;

    public d(f fVar) {
        this.f1836c = fVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1834a = motionEvent.getX();
            this.f1835b = motionEvent.getY();
            return false;
        }
        if (action != 1) {
            return false;
        }
        Log.d("Touch X", motionEvent.getX() + "/" + this.f1834a);
        Log.d("Touch Y", motionEvent.getY() + "/" + this.f1835b);
        if (motionEvent.getX() - this.f1834a > ViewConfiguration.get(this.f1836c.f).getScaledTouchSlop()) {
            g.a();
            return false;
        }
        if (motionEvent.getY() - this.f1835b <= ViewConfiguration.get(this.f1836c.f).getScaledTouchSlop()) {
            return false;
        }
        this.f1836c.a();
        return false;
    }
}
