.class public Lc/b/a/c/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/a/d;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/c;->a:Lc/b/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v6, Lc/b/a/e/a/f;

    iget-object v0, p0, Lc/b/a/c/a/c;->a:Lc/b/a/c/a/d;

    iget-object v0, v0, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-direct {v6, v0}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, v6, Lc/b/a/e/a/f;->g:Z

    iget-object v1, p0, Lc/b/a/c/a/c;->a:Lc/b/a/c/a/d;

    iget-object v1, v1, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-static {v1}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v6, Lc/b/a/e/a/f;->l:Z

    iput-boolean v0, v6, Lc/b/a/e/a/f;->h:Z

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "\u5c06\u6211\u62d6\u52a8\u5230\u6700\u4f73\u4f4d\u7f6e"

    const-string v3, "\u7136\u540e\u677e\u624b"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/a/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    new-instance v0, Lc/b/a/c/a/b;

    invoke-direct {v0, p0}, Lc/b/a/c/a/b;-><init>(Lc/b/a/c/a/c;)V

    .line 1
    iput-object v0, v6, Lc/b/a/e/a/f;->r:Lc/b/a/e/a/f$b;

    .line 2
    invoke-virtual {v6}, Lc/b/a/e/a/f;->b()V

    return-void
.end method
