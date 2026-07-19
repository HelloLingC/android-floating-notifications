package com.lingc.notification.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class NotificationRepository {
    public static final String HISTORY_FILE = "data";
    public static final String KEYWORDS_FILE = "keys";
    public static final String BLACKLIST_FILE = "blackList";

    @SuppressWarnings("unchecked")
    public synchronized List<NotificationRecord> getHistory() {
        Object value = LegacyObjectStore.read(HISTORY_FILE);
        if (!(value instanceof List)) return new ArrayList<>();
        List<?> input = (List<?>) value;
        List<NotificationRecord> result = new ArrayList<>();
        for (Object item : input) if (item instanceof NotificationRecord) result.add((NotificationRecord) item);
        return result;
    }

    public synchronized void add(NotificationRecord record) {
        List<NotificationRecord> history = getHistory();
        history.add(record);
        LegacyObjectStore.write(HISTORY_FILE, history);
    }

    public synchronized void clearHistory() {
        LegacyObjectStore.write(HISTORY_FILE, new ArrayList<NotificationRecord>());
    }

    public List<String> getKeywords() {
        Object value = LegacyObjectStore.read(KEYWORDS_FILE);
        if (!(value instanceof List)) return new ArrayList<>();
        List<String> result = new ArrayList<>();
        for (Object item : (List<?>) value) if (item instanceof String) result.add((String) item);
        return result;
    }

    public void saveKeywords(List<String> keywords) {
        LegacyObjectStore.write(KEYWORDS_FILE, new ArrayList<>(keywords));
    }

    public Set<String> getBlacklist() {
        Object value = LegacyObjectStore.read(BLACKLIST_FILE);
        if (!(value instanceof Set)) return new HashSet<>();
        Set<String> result = new HashSet<>();
        for (Object item : (Set<?>) value) if (item instanceof String) result.add((String) item);
        return result;
    }

    public void saveBlacklist(Set<String> packages) {
        LegacyObjectStore.write(BLACKLIST_FILE, new HashSet<>(packages));
    }
}
