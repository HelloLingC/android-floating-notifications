.class public Ld/a/a/b;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/a/c;->a(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/a/a/c;


# direct methods
.method public constructor <init>(Ld/a/a/c;)V
    .locals 0

    iput-object p1, p0, Ld/a/a/b;->a:Ld/a/a/c;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 1
    iget v3, v2, Ld/a/a/c;->B:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    iget v2, v2, Ld/a/a/c;->C:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 2
    iget-object p1, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 3
    iget v2, p1, Ld/a/a/c;->C:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 4
    iget p1, p1, Ld/a/a/c;->B:I

    rsub-int/lit8 p1, p1, 0x0

    goto :goto_2

    :cond_2
    if-ne v2, v4, :cond_3

    iget p1, p1, Ld/a/a/c;->B:I

    rsub-int/lit8 p1, p1, 0x0

    move v8, p1

    move v9, v0

    move v10, v1

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget p1, p1, Ld/a/a/c;->B:I

    add-int/2addr v0, p1

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget p1, p1, Ld/a/a/c;->B:I

    add-int/2addr v1, p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    :goto_2
    move v7, p1

    move v9, v0

    move v10, v1

    const/4 v8, 0x0

    .line 5
    :goto_3
    iget-object p1, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 6
    iget p1, p1, Ld/a/a/c;->B:I

    int-to-float v11, p1

    move-object v6, p2

    .line 7
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_6
    iget-object v2, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 8
    iget v3, v2, Ld/a/a/c;->Q:I

    add-int/lit8 v4, v3, 0x1

    .line 9
    iget v2, v2, Ld/a/a/c;->R:I

    sub-int/2addr v1, v2

    .line 10
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 11
    iget v4, v2, Ld/a/a/c;->O:I

    .line 12
    iget v5, v2, Ld/a/a/c;->P:I

    sub-int/2addr v0, v5

    .line 13
    iget-boolean v2, v2, Ld/a/a/c;->J:Z

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    move v8, v0

    move v9, v1

    move v7, v3

    move v6, v4

    iget-object p1, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 15
    iget p1, p1, Ld/a/a/c;->N:F

    .line 16
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p1, p0, Ld/a/a/b;->a:Ld/a/a/c;

    .line 17
    iget p1, p1, Ld/a/a/c;->B:I

    if-gtz p1, :cond_8

    .line 18
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_4

    :cond_8
    int-to-float v10, p1

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_9
    :goto_4
    return-void
.end method
