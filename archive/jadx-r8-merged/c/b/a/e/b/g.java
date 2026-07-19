package c.b.a.e.b;

import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f1844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static f f1845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static List<f> f1846c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static SparseBooleanArray f1847d = new SparseBooleanArray();
    public static List<f> e = new ArrayList();

    public static void a() {
        f1845b = null;
        f1844a = 0;
        f1847d.clear();
        for (f fVar : f1846c) {
            fVar.g.removeView(fVar.q);
            fVar.b();
        }
        f1846c.clear();
    }
}
