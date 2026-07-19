package com.lingc.notification.ui.activities;

import a.b.b.a.a.a;
import a.b.i.a.AbstractC0093a;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import c.b.a.a.c;
import c.b.a.b.b;
import com.lingc.notification.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ManagerActivity extends BaseActivity {
    public final void m() {
        List arrayList = (List) a.c("data");
        if (arrayList == null) {
            arrayList = new ArrayList();
            b bVar = new b();
            bVar.f1713c = getPackageName();
            bVar.f1711a = "无数据";
            bVar.f1712b = "无通知历史记录";
            bVar.f1714d = "2004-11-23";
            arrayList.add(bVar);
        }
        Collections.reverse(arrayList);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.mannager_recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        recyclerView.setAdapter(new c(arrayList));
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_manager);
        AbstractC0093a abstractC0093aI = i();
        if (abstractC0093aI != null) {
            abstractC0093aI.c(true);
        }
        m();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_manager, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String str;
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.action_manager_delete) {
            if (new File(a.w.getFilesDir() + "/data.dat").delete()) {
                m();
                str = "清除成功";
            } else {
                str = "清除失败，你确定有数据吗？";
            }
            Toast.makeText(this, str, 0).show();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
