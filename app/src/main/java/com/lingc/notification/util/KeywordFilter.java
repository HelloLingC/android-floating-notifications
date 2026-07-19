package com.lingc.notification.util;

import java.util.List;

public final class KeywordFilter {
    private KeywordFilter() {}

    public static boolean isBlocked(String title, String content, List<String> rules) {
        String safeTitle = title == null ? "" : title;
        String safeContent = content == null ? "" : content;
        if (rules == null) return false;
        for (String rule : rules) {
            if (rule == null) continue;
            int separator = rule.indexOf(' ');
            if (separator < 0 || separator == rule.length() - 1) continue;
            String value = rule.substring(separator + 1);
            if (rule.startsWith("title: ") && safeTitle.contains(value)) return true;
            if (rule.startsWith("content: ") && safeContent.contains(value)) return true;
            if (rule.startsWith("or: ") && (safeTitle.contains(value) || safeContent.contains(value))) return true;
            if (rule.startsWith("and: ") && safeTitle.contains(value) && safeContent.contains(value)) return true;
        }
        return false;
    }
}
