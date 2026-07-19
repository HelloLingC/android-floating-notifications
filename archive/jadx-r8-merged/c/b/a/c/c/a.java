package c.b.a.c.c;

import a.b.h.a.ComponentCallbacksC0070i;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.lingc.notification.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends ComponentCallbacksC0070i {
    public String Y;
    public int Z;
    public String aa;
    public boolean ba;
    public boolean ca;
    public int da;

    @Override // a.b.h.a.ComponentCallbacksC0070i
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_intro1, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.intro1_title_text);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.intro1_img);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.intro1_message_text);
        textView.setText(this.Y);
        imageView.setVisibility(this.da);
        if (this.da == 8) {
            textView2.setGravity(17);
        }
        imageView.setImageResource(this.Z);
        textView2.setText(this.aa);
        return viewInflate;
    }
}
