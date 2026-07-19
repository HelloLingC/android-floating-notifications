package com.lingc.notification.ui.activities;

import a.b.h.a.C0063b;
import a.b.h.a.ComponentCallbacksC0070i;
import a.b.i.a.l;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.BottomNavigationView;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AlertController;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import c.a.a.a.a;
import c.b.a.c.a.q;
import c.b.a.c.a.r;
import c.b.a.c.a.s;
import c.b.a.c.a.t;
import c.b.a.c.a.u;
import c.b.a.c.a.v;
import c.b.a.c.b.C0176a;
import c.b.a.c.b.G;
import c.b.a.c.b.n;
import c.b.a.c.b.y;
import c.b.a.d.b;
import c.b.a.d.e;
import com.lingc.notification.R;
import com.lingc.notification.ui.fragment.OtherFragment;
import com.lingc.notification.ui.intro.IntroActivity;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public boolean p = true;
    public Toolbar q;

    public void c(ComponentCallbacksC0070i componentCallbacksC0070i) {
        Toolbar toolbar;
        int i;
        this.p = false;
        if (componentCallbacksC0070i instanceof y) {
            this.p = true;
            toolbar = this.q;
            i = R.string.app_name;
        } else if (componentCallbacksC0070i instanceof n) {
            toolbar = this.q;
            i = R.string.perf_main_global_title;
        } else if (componentCallbacksC0070i instanceof C0176a) {
            toolbar = this.q;
            i = R.string.perf_main_floating_title;
        } else {
            if (!(componentCallbacksC0070i instanceof G)) {
                if (componentCallbacksC0070i instanceof OtherFragment) {
                    this.q.setTitle(R.string.about);
                    this.p = true;
                }
                C0063b c0063b = (C0063b) d().a();
                c0063b.a(R.id.main_fragment, componentCallbacksC0070i, null, 2);
                c0063b.a();
            }
            toolbar = this.q;
            i = R.string.perf_main_tile_title;
        }
        toolbar.setTitle(i);
        C0063b c0063b2 = (C0063b) d().a();
        c0063b2.a(R.id.main_fragment, componentCallbacksC0070i, null, 2);
        c0063b2.a();
    }

    public final void m() {
        l.a aVar = new l.a(this);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = aVar2.f1523a.getText(R.string.dialog_donation_title);
        aVar.a(R.string.dialog_donation_text);
        aVar.b(R.string.dialog_donate_btn, new v(this));
        aVar.a(R.string.dialog_donation_list_btn, new u(this));
        aVar.b();
    }

    @Override // com.lingc.notification.ui.activities.BaseActivity, a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        this.q = (Toolbar) findViewById(R.id.toolbar);
        a(this.q);
        c(new y());
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.fab);
        floatingActionButton.setOnClickListener(new q(this));
        floatingActionButton.b();
        ((BottomNavigationView) findViewById(R.id.main_bottom_nav)).setOnNavigationItemSelectedListener(new r(this, floatingActionButton));
        if (getSharedPreferences("appSettings", 0).getBoolean("autoUpdate", true)) {
            e eVar = new e(this);
            eVar.f1809b = "https://www.coolapk.com/apk/com.lingc.notification";
            eVar.f1810c = false;
            new Thread(new b(eVar)).start();
        }
        if (getSharedPreferences("appSettings", 0).getString("lastVersion", "0").equals("2.0.4") || TextUtils.isEmpty(getString(R.string.this_version_change_log))) {
            return;
        }
        l.a aVar = new l.a(this);
        aVar.f867a.f = "此版本的改动 - v2.0.4";
        String string = getString(R.string.this_version_change_log);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.h = string;
        aVar2.r = false;
        aVar.b(getString(R.string.dialog_close_btn), new s(this));
        aVar.b();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        menu.findItem(R.id.action_auto_update).setChecked(getSharedPreferences("appSettings", 0).getBoolean("autoUpdate", true));
        return true;
    }

    @Override // a.b.i.a.m, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        if (!this.p) {
            c(new y());
            return false;
        }
        if (l()) {
            return false;
        }
        finish();
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.action_about /* 2131296263 */:
                l.a aVar = new l.a(this);
                aVar.f867a.f = "Notification Listener";
                StringBuilder sbA = a.a("APPLICATION Service is live: ");
                sbA.append(c.b.a.d.a.a("com.lingc.notification.NotificationService", this));
                sbA.append("\nANDROID Service is live: ");
                sbA.append(c.b.a.d.a.a("com.android.systemui.statusbar.NotificationListener", this));
                sbA.append("\nMIUI Service is live: ");
                sbA.append(c.b.a.d.a.a("com.xiaomi.xmsf.push.service.notificationcollection.NotificationListener", this));
                sbA.append("\nLike Listener Service: ");
                sbA.append(c.b.a.d.a.a(this, "NotificationListener", true));
                sbA.append("\n\nLike Service process name: ");
                sbA.append(c.b.a.d.a.i);
                aVar.f867a.h = sbA.toString();
                aVar.b(R.string.dialog_close_btn, (DialogInterface.OnClickListener) null);
                t tVar = new t(this);
                AlertController.a aVar2 = aVar.f867a;
                aVar2.l = "Watch";
                aVar2.n = tVar;
                aVar.b();
                return true;
            case R.id.action_auto_update /* 2131296264 */:
                menuItem.setChecked(!menuItem.isChecked());
                getSharedPreferences("appSettings", 0).edit().putBoolean("autoUpdate", menuItem.isChecked()).apply();
                return true;
            case R.id.action_doate /* 2131296275 */:
                m();
                return true;
            case R.id.action_information /* 2131296277 */:
                startActivity(new Intent(this, (Class<?>) IntroActivity.class));
                finish();
                return true;
            default:
                return true;
        }
    }

    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
