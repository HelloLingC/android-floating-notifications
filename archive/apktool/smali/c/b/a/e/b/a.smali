.class public Lc/b/a/e/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/e/b/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lc/b/a/e/b/f;


# direct methods
.method public constructor <init>(Lc/b/a/e/b/f;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    iput-object p2, p0, Lc/b/a/e/b/a;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lc/b/a/e/b/a;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lc/b/a/e/b/a;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 1
    iget-boolean v0, v0, Lc/b/a/e/b/f;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/e/b/a;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/a/e/b/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lc/b/a/e/b/a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 3
    iget-object v2, v2, Lc/b/a/e/b/f;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/a/e/b/a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 5
    iget-object v2, v2, Lc/b/a/e/b/f;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 7
    iget-object v2, v2, Lc/b/a/e/b/f;->q:Landroid/view/View;

    .line 8
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 9
    iget-object v3, v2, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 10
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    iget-object v0, v2, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    .line 12
    invoke-interface {v0, p1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lc/b/a/e/b/a;->d:Lc/b/a/e/b/f;

    .line 13
    iget-boolean v0, p1, Lc/b/a/e/b/f;->n:Z

    xor-int/lit8 v0, v0, 0x1

    .line 14
    iput-boolean v0, p1, Lc/b/a/e/b/f;->n:Z

    return-void
.end method
