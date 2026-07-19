package c.b.a.a;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lingc.notification.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends RecyclerView.a<a> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c.b.a.b.b> f1703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f1704d;

    class a extends RecyclerView.x {
        public ImageView t;
        public TextView u;
        public TextView v;
        public TextView w;

        public a(c cVar, View view) {
            super(view);
            this.t = (ImageView) view.findViewById(R.id.item_notification_icon_img);
            this.u = (TextView) view.findViewById(R.id.item_notification_title_text);
            this.v = (TextView) view.findViewById(R.id.item_notification_content_text);
            this.w = (TextView) view.findViewById(R.id.item_notification_time_text);
        }
    }

    public c(List<c.b.a.b.b> list) {
        this.f1703c = list;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public int a() {
        return this.f1703c.size();
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public void b(RecyclerView.x xVar, int i) {
        a aVar = (a) xVar;
        c.b.a.b.b bVar = this.f1703c.get(i);
        aVar.t.setImageDrawable(a.b.b.a.a.a.b(this.f1704d, bVar.f1713c));
        aVar.u.setText(bVar.f1711a);
        aVar.v.setText(bVar.f1712b);
        aVar.w.setText(bVar.f1714d);
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public RecyclerView.x b(ViewGroup viewGroup, int i) {
        this.f1704d = viewGroup.getContext();
        return new a(this, LayoutInflater.from(this.f1704d).inflate(R.layout.item_notification, viewGroup, false));
    }
}
