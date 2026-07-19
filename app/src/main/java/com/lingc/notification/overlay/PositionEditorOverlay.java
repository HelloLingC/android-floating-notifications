package com.lingc.notification.overlay;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

import com.lingc.notification.R;
import com.lingc.notification.util.Settings;

public final class PositionEditorOverlay {
    private PositionEditorOverlay() {}

    public static void show(Context context, boolean tile) {
        if (!OverlayCoordinator.canDraw(context)) return;
        Context app = context.getApplicationContext();
        WindowManager manager = (WindowManager) app.getSystemService(Context.WINDOW_SERVICE);
        View view = LayoutInflater.from(app).inflate(tile ? R.layout.window_tile_lay : R.layout.window_lay, null, false);
        TextView title = view.findViewById(R.id.window_title_text);
        title.setText("拖动我调整位置");
        TextView content = view.findViewById(tile ? R.id.window_content_text : R.id.window_text_text);
        content.setText("松手保存，长按关闭");
        if (tile) view.findViewById(R.id.window_messgae_lay).setVisibility(View.VISIBLE);
        WindowManager.LayoutParams params = OverlayViews.params(app, WindowManager.LayoutParams.WRAP_CONTENT);
        final float[] start = new float[4];
        view.setOnTouchListener((target, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                start[0] = event.getRawX(); start[1] = event.getRawY(); start[2] = params.x; start[3] = params.y;
            } else if (event.getActionMasked() == MotionEvent.ACTION_MOVE) {
                params.x = (int) (start[2] + event.getRawX() - start[0]);
                params.y = (int) (start[3] + event.getRawY() - start[1]);
                try { manager.updateViewLayout(target, params); } catch (RuntimeException ignored) {}
            } else if (event.getActionMasked() == MotionEvent.ACTION_UP) {
                Settings.global(app).edit().putString("hozX", String.valueOf(params.x)).putString("hozY", String.valueOf(params.y)).apply();
            }
            return true;
        });
        view.setOnLongClickListener(v -> { try { manager.removeView(v); } catch (RuntimeException ignored) {} return true; });
        try { manager.addView(view, params); } catch (RuntimeException ignored) {}
    }
}
