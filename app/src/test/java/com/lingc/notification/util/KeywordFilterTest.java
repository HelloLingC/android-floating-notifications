package com.lingc.notification.util;

import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class KeywordFilterTest {
    @Test public void titleRuleOnlyMatchesTitle() {
        assertTrue(KeywordFilter.isBlocked("验证码 1234", "欢迎", Collections.singletonList("title: 验证码")));
        assertFalse(KeywordFilter.isBlocked("欢迎", "验证码 1234", Collections.singletonList("title: 验证码")));
    }

    @Test public void contentRuleOnlyMatchesContent() {
        assertTrue(KeywordFilter.isBlocked("订单", "广告内容", Collections.singletonList("content: 广告")));
    }

    @Test public void orAndRulesUseExpectedBooleanLogic() {
        assertTrue(KeywordFilter.isBlocked("促销", "消息", Collections.singletonList("or: 促销")));
        assertFalse(KeywordFilter.isBlocked("促销", "消息", Collections.singletonList("and: 促销")));
        assertTrue(KeywordFilter.isBlocked("促销", "促销内容", Collections.singletonList("and: 促销")));
    }

    @Test public void malformedRulesAreIgnored() {
        assertFalse(KeywordFilter.isBlocked("title", "content", Arrays.asList("title:", "random", null)));
    }
}
