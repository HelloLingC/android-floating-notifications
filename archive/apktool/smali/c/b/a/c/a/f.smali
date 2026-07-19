.class public Lc/b/a/c/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/a/g;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/g;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v6, Lc/b/a/e/b/f;

    invoke-direct {v6}, Lc/b/a/e/b/f;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v6, Lc/b/a/e/b/f;->i:Z

    iget-object v1, p0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    iget-object v1, v1, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-static {v1}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v6, Lc/b/a/e/b/f;->m:Z

    iput-boolean v0, v6, Lc/b/a/e/b/f;->j:Z

    :cond_0
    iget-object v0, p0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    iget-object v0, v0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-virtual {v0}, La/b/i/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    iget-object v0, v0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v2, "\u5c06\u6211\u62d6\u52a8\u5230\u6700\u4f73\u4f4d\u7f6e"

    const-string v3, "\u7136\u540e\u677e\u624b"

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    new-instance v0, Lc/b/a/c/a/e;

    invoke-direct {v0, p0}, Lc/b/a/c/a/e;-><init>(Lc/b/a/c/a/f;)V

    .line 1
    iput-object v0, v6, Lc/b/a/e/b/f;->r:Lc/b/a/e/b/f$a;

    .line 2
    iget-object v0, p0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    iget-object v0, v0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    return-void
.end method
