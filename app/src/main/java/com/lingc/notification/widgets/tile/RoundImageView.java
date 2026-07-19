package com.lingc.notification.widgets.tile;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

import androidx.appcompat.widget.AppCompatImageView;

public class RoundImageView extends AppCompatImageView {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Matrix matrix = new Matrix();

    public RoundImageView(Context context) { super(context); }
    public RoundImageView(Context context, AttributeSet attrs) { super(context, attrs); }
    public RoundImageView(Context context, AttributeSet attrs, int style) { super(context, attrs, style); }

    @Override protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof BitmapDrawable)) { super.onDraw(canvas); return; }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        if (bitmap == null || getWidth() == 0 || getHeight() == 0) return;
        BitmapShader shader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        float scale = Math.max(getWidth() / (float) bitmap.getWidth(), getHeight() / (float) bitmap.getHeight());
        matrix.setScale(scale, scale);
        matrix.postTranslate((getWidth() - bitmap.getWidth() * scale) / 2f, (getHeight() - bitmap.getHeight() * scale) / 2f);
        shader.setLocalMatrix(matrix);
        paint.setShader(shader);
        canvas.drawCircle(getWidth() / 2f, getHeight() / 2f, Math.min(getWidth(), getHeight()) / 2f, paint);
    }
}
