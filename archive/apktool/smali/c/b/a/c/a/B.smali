.class public Lc/b/a/c/a/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/WhiteListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ProgressBar;

.field public final synthetic b:Lcom/lingc/notification/ui/activities/WhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/WhiteListActivity;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/B;->b:Lcom/lingc/notification/ui/activities/WhiteListActivity;

    iput-object p2, p0, Lc/b/a/c/a/B;->a:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/b/a/c/a/B;->b:Lcom/lingc/notification/ui/activities/WhiteListActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/activities/WhiteListActivity;->a(Lcom/lingc/notification/ui/activities/WhiteListActivity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc/b/a/c/a/A;

    invoke-direct {v1, p0}, Lc/b/a/c/a/A;-><init>(Lc/b/a/c/a/B;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
