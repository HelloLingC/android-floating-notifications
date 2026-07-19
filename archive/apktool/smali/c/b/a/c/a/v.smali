.class public Lc/b/a/c/a/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/MainActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/v;->a:Lcom/lingc/notification/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/a/v;->a:Lcom/lingc/notification/ui/activities/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/lingc/notification/ui/activities/DoateActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
