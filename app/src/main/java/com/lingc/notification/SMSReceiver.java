package com.lingc.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;

public class SMSReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || !(extras.get("pdus") instanceof Object[])) return;
        StringBuilder content = new StringBuilder();
        String format = intent.getStringExtra("format");
        for (Object pdu : (Object[]) extras.get("pdus")) {
            SmsMessage message = android.os.Build.VERSION.SDK_INT >= 23
                    ? SmsMessage.createFromPdu((byte[]) pdu, format)
                    : SmsMessage.createFromPdu((byte[]) pdu);
            if (message != null) content.append(message.getMessageBody());
        }
        Log.d("Content", content.toString());
    }
}
