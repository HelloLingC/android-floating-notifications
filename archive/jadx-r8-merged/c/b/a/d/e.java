package c.b.a.d;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f1808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1811d;
    public String e;

    public e(Context context) {
        this.f1808a = context;
    }

    public final String a(InputStream inputStream) {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        String str = "";
        while (true) {
            try {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            str = str + line + "\n";
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return str;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                    try {
                        inputStreamReader.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    return str;
                }
            } catch (Throwable unused) {
                inputStreamReader.close();
                return str;
            }
        }
        inputStreamReader.close();
        return str;
    }
}
