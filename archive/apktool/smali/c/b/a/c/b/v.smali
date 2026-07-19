.class public Lc/b/a/c/b/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/w;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/w;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/w;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/v;->a:Lc/b/a/c/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v6, Lc/b/a/e/a/f;

    iget-object v0, p0, Lc/b/a/c/b/v;->a:Lc/b/a/c/b/w;

    iget-object v0, v0, Lc/b/a/c/b/w;->a:Lc/b/a/c/b/y;

    invoke-virtual {v0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v0

    invoke-direct {v6, v0}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string v2, "\u8fd9\u662f\u4e00\u6761\u6d4b\u8bd5\u901a\u77e5"

    const-string v3, "\u8fd9\u91cc\u662f\u901a\u77e5\u63cf\u8ff0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/a/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Lc/b/a/e/a/f;->b()V

    return-void
.end method
