.class public Lc/b/a/c/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/p;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/a/p;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/p;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/n;->a:Lc/b/a/c/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lc/b/a/c/a/n;->a:Lc/b/a/c/a/p;

    iget-object p1, p1, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-virtual {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->m()V

    return-void
.end method
