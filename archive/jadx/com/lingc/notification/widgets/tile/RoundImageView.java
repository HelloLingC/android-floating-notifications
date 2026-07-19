package com.lingc.notification.widgets.tile;

import a.b.i.j.C0160u;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import c.a.a.a.a;

/* JADX INFO: loaded from: classes.dex */
public class RoundImageView extends C0160u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Bitmap.Config f1854c = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1855d;
    public Bitmap e;
    public Paint f;
    public BitmapShader g;
    public RectF h;
    public int i;
    public int j;
    public Matrix k;
    public Paint l;
    public int m;
    public int n;
    public RectF o;
    public float p;
    public boolean q;

    public RoundImageView(Context context) {
        super(context, null, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Log.i("CircleImage3", "onDraw :");
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f1855d, this.f);
        if (this.q) {
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.p, this.l);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        RectF rectF;
        float width;
        float height;
        float fWidth;
        float fWidth2;
        Bitmap bitmap;
        super.onSizeChanged(i, i2, i3, i4);
        if (getDrawable() != null) {
            Drawable drawable = getDrawable();
            if (drawable == null) {
                bitmap = null;
                this.e = bitmap;
            } else {
                if (drawable instanceof BitmapDrawable) {
                    bitmap = ((BitmapDrawable) drawable).getBitmap();
                } else {
                    try {
                        Bitmap bitmapCreateBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f1854c) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f1854c);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        bitmap = bitmapCreateBitmap;
                    } catch (OutOfMemoryError unused) {
                        bitmap = null;
                    }
                }
                this.e = bitmap;
            }
        }
        if (this.e == null) {
            throw new IllegalArgumentException("the bitmap of imageView is null !");
        }
        float fHeight = 0.0f;
        if (this.q) {
            this.l = new Paint();
            this.o = new RectF();
            this.l.setStyle(Paint.Style.STROKE);
            this.l.setAntiAlias(true);
            this.l.setColor(this.m);
            this.l.setStrokeWidth(this.n);
            this.o.set(0.0f, 0.0f, getWidth(), getHeight());
            this.p = Math.min((this.o.width() - this.n) / 2.0f, (this.o.height() - this.n) / 2.0f);
        }
        this.f = new Paint();
        this.h = new RectF();
        this.k = new Matrix();
        this.i = this.e.getWidth();
        this.j = this.e.getHeight();
        Bitmap bitmap2 = this.e;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.g = new BitmapShader(bitmap2, tileMode, tileMode);
        this.f.setAntiAlias(true);
        this.f.setShader(this.g);
        if (this.q) {
            rectF = this.h;
            width = this.o.width() - this.n;
            height = this.o.height() - this.n;
        } else {
            rectF = this.h;
            width = getWidth();
            height = getHeight();
        }
        rectF.set(0.0f, 0.0f, width, height);
        this.f1855d = Math.min(this.h.height() / 2.0f, this.h.width() / 2.0f);
        StringBuilder sbA = a.a("initPaint drawable Width :");
        sbA.append(this.h.width());
        sbA.append(" Height ");
        sbA.append(this.h.height());
        sbA.append(" View width :");
        sbA.append(getWidth());
        sbA.append(" height :");
        sbA.append(getHeight());
        Log.i("CircleImage3", sbA.toString());
        Log.i("CircleImage3", "setBitmapShaderMtrix drawable Width :" + this.h.width() + " Height " + this.h.height());
        Log.i("CircleImage3", "setBitmapShaderMtrix bitmap width :" + this.e.getWidth() + " height : " + this.e.getHeight());
        this.k.set(null);
        if (this.h.height() * this.i > this.h.width() * this.j) {
            fWidth = this.h.height() / this.j;
            fWidth2 = (this.h.width() - (this.i * fWidth)) * 0.5f;
            Log.i("CircleImage3", "setBitmapShaderMtrix scale :" + fWidth + " dx :" + fWidth2);
        } else {
            fWidth = this.h.width() / this.i;
            fHeight = (this.h.height() - (this.j * fWidth)) * 0.5f;
            Log.i("CircleImage3", "setBitmapShaderMtrix scale :" + fWidth + " dy :" + fHeight);
            fWidth2 = 0.0f;
        }
        this.k.setScale(fWidth, fWidth);
        Matrix matrix = this.k;
        RectF rectF2 = this.h;
        matrix.postTranslate(((int) (fWidth2 + 0.5f)) + rectF2.left, ((int) (fHeight + 0.5f)) + rectF2.top);
        this.g.setLocalMatrix(this.k);
    }

    @Override // a.b.i.j.C0160u, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Log.i("CircleImage3", "CircleImage3 构造方法 :");
        this.q = false;
        if (this.q) {
            this.n = 20;
            this.m = -65536;
        }
    }
}
