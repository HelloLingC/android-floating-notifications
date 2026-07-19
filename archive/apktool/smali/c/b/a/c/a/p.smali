.class public Lc/b/a/c/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/KeyPreventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, La/b/i/a/l$a;

    iget-object v1, p0, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {v0, v1}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u6dfb\u52a0\u5173\u952e\u5b57"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v2, "\u8bf7\u89c4\u8303\u586b\u5199\uff0c\u5426\u5219\u5c06\u4e0d\u4f1a\u751f\u6548"

    .line 2
    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    iput-object p1, v1, Landroid/support/v7/app/AlertController$a;->z:Landroid/view/View;

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/app/AlertController$a;->y:I

    iput-boolean v2, v1, Landroid/support/v7/app/AlertController$a;->E:Z

    .line 4
    new-instance v1, Lc/b/a/c/a/o;

    invoke-direct {v1, p0, p1}, Lc/b/a/c/a/o;-><init>(Lc/b/a/c/a/p;Landroid/widget/EditText;)V

    .line 5
    iget-object p1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u6dfb\u52a0"

    iput-object v2, p1, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const p1, 0x7f0f0037

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    new-instance p1, Lc/b/a/c/a/n;

    invoke-direct {p1, p0}, Lc/b/a/c/a/n;-><init>(Lc/b/a/c/a/p;)V

    .line 7
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u4f7f\u7528\u8bf4\u660e"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iput-object p1, v1, Landroid/support/v7/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method
