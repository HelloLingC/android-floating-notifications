package c.b.a.d;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f1805a;

    public b(e eVar) {
        this.f1805a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strA;
        e eVar = this.f1805a;
        if (TextUtils.isEmpty(eVar.f1809b)) {
            return;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(eVar.f1809b).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            strA = eVar.a(httpURLConnection.getInputStream());
        } catch (MalformedURLException e) {
            e.printStackTrace();
            strA = "";
        } catch (IOException e2) {
            e2.printStackTrace();
            strA = "";
        } catch (NullPointerException e3) {
            e3.printStackTrace();
            strA = "";
        }
        try {
            int iIndexOf = strA.indexOf("class=\"list_app_info\">");
            int iIndexOf2 = strA.substring(iIndexOf).indexOf("</span></p>") + iIndexOf;
            int iIndexOf3 = strA.indexOf("<p class=\"apk_left_title_info\">");
            int iIndexOf4 = strA.substring(iIndexOf3).indexOf("</p>") + iIndexOf3;
            eVar.f1811d = strA.substring(iIndexOf, iIndexOf2).substring(22).replace("</p>", "").replace("</div>", "").trim();
            eVar.e = strA.substring(iIndexOf3, iIndexOf4).substring(31).replace("<br />", "").replace("<br/>", "").trim();
            new Handler(Looper.getMainLooper()).post(new c(eVar));
        } catch (StringIndexOutOfBoundsException e4) {
            e4.printStackTrace();
        }
    }
}
