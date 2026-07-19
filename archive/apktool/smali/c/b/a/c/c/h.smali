.class public Lc/b/a/c/c/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/intro/IntroActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/e/a/f;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/intro/IntroActivity;Lc/b/a/e/a/f;)V
    .locals 0

    iput-object p2, p0, Lc/b/a/c/c/h;->a:Lc/b/a/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/b/a/c/c/h;->a:Lc/b/a/e/a/f;

    const/4 v1, 0x0

    const-string v2, "\u8fd9\u662f\u4e00\u6761\u6d4b\u8bd5\u901a\u77e5"

    const-string v3, "\u8fd9\u91cc\u662f\u901a\u77e5\u63cf\u8ff0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e/a/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lc/b/a/c/c/h;->a:Lc/b/a/e/a/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/b/a/e/a/f;->i:Z

    invoke-virtual {v0}, Lc/b/a/e/a/f;->b()V

    return-void
.end method
