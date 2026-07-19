.class public Lc/b/a/e/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/e/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/e/a/f;


# direct methods
.method public constructor <init>(Lc/b/a/e/a/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/a/c;->a:Lc/b/a/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lc/b/a/e/a/c;->a:Lc/b/a/e/a/f;

    .line 1
    iget-object p1, p1, Lc/b/a/e/a/f;->q:Landroid/app/PendingIntent;

    .line 2
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    iget-object p1, p0, Lc/b/a/e/a/c;->a:Lc/b/a/e/a/f;

    iget-object v0, p0, Lc/b/a/e/a/c;->a:Lc/b/a/e/a/f;

    .line 3
    iget-object v0, v0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Lc/b/a/e/a/f;->a(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    return-void
.end method
