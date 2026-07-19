package com.lingc.notification.ui.activities;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

import com.lingc.notification.R;

public class ExceptionActivity extends BaseActivity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_exception);
        String message = getIntent().getStringExtra("message");
        TextView text = findViewById(R.id.exception_info_text);
        text.setText(message == null ? "No crash information" : message);
        findViewById(R.id.exception_exit_btn).setOnClickListener(v -> finishAffinity());
        findViewById(R.id.exception_copy_btn).setOnClickListener(v -> {
            ClipboardManager manager = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
            manager.setPrimaryClip(ClipData.newPlainText("crash", text.getText()));
            Toast.makeText(this, "已复制", Toast.LENGTH_SHORT).show();
        });
    }
}
