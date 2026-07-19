.class public Lc/b/a/e/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public final synthetic b:Lc/b/a/e/a/f;


# direct methods
.method public synthetic constructor <init>(Lc/b/a/e/a/f;Lc/b/a/e/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/e/a/f$a;->b:Lc/b/a/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lc/b/a/e/a/f$a;->a:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Lc/b/a/e/a/f$a;->a:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lc/b/a/e/a/f$a;->b:Lc/b/a/e/a/f;

    .line 1
    iget-object v0, v0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget-object p2, p0, Lc/b/a/e/a/f$a;->b:Lc/b/a/e/a/f;

    invoke-virtual {p2, p1}, Lc/b/a/e/a/f;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lc/b/a/e/a/f$a;->a:F

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
