.class public Lc/b/a/e/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lc/b/a/e/a/d;->a:Lc/b/a/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/b/a/e/a/d;->a:Lc/b/a/e/a/f;

    iget-boolean v1, v0, Lc/b/a/e/a/f;->g:Z

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    .line 2
    iget-object v0, v0, Lc/b/a/e/a/f;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    .line 4
    new-instance v2, Lc/b/a/e/a/f$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lc/b/a/e/a/f$a;-><init>(Lc/b/a/e/a/f;Lc/b/a/e/a/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iget-object v0, p0, Lc/b/a/e/a/d;->a:Lc/b/a/e/a/f;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lc/b/a/e/a/f;->b:Z

    .line 6
    iget-object v1, v0, Lc/b/a/e/a/f;->c:Landroid/view/WindowManager;

    .line 7
    iget-object v2, v0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    .line 8
    iget-object v0, v0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    .line 9
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
