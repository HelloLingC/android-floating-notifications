package c.b.a.c.a;

import a.b.i.a.l;
import android.support.v7.app.AlertController;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import com.lingc.notification.R;
import com.lingc.notification.ui.activities.KeyPreventActivity;

/* JADX INFO: loaded from: classes.dex */
public class m implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayAdapter f1742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyPreventActivity f1743b;

    public m(KeyPreventActivity keyPreventActivity, ArrayAdapter arrayAdapter) {
        this.f1743b = keyPreventActivity;
        this.f1742a = arrayAdapter;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String str = (String) this.f1743b.p.get(i);
        EditText editText = new EditText(this.f1743b);
        editText.setText(str);
        l.a aVar = new l.a(this.f1743b);
        AlertController.a aVar2 = aVar.f867a;
        aVar2.f = "修改关键字";
        aVar2.z = editText;
        aVar2.y = 0;
        aVar2.E = false;
        aVar.b(R.string.action_edit, new l(this, i, editText));
        aVar.a(R.string.action_delete, new k(this, view, str));
        aVar.b();
    }
}
