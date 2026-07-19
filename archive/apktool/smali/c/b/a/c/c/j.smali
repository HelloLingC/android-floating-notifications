.class public Lc/b/a/c/c/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/intro/IntroActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/intro/IntroActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/intro/IntroActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    new-instance v6, Lc/b/a/e/b/f;

    invoke-direct {v6}, Lc/b/a/e/b/f;-><init>()V

    iget-object v0, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v0}, La/b/i/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0e0004

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "Title"

    const-string v3, "Message"

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    sget-object v0, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 1
    iput-object v0, v6, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v6, Lc/b/a/e/b/f;->k:Z

    iget-object v1, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v6, v1}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    new-instance v1, Lc/b/a/e/b/f;

    invoke-direct {v1}, Lc/b/a/e/b/f;-><init>()V

    iget-object v2, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v2}, La/b/i/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v13, 0x0

    const-string v10, "Title"

    const-string v11, "Message"

    const-string v12, ""

    move-object v8, v1

    invoke-virtual/range {v8 .. v13}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    iput-boolean v0, v1, Lc/b/a/e/b/f;->k:Z

    iput-boolean v0, v1, Lc/b/a/e/b/f;->l:Z

    sget-object v2, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 3
    iput-object v2, v1, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 4
    iget-object v2, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v1, v2}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    new-instance v1, Lc/b/a/e/b/f;

    invoke-direct {v1}, Lc/b/a/e/b/f;-><init>()V

    iget-object v2, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v2}, La/b/i/a/m;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v13, 0x0

    const-string v10, "Title"

    const-string v11, "Message"

    const-string v12, ""

    move-object v8, v1

    invoke-virtual/range {v8 .. v13}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    iput-boolean v0, v1, Lc/b/a/e/b/f;->k:Z

    sget-object v0, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 5
    iput-object v0, v1, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 6
    iget-object v0, p0, Lc/b/a/c/c/j;->a:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-virtual {v1, v0}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    return-void
.end method
