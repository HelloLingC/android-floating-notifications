.class public Lc/b/a/e/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/e/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lc/b/a/e/b/f;


# direct methods
.method public constructor <init>(Lc/b/a/e/b/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget v2, p0, Lc/b/a/e/b/e;->a:I

    sub-int v2, v0, v2

    iget v3, p0, Lc/b/a/e/b/e;->b:I

    sub-int v3, p2, v3

    iput v0, p0, Lc/b/a/e/b/e;->a:I

    iput p2, p0, Lc/b/a/e/b/e;->b:I

    iget-object p2, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 1
    iget-object v0, p2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3
    iget-object p2, p2, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    .line 4
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    iget-boolean p2, p1, Lc/b/a/e/b/f;->j:Z

    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p1, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 7
    iget-object p2, p2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 8
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v0, "hozX"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 9
    iget-object p1, p1, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 11
    iget-object p2, p2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 12
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "hozY"

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p1, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 15
    iget-object p2, p2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 16
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v0, "x"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 17
    iget-object p1, p1, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 19
    iget-object p2, p2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 20
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "y"

    :goto_0
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    invoke-virtual {p1}, Lc/b/a/e/b/f;->a()V

    iget-object p1, p0, Lc/b/a/e/b/e;->c:Lc/b/a/e/b/f;

    .line 21
    iget-object p1, p1, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    const-string p2, "\u4fee\u6539\u6210\u529f"

    .line 22
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lc/b/a/e/b/e;->a:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lc/b/a/e/b/e;->b:I

    :goto_1
    return v1
.end method
