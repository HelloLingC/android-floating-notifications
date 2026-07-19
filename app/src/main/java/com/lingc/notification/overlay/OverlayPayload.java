package com.lingc.notification.overlay;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

public final class OverlayPayload {
    public final String packageName;
    public final String title;
    public final String content;
    public final Bitmap largeIcon;
    public final Drawable appIcon;
    public final PendingIntent contentIntent;

    public OverlayPayload(String packageName, String title, String content, Bitmap largeIcon,
                          Drawable appIcon, PendingIntent contentIntent) {
        this.packageName = packageName;
        this.title = title == null ? "" : title;
        this.content = content == null ? "" : content;
        this.largeIcon = largeIcon;
        this.appIcon = appIcon;
        this.contentIntent = contentIntent;
    }
}
