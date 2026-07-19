.class public Lc/b/a/a/c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lc/b/a/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lc/b/a/a/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lc/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 2

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lc/b/a/a/c;->d:Landroid/content/Context;

    iget-object p2, p0, Lc/b/a/a/c;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0038

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lc/b/a/a/c$a;

    invoke-direct {p2, p0, p1}, Lc/b/a/a/c$a;-><init>(Lc/b/a/a/c;Landroid/view/View;)V

    return-object p2
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 2

    check-cast p1, Lc/b/a/a/c$a;

    .line 1
    iget-object v0, p0, Lc/b/a/a/c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/b/b;

    iget-object v0, p0, Lc/b/a/a/c;->d:Landroid/content/Context;

    .line 2
    iget-object v1, p2, Lc/b/a/b/b;->c:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, La/b/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lc/b/a/a/c$a;->a(Lc/b/a/a/c$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lc/b/a/a/c$a;->b(Lc/b/a/a/c$a;)Landroid/widget/TextView;

    move-result-object v0

    .line 4
    iget-object v1, p2, Lc/b/a/b/b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lc/b/a/a/c$a;->c(Lc/b/a/a/c$a;)Landroid/widget/TextView;

    move-result-object v0

    .line 6
    iget-object v1, p2, Lc/b/a/b/b;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lc/b/a/a/c$a;->d(Lc/b/a/a/c$a;)Landroid/widget/TextView;

    move-result-object p1

    .line 8
    iget-object p2, p2, Lc/b/a/b/b;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
