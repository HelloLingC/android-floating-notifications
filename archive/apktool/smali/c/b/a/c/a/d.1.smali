.class public Lc/b/a/c/a/d;
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

    iput-object p1, p0, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/c/a/c;

    invoke-direct {v1, p0}, Lc/b/a/c/a/c;-><init>(Lc/b/a/c/a/d;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    const-string v1, "\u62d6\u52a8\u5230\u6700\u4f73\u4f4d\u7f6e\u7136\u540e\u677e\u624b"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
