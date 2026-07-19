.class public Lc/b/a/c/b/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/y;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/y;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/y;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/x;->a:Lc/b/a/c/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    new-instance p1, Lc/b/a/e/b/f;

    invoke-direct {p1}, Lc/b/a/e/b/f;-><init>()V

    iget-object v0, p0, Lc/b/a/c/b/x;->a:Lc/b/a/c/b/y;

    invoke-virtual {v0}, La/b/h/a/i;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lc/b/a/c/b/x;->a:Lc/b/a/c/b/y;

    invoke-virtual {v0}, La/b/h/a/i;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v2, "Title"

    const-string v3, "Message"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    sget-object v0, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 1
    iput-object v0, p1, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/x;->a:Lc/b/a/c/b/y;

    invoke-virtual {v0}, La/b/h/a/i;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1
.end method
