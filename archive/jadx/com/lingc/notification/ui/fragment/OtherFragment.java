package com.lingc.notification.ui.fragment;

import a.b.h.a.ComponentCallbacksC0070i;
import a.b.i.f.p;
import android.os.Bundle;
import android.support.v7.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import c.b.a.c.b.A;
import c.b.a.c.b.B;
import c.b.a.c.b.D;
import c.b.a.c.b.E;
import c.b.a.c.b.F;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class OtherFragment extends ComponentCallbacksC0070i {

    public static class AboutFragment extends p {
        @Override // a.b.i.f.p
        public void a(Bundle bundle, String str) {
            c(R.xml.pref_other_about_lay);
            a("getSource").a((Preference.d) new A(this));
            a("update").a((Preference.d) new B(this));
            a("getBetaVersion").a((Preference.d) new D(this));
            a("faq").a((Preference.d) new E(this));
        }
    }

    public static class AuthorFragment extends p {
        @Override // a.b.i.f.p
        public void a(Bundle bundle, String str) {
            c(R.xml.pref_other_author_lay);
            a("version").a("2.0.4 (23)");
            a("version").a((Preference.d) new F(this));
            a("buildTime").a("2020-01-25 18:48:58");
        }
    }

    @Override // a.b.h.a.ComponentCallbacksC0070i
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_other, viewGroup, false);
    }
}
