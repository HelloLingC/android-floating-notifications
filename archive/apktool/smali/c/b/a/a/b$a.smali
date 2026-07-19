.class public Lc/b/a/a/b$a;
.super Landroid/support/v7/widget/RecyclerView$x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc/b/a/a/b$a;->t:Landroid/widget/ImageView;

    const v0, 0x7f090075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/a/b$a;->u:Landroid/widget/TextView;

    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/a/b$a;->v:Landroid/widget/TextView;

    const v0, 0x7f090073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lc/b/a/a/b$a;->w:Landroid/widget/CheckBox;

    return-void
.end method

.method public static synthetic a(Lc/b/a/a/b$a;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/b$a;->w:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static synthetic b(Lc/b/a/a/b$a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/b$a;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lc/b/a/a/b$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/b$a;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lc/b/a/a/b$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lc/b/a/a/b$a;->v:Landroid/widget/TextView;

    return-object p0
.end method
