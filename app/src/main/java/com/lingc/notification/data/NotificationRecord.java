package com.lingc.notification.data;

import java.io.Serializable;

public final class NotificationRecord implements Serializable {
    private static final long serialVersionUID = 1L;

    private final String title;
    private final String content;
    private final String packageName;
    private final String timestamp;

    public NotificationRecord(String title, String content, String packageName, String timestamp) {
        this.title = title == null ? "" : title;
        this.content = content == null ? "" : content;
        this.packageName = packageName == null ? "" : packageName;
        this.timestamp = timestamp == null ? "" : timestamp;
    }

    public String getTitle() { return title; }
    public String getContent() { return content; }
    public String getPackageName() { return packageName; }
    public String getTimestamp() { return timestamp; }
}
