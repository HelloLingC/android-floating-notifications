package com.lingc.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class SMSReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Bundle extras = intent.getExtras();
        String stringExtra = intent.getStringExtra("format");
        if (extras != null) {
            for (Object obj : (Object[]) extras.get("pdus")) {
                SmsMessage smsMessageCreateFromPdu = SmsMessage.createFromPdu((byte[]) obj, stringExtra);
                smsMessageCreateFromPdu.getOriginatingAddress();
                sb.append(smsMessageCreateFromPdu.getMessageBody());
            }
        }
        Log.d("Content", sb.toString());
    }
}
