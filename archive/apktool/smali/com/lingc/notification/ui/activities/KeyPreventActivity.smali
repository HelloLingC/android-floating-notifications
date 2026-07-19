.class public Lcom/lingc/notification/ui/activities/KeyPreventActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# instance fields
.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public m()V
    .locals 3

    new-instance v0, La/b/i/a/l$a;

    invoke-direct {v0, p0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u4f7f\u7528\u8bf4\u660e"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f0046

    .line 2
    invoke-virtual {v0, v1}, La/b/i/a/l$a;->a(I)La/b/i/a/l$a;

    const/4 v1, 0x0

    .line 3
    iget-object v2, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    iput-boolean v1, v2, Landroid/support/v7/app/AlertController$a;->r:Z

    const v1, 0x7f0f0038

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    invoke-virtual {p0}, La/b/i/a/m;->i()La/b/i/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La/b/i/a/a;->c(Z)V

    :cond_0
    const-string p1, "keys"

    invoke-static {p1}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->m()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    const-string v2, "or: \u4e0b\u8f7d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    const-string v2, "or: %"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    invoke-static {v1, p1}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->p:Ljava/util/List;

    invoke-direct {p1, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lc/b/a/c/a/m;

    invoke-direct {v1, p0, p1}, Lc/b/a/c/a/m;-><init>(Lcom/lingc/notification/ui/activities/KeyPreventActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f09007c

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lc/b/a/c/a/p;

    invoke-direct {v0, p0}, Lc/b/a/c/a/p;-><init>(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
