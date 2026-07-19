package com.lingc.notification.overlay;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TileNotificationControllerTest {
    @Test public void shortTextIsUnchanged() {
        assertEquals("short", TileNotificationController.truncate("short"));
    }

    @Test public void longTextUsesOriginalEighteenCharacterLimit() {
        assertEquals("123456789012345678...", TileNotificationController.truncate("12345678901234567890"));
    }
}
