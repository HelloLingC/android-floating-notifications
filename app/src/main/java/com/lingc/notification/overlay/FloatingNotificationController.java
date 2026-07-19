package com.lingc.notification.overlay;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.lingc.notification.R;
import com.lingc.notification.util.Settings;

import java.util.ArrayList;
import java.util.List;

import top.limuyang2.shadowlayoutlib.ShadowLinearLayout;

public final class FloatingNotificationController {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final List<View> ACTIVE = new ArrayList<>();

    private FloatingNotificationController() {}

    public static void show(Context source, OverlayPayload payload) {
        Context context = source.getApplicationContext();
        MAIN.post(() -> add(context, payload));
    }

    private static void add(Context context, OverlayPayload payload) {
        WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        View view = LayoutInflater.from(context).inflate(R.layout.window_lay, null, false);
        ImageView icon = view.findViewById(R.id.window_app_img);
        TextView title = view.findViewById(R.id.window_title_text);
        TextView content = view.findViewById(R.id.window_text_text);
        ShadowLinearLayout root = view.findViewById(R.id.window_top_lay);

        OverlayViews.setIcon(icon, payload);
        title.setText(payload.title);
        content.setText(payload.content);
        applyStyle(context, root, title, content);

        int maxWidth = Settings.integer(Settings.floating(context), "notifitMaxWidth", 0);
        WindowManager.LayoutParams params = OverlayViews.params(context,
                maxWidth > 0 ? maxWidth : WindowManager.LayoutParams.WRAP_CONTENT);
        final float[] downY = new float[1];
        view.setOnTouchListener((target, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) downY[0] = event.getRawY();
            if (event.getActionMasked() == MotionEvent.ACTION_UP) {
                float delta = event.getRawY() - downY[0];
                if (delta > 32f) remove(manager, target);
                else if (Math.abs(delta) < 24f && Settings.global(context)
                        .getBoolean("notificatCanClick", true)) OverlayViews.send(payload.contentIntent);
            }
            return true;
        });

        try {
            manager.addView(view, params);
            ACTIVE.add(view);
            int duration = Settings.integer(Settings.floating(context), "notifitShowTime", 3000);
            MAIN.postDelayed(() -> remove(manager, view), Math.max(500, duration));
        } catch (RuntimeException ignored) {
        }
    }

    private static void applyStyle(Context context, ShadowLinearLayout root, TextView title, TextView content) {
        String style = Settings.global(context).getString("notificatStyle", "white");
        int background = Color.WHITE;
        int titleColor = Color.BLACK;
        int contentColor = Color.rgb(0x21, 0x21, 0x21);
        if ("dark".equals(style)) {
            background = Color.rgb(0x21, 0x21, 0x21);
            titleColor = Color.WHITE;
            contentColor = Color.LTGRAY;
        } else if ("asswecan".equals(style)) {
            background = OverlayViews.color(Settings.global(context).getString("backgroundColor", "#FFFFFF"), background);
            titleColor = OverlayViews.color(Settings.global(context).getString("titleColor", "#000000"), titleColor);
            contentColor = OverlayViews.color(Settings.global(context).getString("messageColor", "#212121"), contentColor);
        }
        root.setPanelColor(background);
        root.setCornerRadius(Settings.integer(Settings.floating(context), "notifitRadiu", 50));
        root.setShadow(Settings.integer(Settings.floating(context), "notifitShadowSize", 12),
                Settings.decimal(Settings.floating(context), "notifitAlpha", 0.45f));
        title.setTextColor(titleColor);
        content.setTextColor(contentColor);
    }

    private static void remove(WindowManager manager, View view) {
        if (!ACTIVE.remove(view)) return;
        try { manager.removeView(view); } catch (RuntimeException ignored) {}
    }
}
