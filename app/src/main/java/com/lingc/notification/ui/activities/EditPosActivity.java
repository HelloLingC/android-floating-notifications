package com.lingc.notification.ui.activities;

import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;

import com.lingc.notification.R;
import com.lingc.notification.overlay.PositionEditorOverlay;

public class EditPosActivity extends BaseActivity {
    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_edit_pos);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        findViewById(R.id.editpos_floating_mode_btn).setOnClickListener(v -> PositionEditorOverlay.show(this, false));
        findViewById(R.id.editpos_tile_mode_btn).setOnClickListener(v -> PositionEditorOverlay.show(this, true));
    }
    @Override public boolean onOptionsItemSelected(MenuItem item) { if (item.getItemId() == android.R.id.home) finish(); return true; }
}
