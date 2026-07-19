package c.b.a.a;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.lingc.notification.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends RecyclerView.a<a> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c.b.a.b.a> f1702c;

    static class a extends RecyclerView.x {
        public ImageView t;
        public TextView u;
        public TextView v;
        public CheckBox w;

        public a(View view) {
            super(view);
            this.t = (ImageView) view.findViewById(R.id.item_app_icon_img);
            this.u = (TextView) view.findViewById(R.id.item_app_name_text);
            this.v = (TextView) view.findViewById(R.id.item_app_package_text);
            this.w = (CheckBox) view.findViewById(R.id.item_app_checkbox);
        }
    }

    public b(List<c.b.a.b.a> list) {
        this.f1702c = list;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int a() {
        return this.f1702c.size();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void b(RecyclerView.x xVar, int i) {
        a aVar = (a) xVar;
        c.b.a.b.a aVar2 = this.f1702c.get(i);
        aVar.t.setImageDrawable(aVar2.f1707a);
        aVar.u.setText(aVar2.a());
        aVar.v.setText(aVar2.f1709c);
        aVar.w.setChecked(aVar2.b());
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public RecyclerView.x b(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_app, viewGroup, false);
        a aVar = new a(viewInflate);
        viewInflate.setOnClickListener(new c.b.a.a.a(this, aVar));
        return aVar;
    }
}
