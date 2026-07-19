.class public Lcom/lingc/notification/ui/activities/ManagerActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 5

    const-string v0, "data"

    invoke-static {v0}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc/b/a/b/b;

    invoke-direct {v1}, Lc/b/a/b/b;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1
    iput-object v2, v1, Lc/b/a/b/b;->c:Ljava/lang/String;

    const-string v2, "\u65e0\u6570\u636e"

    .line 2
    iput-object v2, v1, Lc/b/a/b/b;->a:Ljava/lang/String;

    const-string v2, "\u65e0\u901a\u77e5\u5386\u53f2\u8bb0\u5f55"

    .line 3
    iput-object v2, v1, Lc/b/a/b/b;->b:Ljava/lang/String;

    const-string v2, "2004-11-23"

    .line 4
    iput-object v2, v1, Lc/b/a/b/b;->d:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const v1, 0x7f090088

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6
    invoke-direct {v2, p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v2, Lc/b/a/a/c;

    invoke-direct {v2, v0}, Lc/b/a/a/c;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    invoke-virtual {p0}, La/b/i/a/m;->i()La/b/i/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La/b/i/a/a;->c(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/ManagerActivity;->m()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, La/b/i/a/m;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f090016

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, La/b/b/a/a/a;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/data.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/ManagerActivity;->m()V

    const-string v0, "\u6e05\u9664\u6210\u529f"

    goto :goto_0

    :cond_1
    const-string v0, "\u6e05\u9664\u5931\u8d25\uff0c\u4f60\u786e\u5b9a\u6709\u6570\u636e\u5417\uff1f"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
