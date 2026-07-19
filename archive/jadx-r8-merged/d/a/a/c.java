package d.a.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class c implements a {
    public int B;
    public int C;
    public float[] D;
    public RectF E;
    public int F;
    public int G;
    public int H;
    public WeakReference<View> I;
    public boolean J;
    public boolean L;
    public float N;
    public int O;
    public int P;
    public int Q;
    public int R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1860d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int j;
    public int k;
    public int l;
    public int m;
    public int o;
    public int p;
    public int q;
    public int r;
    public int t;
    public int u;
    public int v;
    public int w;
    public Paint y;
    public int i = 255;
    public int n = 255;
    public int s = 255;
    public int x = 255;
    public Path K = new Path();
    public int M = 0;
    public PorterDuffXfermode A = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
    public Paint z = new Paint();

    public c(Context context, AttributeSet attributeSet, int i, View view) {
        int dimensionPixelSize;
        int i2 = 0;
        this.f1857a = 0;
        this.f1858b = 0;
        this.f1859c = 0;
        this.f1860d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.C = 0;
        this.F = 0;
        this.G = 1;
        this.H = 0;
        this.J = false;
        this.L = true;
        this.N = 0.0f;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.I = new WeakReference<>(view);
        this.h = -16776961;
        this.m = -16776961;
        this.z.setAntiAlias(true);
        this.E = new RectF();
        if (attributeSet == null && i == 0) {
            dimensionPixelSize = 0;
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.ShadowLayout, i, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            dimensionPixelSize = 0;
            int dimensionPixelSize2 = 0;
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                int i4 = d.ShadowLayout_android_maxHeight;
                if (index == i4) {
                    this.f1857a = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1857a);
                } else if (index == i4) {
                    this.f1858b = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1858b);
                } else if (index == d.ShadowLayout_android_minWidth) {
                    this.f1859c = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1859c);
                } else if (index == d.ShadowLayout_android_minHeight) {
                    this.f1860d = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1860d);
                } else if (index == d.ShadowLayout_l_topDividerColor) {
                    this.h = typedArrayObtainStyledAttributes.getColor(index, this.h);
                } else if (index == d.ShadowLayout_l_topDividerHeight) {
                    this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.e);
                } else if (index == d.ShadowLayout_l_topDividerInsetLeft) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f);
                } else if (index == d.ShadowLayout_l_topDividerInsetRight) {
                    this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.g);
                } else if (index == d.ShadowLayout_l_bottomDividerColor) {
                    this.m = typedArrayObtainStyledAttributes.getColor(index, this.m);
                } else if (index == d.ShadowLayout_l_bottomDividerHeight) {
                    this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.j);
                } else if (index == d.ShadowLayout_l_bottomDividerInsetLeft) {
                    this.k = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.k);
                } else if (index == d.ShadowLayout_l_bottomDividerInsetRight) {
                    this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.l);
                } else if (index == d.ShadowLayout_l_leftDividerColor) {
                    this.r = typedArrayObtainStyledAttributes.getColor(index, this.r);
                } else if (index == d.ShadowLayout_l_leftDividerWidth) {
                    this.o = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.j);
                } else if (index == d.ShadowLayout_l_leftDividerInsetTop) {
                    this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.p);
                } else if (index == d.ShadowLayout_l_leftDividerInsetBottom) {
                    this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.q);
                } else if (index == d.ShadowLayout_l_rightDividerColor) {
                    this.w = typedArrayObtainStyledAttributes.getColor(index, this.w);
                } else if (index == d.ShadowLayout_l_rightDividerWidth) {
                    this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.t);
                } else if (index == d.ShadowLayout_l_rightDividerInsetTop) {
                    this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.u);
                } else if (index == d.ShadowLayout_l_rightDividerInsetBottom) {
                    this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.v);
                } else if (index == d.ShadowLayout_l_borderColor) {
                    this.F = typedArrayObtainStyledAttributes.getColor(index, this.F);
                } else if (index == d.ShadowLayout_l_borderWidth) {
                    this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                } else if (index == d.ShadowLayout_l_radius) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == d.ShadowLayout_l_outerNormalColor) {
                    this.H = typedArrayObtainStyledAttributes.getColor(index, this.H);
                } else if (index == d.ShadowLayout_l_hideRadiusSide) {
                    this.C = typedArrayObtainStyledAttributes.getColor(index, this.C);
                } else if (index == d.ShadowLayout_l_showBorderOnlyBeforeL) {
                    this.L = typedArrayObtainStyledAttributes.getBoolean(index, this.L);
                } else if (index == d.ShadowLayout_l_shadowElevation) {
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize2);
                } else if (index == d.ShadowLayout_l_shadowAlpha) {
                    this.N = typedArrayObtainStyledAttributes.getFloat(index, this.N);
                } else if (index == d.ShadowLayout_l_outlineInsetLeft) {
                    this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == d.ShadowLayout_l_outlineInsetRight) {
                    this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == d.ShadowLayout_l_outlineInsetTop) {
                    this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == d.ShadowLayout_l_outlineInsetBottom) {
                    this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == d.ShadowLayout_l_outlineExcludePadding) {
                    this.J = typedArrayObtainStyledAttributes.getBoolean(index, false);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            i2 = dimensionPixelSize2;
        }
        a(dimensionPixelSize, this.C, i2, this.N);
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public int a(int i, int i2) {
        int i3;
        return (View.MeasureSpec.getMode(i) == 1073741824 || i2 >= (i3 = this.f1860d)) ? i : View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
    }

    public final void a() {
        View view;
        if (!b() || (view = this.I.get()) == null) {
            return;
        }
        int i = this.M;
        view.setElevation(i == 0 ? 0.0f : i);
        view.invalidateOutline();
    }

    public void a(int i, int i2, float f) {
        a(i, this.C, i2, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r12, int r13, int r14, float r15) {
        /*
            r11 = this;
            java.lang.ref.WeakReference<android.view.View> r0 = r11.I
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            r11.B = r12
            r11.C = r13
            int r12 = r11.B
            r1 = 0
            r2 = 0
            r3 = 1
            if (r12 <= 0) goto L81
            r4 = 7
            r5 = 6
            r6 = 5
            r7 = 8
            r8 = 4
            r9 = 3
            r10 = 2
            if (r13 != r3) goto L36
            float[] r13 = new float[r7]
            r13[r2] = r1
            r13[r3] = r1
            r13[r10] = r1
            r13[r9] = r1
            float r12 = (float) r12
            r13[r8] = r12
            r13[r6] = r12
            r13[r5] = r12
            r13[r4] = r12
            r11.D = r13
            goto L81
        L36:
            if (r13 != r10) goto L4e
            float[] r13 = new float[r7]
            float r12 = (float) r12
            r13[r2] = r12
            r13[r3] = r12
            r13[r10] = r1
            r13[r9] = r1
            r13[r8] = r1
            r13[r6] = r1
            r13[r5] = r12
            r13[r4] = r12
            r11.D = r13
            goto L81
        L4e:
            if (r13 != r9) goto L66
            float[] r13 = new float[r7]
            float r12 = (float) r12
            r13[r2] = r12
            r13[r3] = r12
            r13[r10] = r12
            r13[r9] = r12
            r13[r8] = r1
            r13[r6] = r1
            r13[r5] = r1
            r13[r4] = r1
            r11.D = r13
            goto L81
        L66:
            if (r13 != r8) goto L7e
            float[] r13 = new float[r7]
            r13[r2] = r1
            r13[r3] = r1
            float r12 = (float) r12
            r13[r10] = r12
            r13[r9] = r12
            r13[r8] = r12
            r13[r6] = r12
            r13[r5] = r1
            r13[r4] = r1
            r11.D = r13
            goto L81
        L7e:
            r12 = 0
            r11.D = r12
        L81:
            r11.M = r14
            r11.N = r15
            boolean r12 = b()
            if (r12 == 0) goto Lb7
            int r12 = r11.M
            if (r12 == 0) goto La4
            int r12 = r11.B
            if (r12 <= 0) goto L99
            int r12 = r11.C
            if (r12 == 0) goto L99
            r12 = 1
            goto L9a
        L99:
            r12 = 0
        L9a:
            if (r12 == 0) goto L9d
            goto La4
        L9d:
            int r12 = r11.M
            float r12 = (float) r12
            r0.setElevation(r12)
            goto La7
        La4:
            r0.setElevation(r1)
        La7:
            d.a.a.b r12 = new d.a.a.b
            r12.<init>(r11)
            r0.setOutlineProvider(r12)
            int r12 = r11.B
            if (r12 <= 0) goto Lb4
            r2 = 1
        Lb4:
            r0.setClipToOutline(r2)
        Lb7:
            r0.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.a.c.a(int, int, int, float):void");
    }

    public final void a(Canvas canvas, RectF rectF, float[] fArr, Paint paint) {
        this.K.reset();
        this.K.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(this.K, paint);
    }

    public void a(boolean z) {
        View view;
        if (!b() || (view = this.I.get()) == null) {
            return;
        }
        this.J = z;
        view.invalidateOutline();
    }

    public int b(int i, int i2) {
        int i3;
        return (View.MeasureSpec.getMode(i) == 1073741824 || i2 >= (i3 = this.f1859c)) ? i : View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
    }
}
