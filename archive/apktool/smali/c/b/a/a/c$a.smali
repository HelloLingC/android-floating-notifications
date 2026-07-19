.class public Lc/b/a/a/c$a;
.super Landroid/support/v7/widget/RecyclerView$x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lc/b/a/a/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const p1, 0x7f090078

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/a/a/c$a;->t:Landroid/widget/ImageView;

    const p1, 0x7f09007a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/a/a/c$a;->u:Landroid/widget/TextView;

    const p1, 0x7f090077

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/a/a/c$a;->v:Landroid/widget/TextView;

    const p1, 0x7f090079

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/a/a/c$a;->w:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lc/b/a/a/c$a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/c$a;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b(Lc/b/a/a/c$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/c$a;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic c(Lc/b/a/a/c$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/c$a;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lc/b/a/a/c$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/c$a;->w:Landroid/widget/TextView;

    return-object p0
.end method
