.class public Lc/b/a/c/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/m;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/b/a/c/a/m;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/m;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/k;->c:Lc/b/a/c/a/m;

    iput-object p2, p0, Lc/b/a/c/a/k;->a:Landroid/view/View;

    iput-object p3, p0, Lc/b/a/c/a/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lc/b/a/c/a/k;->a:Landroid/view/View;

    const-string p2, "\u662f\u5426\u8981\u5220\u9664\uff1a"

    invoke-static {p2}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lc/b/a/c/a/k;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    new-instance p2, Lc/b/a/c/a/j;

    invoke-direct {p2, p0}, Lc/b/a/c/a/j;-><init>(Lc/b/a/c/a/k;)V

    .line 1
    iget-object v1, p1, Landroid/support/design/widget/BaseTransientBottomBar;->f:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/SnackbarContentLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    const-string v2, "\u5220\u9664"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/support/design/widget/Snackbar;->o:Z

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, La/b/d/l/L;

    invoke-direct {v0, p1, p2}, La/b/d/l/L;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v0, p1, Landroid/support/design/widget/Snackbar;->o:Z

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->f()V

    return-void
.end method
