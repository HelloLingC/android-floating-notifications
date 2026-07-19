package com.lingc.notification.overlay;

import android.content.Context;
import android.provider.Settings;

public final class OverlayCoordinator {
    private OverlayCoordinator() {}

    public static boolean canDraw(Context context) {
        return android.os.Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
    }

    public static void show(Context context, OverlayPayload payload) {
        if (!canDraw(context)) return;
        String mode = com.lingc.notification.util.Settings.main(context)
                .getString("notificatWays", "floating");
        if ("tile".equals(mode)) TileNotificationController.show(context, payload);
        else FloatingNotificationController.show(context, payload);
    }
}
