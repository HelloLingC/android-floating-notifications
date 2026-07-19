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
import android.widget.LinearLayout;
import android.widget.TextView;

import com.lingc.notification.R;
import com.lingc.notification.util.Settings;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

public final class TileNotificationController {
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final List<View> ACTIVE = new ArrayList<>();
    private static final Deque<PendingTile> WAITING = new ArrayDeque<>();

    private TileNotificationController() {}

    public static void show(Context source, OverlayPayload payload) {
        Context context = source.getApplicationContext();
        MAIN.post(() -> enqueueOrAdd(context, payload));
    }

    private static void enqueueOrAdd(Context context, OverlayPayload payload) {
        int maximum = Math.max(1, Settings.integer(Settings.global(context), "mostShowNum", 6));
        if (ACTIVE.size() >= maximum) {
            WAITING.offerLast(new PendingTile(context, payload));
            return;
        }
        add(context, payload);
    }

    private static void add(Context context, OverlayPayload payload) {
        WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        View view = LayoutInflater.from(context).inflate(R.layout.window_tile_lay, null, false);
        ImageView icon = view.findViewById(R.id.window_icon_img);
        TextView title = view.findViewById(R.id.window_title_text);
        TextView content = view.findViewById(R.id.window_content_text);
        LinearLayout message = view.findViewById(R.id.window_messgae_lay);
        OverlayViews.setIcon(icon, payload);
        title.setText(payload.title);
        content.setText(truncate(payload.content));
        boolean initiallyOpen = Settings.tile(context).getBoolean("open", false);
        message.setVisibility(initiallyOpen ? View.VISIBLE : View.GONE);

        WindowManager.LayoutParams params = OverlayViews.params(context, WindowManager.LayoutParams.WRAP_CONTENT);
        int offset = ACTIVE.size() * 54;
        params.y += Settings.global(context).getBoolean("notificatShowUp", true) ? offset : -offset;
        final float[] downY = new float[1];
        view.setOnClickListener(v -> message.setVisibility(message.getVisibility() == View.VISIBLE ? View.GONE : View.VISIBLE));
        view.setOnLongClickListener(v -> { OverlayViews.send(payload.contentIntent); return true; });
        view.setOnTouchListener((target, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) downY[0] = event.getRawY();
            if (event.getActionMasked() == MotionEvent.ACTION_UP && event.getRawY() - downY[0] > 36f) {
                remove(manager, target);
                return true;
            }
            return false;
        });
        try {
            manager.addView(view, params);
            ACTIVE.add(view);
        } catch (RuntimeException ignored) {
        }
    }

    static String truncate(String content) {
        if (content == null) return "";
        return content.length() > 17 ? content.substring(0, 18) + "..." : content;
    }

    private static void remove(WindowManager manager, View view) {
        if (!ACTIVE.remove(view)) return;
        try { manager.removeView(view); } catch (RuntimeException ignored) {}
        PendingTile next = WAITING.pollFirst();
        if (next != null) add(next.context, next.payload);
    }

    private static final class PendingTile {
        final Context context;
        final OverlayPayload payload;
        PendingTile(Context context, OverlayPayload payload) { this.context = context; this.payload = payload; }
    }
}
