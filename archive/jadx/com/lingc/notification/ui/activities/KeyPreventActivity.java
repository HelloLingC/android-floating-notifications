package com.lingc.notification.ui.activities;

import a.b.b.a.a.a;
import a.b.i.a.AbstractC0093a;
import a.b.i.a.l;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import c.b.a.c.a.m;
import c.b.a.c.a.p;
import com.lingc.notification.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KeyPreventActivity extends BaseActivity {
    public List<String> p;

    public void m() {
        l.a aVar = new l.a(this);
        aVar.f867a.f = "使用说明";
        aVar.a(R.string.first_key_information);
        aVar.f867a.r = false;
        aVar.b(R.string.dialog_close_btn, (DialogInterface.OnClickListener) null);
        aVar.b();
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        setContentView(R.layout.activity_key_prevent);
        AbstractC0093a abstractC0093aI = i();
        if (abstractC0093aI != null) {
            abstractC0093aI.c(true);
        }
        this.p = (List) a.c("keys");
        ListView listView = (ListView) findViewById(R.id.keypre_list_view);
        if (this.p == null) {
            m();
            this.p = new ArrayList();
            this.p.add("or: 下载");
            this.p.add("or: %");
            a.a((Object) this.p, "keys");
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_list_item_1, this.p);
        listView.setAdapter((ListAdapter) arrayAdapter);
        listView.setOnItemClickListener(new m(this, arrayAdapter));
        findViewById(R.id.keypre_add_fab).setOnClickListener(new p(this));
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
