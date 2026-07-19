package com.lingc.notification.ui.activities;

import a.b.i.a.AbstractC0093a;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ProgressBar;
import c.b.a.a.b;
import c.b.a.b.a;
import c.b.a.c.a.B;
import c.b.a.c.a.C;
import c.b.a.c.a.D;
import com.lingc.notification.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class WhiteListActivity extends BaseActivity {
    public List<a> p;
    public RecyclerView q;

    public final void m() {
        ArrayList arrayList = new ArrayList();
        Set hashSet = (Set) a.b.b.a.a.a.c("blackList");
        if (hashSet == null) {
            hashSet = new HashSet();
        }
        PackageManager packageManager = getPackageManager();
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(8192)) {
            Drawable applicationIcon = packageManager.getApplicationIcon(packageInfo.applicationInfo);
            String string = packageInfo.applicationInfo.loadLabel(getPackageManager()).toString();
            String str = packageInfo.packageName;
            a aVar = new a();
            aVar.f1707a = applicationIcon;
            aVar.f1708b = string;
            aVar.f1709c = str;
            aVar.f1710d = hashSet.contains(aVar.f1709c);
            arrayList.add(aVar);
        }
        this.p = arrayList;
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_white_list);
        AbstractC0093a abstractC0093aI = i();
        if (abstractC0093aI != null) {
            abstractC0093aI.c(true);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.manager_probar);
        this.q = (RecyclerView) findViewById(R.id.whitelist_recycler_view);
        this.q.setLayoutManager(new LinearLayoutManager(this, 1, false));
        new Thread(new B(this, progressBar)).start();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_whitelist, menu);
        SearchView searchView = (SearchView) menu.findItem(R.id.action_search).getActionView();
        searchView.setQueryHint("输入应用名称或包名");
        searchView.setOnQueryTextListener(new C(this));
        searchView.setOnCloseListener(new D(this));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws Throwable {
        if (menuItem.getItemId() == 16908332) {
            finish();
        } else if (menuItem.getItemId() == R.id.action_select_all) {
            List<a> list = this.p;
            if (list == null) {
                return false;
            }
            for (a aVar : list) {
                int iIndexOf = this.p.indexOf(aVar);
                Set hashSet = (Set) a.b.b.a.a.a.c("blackList");
                if (hashSet == null) {
                    hashSet = new HashSet();
                }
                if (aVar.f1710d) {
                    this.p.get(iIndexOf).f1710d = false;
                    hashSet.remove(aVar.f1709c);
                } else {
                    this.p.get(iIndexOf).f1710d = true;
                    hashSet.add(aVar.f1709c);
                }
                a.b.b.a.a.a.a((Object) hashSet, "blackList");
            }
            this.q.setAdapter(new b(this.p));
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
