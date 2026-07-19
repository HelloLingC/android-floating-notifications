package d.a.a;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
public class b extends ViewOutlineProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f1856a;

    public b(c cVar) {
        this.f1856a = cVar;
    }

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public void getOutline(View view, Outline outline) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int width = view.getWidth();
        int height = view.getHeight();
        if (width == 0 || height == 0) {
            return;
        }
        c cVar = this.f1856a;
        if (cVar.B > 0 && cVar.C != 0) {
            c cVar2 = this.f1856a;
            int i6 = cVar2.C;
            if (i6 == 4) {
                i = 0 - cVar2.B;
            } else {
                if (i6 == 1) {
                    i2 = 0 - cVar2.B;
                    i3 = width;
                    i4 = height;
                    i5 = 0;
                    outline.setRoundRect(i5, i2, i3, i4, this.f1856a.B);
                    return;
                }
                if (i6 == 2) {
                    width += cVar2.B;
                } else if (i6 == 3) {
                    height += cVar2.B;
                }
                i = 0;
            }
            i5 = i;
            i3 = width;
            i4 = height;
            i2 = 0;
            outline.setRoundRect(i5, i2, i3, i4, this.f1856a.B);
            return;
        }
        c cVar3 = this.f1856a;
        int paddingTop = cVar3.Q;
        int iMax = Math.max(paddingTop + 1, height - cVar3.R);
        c cVar4 = this.f1856a;
        int paddingLeft = cVar4.O;
        int iMax2 = width - cVar4.P;
        if (cVar4.J) {
            paddingLeft += view.getPaddingLeft();
            paddingTop += view.getPaddingTop();
            iMax2 = Math.max(paddingLeft + 1, iMax2 - view.getPaddingRight());
            iMax = Math.max(paddingTop + 1, iMax - view.getPaddingBottom());
        }
        int i7 = iMax2;
        int i8 = iMax;
        int i9 = paddingTop;
        int i10 = paddingLeft;
        outline.setAlpha(this.f1856a.N);
        int i11 = this.f1856a.B;
        if (i11 <= 0) {
            outline.setRect(i10, i9, i7, i8);
        } else {
            outline.setRoundRect(i10, i9, i7, i8, i11);
        }
    }
}
