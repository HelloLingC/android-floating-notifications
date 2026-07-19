.class public Lc/b/a/e/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/e/b/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/e/b/f;


# direct methods
.method public constructor <init>(Lc/b/a/e/b/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/b/b;->a:Lc/b/a/e/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    sget-boolean p1, Lc/b/a/d/a;->h:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lc/b/a/e/b/b;->a:Lc/b/a/e/b/f;

    .line 1
    iget-object p1, p1, Lc/b/a/e/b/f;->e:Landroid/app/PendingIntent;

    .line 2
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    iget-object p1, p0, Lc/b/a/e/b/b;->a:Lc/b/a/e/b/f;

    invoke-virtual {p1}, Lc/b/a/e/b/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
