package top.limuyang2.shadowlayoutlib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;

import com.lingc.notification.R;

public class ShadowLinearLayout extends LinearLayout {
    private final GradientDrawable panel = new GradientDrawable();
    private float radius;
    private int panelColor = Color.WHITE;

    public ShadowLinearLayout(Context context) { this(context, null); }

    public ShadowLinearLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        setWillNotDraw(false);
        if (attrs != null) {
            TypedArray values = context.obtainStyledAttributes(attrs, R.styleable.ShadowLinearLayout);
            radius = values.getDimension(R.styleable.ShadowLinearLayout_l_radius, 8f);
            float elevation = values.getDimension(R.styleable.ShadowLinearLayout_l_shadowElevation, 8f);
            float alpha = values.getFloat(R.styleable.ShadowLinearLayout_l_shadowAlpha, 0.2f);
            panelColor = values.getColor(R.styleable.ShadowLinearLayout_l_outerNormalColor, Color.WHITE);
            values.recycle();
            setShadow(Math.round(elevation), alpha);
        }
        updateBackground();
    }

    public void setCornerRadius(float radius) {
        this.radius = radius;
        updateBackground();
    }

    public void setPanelColor(int color) {
        this.panelColor = color;
        updateBackground();
    }

    public void setShadow(int elevation, float alpha) {
        float boundedAlpha = Math.max(0f, Math.min(1f, alpha));
        setElevation(Math.max(0, elevation));
        setAlpha(Math.max(0.05f, 1f - boundedAlpha * 0.08f));
    }

    public void updateShadow(int elevation, int color, int side, float alpha) {
        setPanelColor(color);
        setShadow(elevation, alpha);
    }

    private void updateBackground() {
        panel.setColor(panelColor);
        panel.setCornerRadius(radius);
        setBackground(panel);
    }
}
