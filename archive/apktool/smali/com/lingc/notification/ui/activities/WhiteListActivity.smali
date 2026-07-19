.class public Lcom/lingc/notification/ui/activities/WhiteListActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# instance fields
.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/WhiteListActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/WhiteListActivity;->m()V

    return-void
.end method

.method public static synthetic b(Lcom/lingc/notification/ui/activities/WhiteListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/lingc/notification/ui/activities/WhiteListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->q:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public final m()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "blackList"

    invoke-static {v1}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v7, Lc/b/a/b/a;

    invoke-direct {v7}, Lc/b/a/b/a;-><init>()V

    .line 1
    iput-object v5, v7, Lc/b/a/b/a;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v6, v7, Lc/b/a/b/a;->b:Ljava/lang/String;

    .line 3
    iput-object v4, v7, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 4
    iget-object v4, v7, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 6
    iput-boolean v4, v7, Lc/b/a/b/a;->d:Z

    .line 7
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    invoke-virtual {p0}, La/b/i/a/m;->i()La/b/i/a/a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, La/b/i/a/a;->c(Z)V

    :cond_0
    const p1, 0x7f090087

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->q:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    .line 1
    invoke-direct {v1, p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2
    iget-object v0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/c/a/B;

    invoke-direct {v1, p0, p1}, Lc/b/a/c/a/B;-><init>(Lcom/lingc/notification/ui/activities/WhiteListActivity;Landroid/widget/ProgressBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, La/b/i/a/m;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09001c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/support/v7/widget/SearchView;

    const-string v0, "\u8f93\u5165\u5e94\u7528\u540d\u79f0\u6216\u5305\u540d"

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    new-instance v0, Lc/b/a/c/a/C;

    invoke-direct {v0, p0}, Lc/b/a/c/a/C;-><init>(Lcom/lingc/notification/ui/activities/WhiteListActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$c;)V

    new-instance v0, Lc/b/a/c/a/D;

    invoke-direct {v0, p0}, Lc/b/a/c/a/D;-><init>(Lcom/lingc/notification/ui/activities/WhiteListActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09001d

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/b/a;

    iget-object v3, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "blackList"

    invoke-static {v4}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1
    :cond_2
    iget-boolean v6, v2, Lc/b/a/b/a;->d:Z

    if-eqz v6, :cond_3

    .line 2
    iget-object v6, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/a;

    .line 3
    iput-boolean v1, v3, Lc/b/a/b/a;->d:Z

    .line 4
    iget-object v2, v2, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/a;

    const/4 v6, 0x1

    .line 6
    iput-boolean v6, v3, Lc/b/a/b/a;->d:Z

    .line 7
    iget-object v2, v2, Lc/b/a/b/a;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v5, v4}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->q:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lc/b/a/a/b;

    iget-object v2, p0, Lcom/lingc/notification/ui/activities/WhiteListActivity;->p:Ljava/util/List;

    invoke-direct {v1, v2}, Lc/b/a/a/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
