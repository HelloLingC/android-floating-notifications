.class public Lc/b/a/c/a/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/B;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/a/B;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/B;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/A;->a:Lc/b/a/c/a/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lc/b/a/a/b;

    iget-object v1, p0, Lc/b/a/c/a/A;->a:Lc/b/a/c/a/B;

    iget-object v1, v1, Lc/b/a/c/a/B;->b:Lcom/lingc/notification/ui/activities/WhiteListActivity;

    invoke-static {v1}, Lcom/lingc/notification/ui/activities/WhiteListActivity;->b(Lcom/lingc/notification/ui/activities/WhiteListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/a/b;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lc/b/a/c/a/A;->a:Lc/b/a/c/a/B;

    iget-object v1, v1, Lc/b/a/c/a/B;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lc/b/a/c/a/A;->a:Lc/b/a/c/a/B;

    iget-object v1, v1, Lc/b/a/c/a/B;->b:Lcom/lingc/notification/ui/activities/WhiteListActivity;

    invoke-static {v1}, Lcom/lingc/notification/ui/activities/WhiteListActivity;->c(Lcom/lingc/notification/ui/activities/WhiteListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method
