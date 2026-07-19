.class public Lc/b/a/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lc/b/a/a/b$a;

.field public final synthetic b:Lc/b/a/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/a/b;Lc/b/a/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a/a;->b:Lc/b/a/a/b;

    iput-object p2, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lc/b/a/a/a;->b:Lc/b/a/a/b;

    .line 1
    iget-object p1, p1, Lc/b/a/a/b;->c:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->c()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/b/a;

    const-string v0, "blackList"

    invoke-static {v0}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    :cond_0
    iget-object v2, p1, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    iget-object p1, p1, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/a/a/a;->b:Lc/b/a/a/b;

    .line 7
    iget-object p1, p1, Lc/b/a/a/b;->c:Ljava/util/List;

    .line 8
    iget-object v2, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->c()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/b/a;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p1, Lc/b/a/b/a;->d:Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p1, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/a/a/a;->b:Lc/b/a/a/b;

    .line 12
    iget-object p1, p1, Lc/b/a/a/b;->c:Ljava/util/List;

    .line 13
    iget-object v2, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->c()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/b/a;

    .line 14
    iput-boolean v3, p1, Lc/b/a/b/a;->d:Z

    .line 15
    :goto_0
    invoke-static {v1, v0}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-static {p1}, Lc/b/a/a/b$a;->a(Lc/b/a/a/b$a;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/a/a;->a:Lc/b/a/a/b$a;

    invoke-static {v0}, Lc/b/a/a/b$a;->a(Lc/b/a/a/b$a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
