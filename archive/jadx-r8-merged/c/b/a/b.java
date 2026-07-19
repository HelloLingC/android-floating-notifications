package c.b.a;

import android.content.Context;
import android.content.Intent;
import com.lingc.notification.ui.activities.ExceptionActivity;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

/* JADX INFO: loaded from: classes.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f1705a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f1706b;

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
        Intent intent = new Intent(this.f1706b, (Class<?>) ExceptionActivity.class);
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        do {
            th.printStackTrace(printWriter);
            th = th.getCause();
        } while (th != null);
        printWriter.close();
        intent.putExtra("message", stringWriter.toString());
        intent.addFlags(268435456);
        this.f1706b.startActivity(intent);
        System.exit(0);
    }
}
