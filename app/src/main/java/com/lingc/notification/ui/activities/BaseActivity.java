package com.lingc.notification.ui.activities;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.lingc.notification.util.Settings;

public class BaseActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Settings.global(this).getBoolean("hideInBackground", false)) {
            getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }
}
