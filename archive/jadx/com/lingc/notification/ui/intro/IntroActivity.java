package com.lingc.notification.ui.intro;

import a.b.h.a.AbstractC0076o;
import a.b.h.a.AbstractC0086z;
import a.b.i.a.AbstractC0093a;
import a.b.i.a.m;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import c.b.a.c.c.b;
import c.b.a.c.c.c;
import c.b.a.c.c.d;
import c.b.a.c.c.e;
import c.b.a.c.c.g;
import c.b.a.c.c.h;
import c.b.a.c.c.i;
import c.b.a.c.c.j;
import c.b.a.e.a.f;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.MainActivity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntroActivity extends m {
    public int o;
    public TextView p;
    public TextView q;
    public ImageView r;
    public ImageView s;
    public List<f> t = new ArrayList();
    public List<c.b.a.e.b.f> u = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public class a extends AbstractC0086z {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public List<c.b.a.c.c.a> f1853d;

        public a(IntroActivity introActivity, AbstractC0076o abstractC0076o, List<c.b.a.c.c.a> list) {
            super(abstractC0076o);
            this.f1853d = list;
        }

        @Override // a.b.h.j.n
        public int a() {
            return this.f1853d.size();
        }
    }

    public final void l() {
        startActivity(new Intent(this, (Class<?>) MainActivity.class));
        getSharedPreferences("appSettings", 0).edit().putBoolean("isFirstBoot", false).apply();
        Toast.makeText(this, "你仍可在右上角的菜单内查看使用说明", 1).show();
        finish();
    }

    public final void m() {
        f fVar = new f(this);
        new Thread(new g(this, fVar)).start();
        this.t.add(fVar);
        f fVar2 = new f(this);
        new Thread(new h(this, fVar2)).start();
        this.t.add(fVar2);
        f fVar3 = new f(this);
        new Thread(new i(this, fVar3)).start();
        this.t.add(fVar3);
    }

    public final void n() {
        new Thread(new j(this)).start();
    }

    @Override // a.b.i.a.m, a.b.h.a.ActivityC0072k, a.b.h.a.ha, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_intro);
        AbstractC0093a abstractC0093aI = i();
        if (abstractC0093aI != null) {
            abstractC0093aI.e();
        }
        ViewPager viewPager = (ViewPager) findViewById(R.id.introac_view_pager);
        ArrayList arrayList = new ArrayList();
        c.b.a.c.c.a aVar = new c.b.a.c.c.a();
        aVar.Y = "Simple guide to help you know about this app!";
        aVar.Z = R.mipmap.ic_launcher;
        aVar.aa = getString(R.string.first_infomation);
        arrayList.add(aVar);
        c.b.a.c.c.a aVar2 = new c.b.a.c.c.a();
        aVar2.Y = "默认模式";
        aVar2.ba = true;
        aVar2.aa = getString(R.string.first_intro_floating);
        arrayList.add(aVar2);
        c.b.a.c.c.a aVar3 = new c.b.a.c.c.a();
        aVar3.Y = "磁贴模式";
        aVar3.ca = true;
        aVar3.aa = getString(R.string.first_intro_tile);
        arrayList.add(aVar3);
        c.b.a.c.c.a aVar4 = new c.b.a.c.c.a();
        aVar4.Y = "设置";
        aVar4.da = 8;
        aVar4.aa = getString(R.string.first_intro_setting);
        arrayList.add(aVar4);
        viewPager.setAdapter(new a(this, d(), arrayList));
        this.p = (TextView) findViewById(R.id.introac_skip_btn);
        this.r = (ImageView) findViewById(R.id.introac_back_btn);
        this.s = (ImageView) findViewById(R.id.introac_next_btn);
        this.q = (TextView) findViewById(R.id.introac_done_btn);
        this.p.setOnClickListener(new b(this));
        this.q.setOnClickListener(new c(this));
        this.r.setOnClickListener(new d(this, viewPager));
        this.s.setOnClickListener(new e(this, viewPager));
        viewPager.a(new c.b.a.c.c.f(this, arrayList));
    }
}
