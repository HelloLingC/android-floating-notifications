.class public Lc/b/a/c/c/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/intro/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/lingc/notification/ui/intro/IntroActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/intro/IntroActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    iput-object p2, p0, Lc/b/a/c/c/f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0, p1}, Lcom/lingc/notification/ui/intro/IntroActivity;->a(Lcom/lingc/notification/ui/intro/IntroActivity;I)I

    iget-object v0, p0, Lc/b/a/c/c/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v1}, Lcom/lingc/notification/ui/intro/IntroActivity;->b(Lcom/lingc/notification/ui/intro/IntroActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->c(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->d(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->b(Lcom/lingc/notification/ui/intro/IntroActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->e(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->f(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->e(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->c(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->f(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->d(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->g(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->g(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/e/a/f;

    invoke-virtual {v1, v2}, Lc/b/a/e/a/f;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    sput-object v2, Lc/b/a/e/a/b;->a:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->g(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    sget-object v0, Lc/b/a/e/b/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1
    sget-object v0, Lc/b/a/e/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lc/b/a/e/b/g;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->h(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lc/b/a/c/c/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/c/a;

    .line 3
    iget-boolean v0, v0, Lc/b/a/c/c/a;->ba:Z

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->i(Lcom/lingc/notification/ui/intro/IntroActivity;)V

    :cond_5
    iget-object v0, p0, Lc/b/a/c/c/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/c/a;

    .line 5
    iget-boolean p1, p1, Lc/b/a/c/c/a;->ca:Z

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lc/b/a/c/c/f;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/intro/IntroActivity;->j(Lcom/lingc/notification/ui/intro/IntroActivity;)V

    :cond_6
    return-void
.end method
