.class public Lc/b/a/c/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/EditPosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/EditPosActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/EditPosActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lc/b/a/c/a/f;

    invoke-direct {v0, p0}, Lc/b/a/c/a/f;-><init>(Lc/b/a/c/a/g;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
