package com.lingc.notification.overlay;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;

import com.lingc.notification.R;

final class OverlayViews {
    private OverlayViews() {}

    static int windowType() {
        return android.os.Build.VERSION.SDK_INT >= 26
                ? WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                : WindowManager.LayoutParams.TYPE_PHONE;
    }

    static WindowManager.LayoutParams params(Context context, int width) {
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                width,
                WindowManager.LayoutParams.WRAP_CONTENT,
                windowType(),
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                android.graphics.PixelFormat.TRANSLUCENT);
        params.gravity = android.view.Gravity.TOP | android.view.Gravity.CENTER_HORIZONTAL;
        params.x = com.lingc.notification.util.Settings.integer(
                com.lingc.notification.util.Settings.global(context), "hozX", 0);
        params.y = com.lingc.notification.util.Settings.integer(
                com.lingc.notification.util.Settings.global(context), "hozY", 44);
        return params;
    }

    static void setIcon(ImageView view, OverlayPayload payload) {
        if (payload.largeIcon != null) view.setImageBitmap(payload.largeIcon);
        else if (payload.appIcon != null) view.setImageDrawable(payload.appIcon);
        else view.setImageResource(R.mipmap.ic_launcher);
    }

    static void send(PendingIntent intent) {
        if (intent == null) return;
        try { intent.send(); } catch (PendingIntent.CanceledException ignored) {}
    }

    static int color(String text, int fallback) {
        try { return Color.parseColor(text); } catch (RuntimeException ignored) { return fallback; }
    }
}
