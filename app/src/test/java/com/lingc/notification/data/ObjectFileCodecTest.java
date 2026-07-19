package com.lingc.notification.data;

import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class ObjectFileCodecTest {
    @Test public void notificationHistoryRoundTripsThroughLegacyObjectStream() throws Exception {
        File file = File.createTempFile("notification-history", ".dat");
        file.deleteOnExit();
        List<NotificationRecord> records = new ArrayList<>();
        records.add(new NotificationRecord("标题", "内容", "example.app", "2020-01-25 18:48:58"));
        ObjectFileCodec.write(file, records);
        Object decoded = ObjectFileCodec.read(file);
        List<?> result = (List<?>) decoded;
        assertEquals(1, result.size());
        assertEquals("标题", ((NotificationRecord) result.get(0)).getTitle());
    }
}
