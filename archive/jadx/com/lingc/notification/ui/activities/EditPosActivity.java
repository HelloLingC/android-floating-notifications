package com.lingc.notification.ui.activities;

import a.b.i.a.AbstractC0093a;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.Switch;
import c.b.a.c.a.ViewOnClickListenerC0175d;
import c.b.a.c.a.g;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class EditPosActivity extends BaseActivity {
    public Button p;
    public Button q;
    public Switch r;

    public static /* synthetic */ void a(EditPosActivity editPosActivity, boolean z) {
        editPosActivity.q.setEnabled(z);
        editPosActivity.p.setEnabled(z);
        if (editPosActivity.r.isChecked()) {
            editPosActivity.setRequestedOrientation(z ? 1 : 0);
        }
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_pos);
        AbstractC0093a abstractC0093aI = i();
        if (abstractC0093aI != null) {
            abstractC0093aI.c(true);
        }
        this.p = (Button) findViewById(R.id.editpos_floating_mode_btn);
        this.q = (Button) findViewById(R.id.editpos_tile_mode_btn);
        this.r = (Switch) findViewById(R.id.editpos_hoz_swh);
        this.p.setOnClickListener(new ViewOnClickListenerC0175d(this));
        this.q.setOnClickListener(new g(this));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }
}
