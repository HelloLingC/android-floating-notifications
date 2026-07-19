package c.b.a.e.a;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakReference<f> f1813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f1814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static List<f> f1815c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static List<f> f1816d = new ArrayList();

    public static void a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f1816d);
        f1816d.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new Thread(new a((f) it.next())).start();
        }
    }
}
