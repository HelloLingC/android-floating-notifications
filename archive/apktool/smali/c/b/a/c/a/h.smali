.class public Lc/b/a/c/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/ExceptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/ExceptionActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/ExceptionActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/h;->a:Lcom/lingc/notification/ui/activities/ExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lc/b/a/c/a/h;->a:Lcom/lingc/notification/ui/activities/ExceptionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
