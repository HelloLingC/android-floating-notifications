.class public Lc/b/a/e/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lc/b/a/e/b/c;->a:Lc/b/a/e/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/b/a/e/b/c;->a:Lc/b/a/e/b/f;

    .line 1
    iget-object v1, v0, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    .line 2
    iget-object v2, v0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    .line 3
    iget-object v0, v0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 4
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lc/b/a/e/b/c;->a:Lc/b/a/e/b/f;

    iget-boolean v1, v0, Lc/b/a/e/b/f;->i:Z

    if-nez v1, :cond_0

    sget-object v1, Lc/b/a/e/b/g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
