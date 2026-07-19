package com.lingc.notification.ui.activities;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.lingc.notification.R;

public class DoateActivity extends BaseActivity {
    private boolean wechat = true;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_doate);
        findViewById(R.id.pay_change_btn).setOnClickListener(v -> { wechat = !wechat; render(); });
        render();
    }

    private void render() {
        ((TextView) findViewById(R.id.pay_text)).setText(wechat ? "微信" : "支付宝");
        ((ImageView) findViewById(R.id.pay_img)).setImageResource(wechat ? R.mipmap.wechat : R.mipmap.alipay);
        ((LinearLayout) findViewById(R.id.pay_lay)).setBackgroundColor(wechat ? 0xff35b751 : 0xff1677ff);
    }
}
