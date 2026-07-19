.class public Ld/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/a/a/a;


# instance fields
.field public A:Landroid/graphics/PorterDuffXfermode;

.field public B:I

.field public C:I

.field public D:[F

.field public E:Landroid/graphics/RectF;

.field public F:I

.field public G:I

.field public H:I

.field public I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public J:Z

.field public K:Landroid/graphics/Path;

.field public L:Z

.field public M:I

.field public N:F

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Landroid/graphics/Paint;

.field public z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld/a/a/c;->a:I

    iput v0, p0, Ld/a/a/c;->b:I

    iput v0, p0, Ld/a/a/c;->c:I

    iput v0, p0, Ld/a/a/c;->d:I

    iput v0, p0, Ld/a/a/c;->e:I

    iput v0, p0, Ld/a/a/c;->f:I

    iput v0, p0, Ld/a/a/c;->g:I

    const/16 v1, 0xff

    iput v1, p0, Ld/a/a/c;->i:I

    iput v0, p0, Ld/a/a/c;->j:I

    iput v0, p0, Ld/a/a/c;->k:I

    iput v0, p0, Ld/a/a/c;->l:I

    iput v1, p0, Ld/a/a/c;->n:I

    iput v0, p0, Ld/a/a/c;->o:I

    iput v0, p0, Ld/a/a/c;->p:I

    iput v0, p0, Ld/a/a/c;->q:I

    iput v1, p0, Ld/a/a/c;->s:I

    iput v0, p0, Ld/a/a/c;->t:I

    iput v0, p0, Ld/a/a/c;->u:I

    iput v0, p0, Ld/a/a/c;->v:I

    iput v1, p0, Ld/a/a/c;->x:I

    iput v0, p0, Ld/a/a/c;->C:I

    iput v0, p0, Ld/a/a/c;->F:I

    const/4 v1, 0x1

    iput v1, p0, Ld/a/a/c;->G:I

    iput v0, p0, Ld/a/a/c;->H:I

    iput-boolean v0, p0, Ld/a/a/c;->J:Z

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Ld/a/a/c;->K:Landroid/graphics/Path;

    iput-boolean v1, p0, Ld/a/a/c;->L:Z

    iput v0, p0, Ld/a/a/c;->M:I

    const/4 v2, 0x0

    iput v2, p0, Ld/a/a/c;->N:F

    iput v0, p0, Ld/a/a/c;->O:I

    iput v0, p0, Ld/a/a/c;->P:I

    iput v0, p0, Ld/a/a/c;->Q:I

    iput v0, p0, Ld/a/a/c;->R:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Ld/a/a/c;->I:Ljava/lang/ref/WeakReference;

    const p4, -0xffff01

    iput p4, p0, Ld/a/a/c;->h:I

    iput p4, p0, Ld/a/a/c;->m:I

    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p4, p0, Ld/a/a/c;->A:Landroid/graphics/PorterDuffXfermode;

    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Ld/a/a/c;->z:Landroid/graphics/Paint;

    iget-object p4, p0, Ld/a/a/c;->z:Landroid/graphics/Paint;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Ld/a/a/c;->E:Landroid/graphics/RectF;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p4, Ld/a/a/d;->ShadowLayout:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge p3, p2, :cond_23

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Ld/a/a/d;->ShadowLayout_android_maxHeight:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Ld/a/a/c;->a:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->a:I

    goto/16 :goto_2

    :cond_2
    if-ne v2, v3, :cond_3

    iget v3, p0, Ld/a/a/c;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->b:I

    goto/16 :goto_2

    :cond_3
    sget v3, Ld/a/a/d;->ShadowLayout_android_minWidth:I

    if-ne v2, v3, :cond_4

    iget v3, p0, Ld/a/a/c;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->c:I

    goto/16 :goto_2

    :cond_4
    sget v3, Ld/a/a/d;->ShadowLayout_android_minHeight:I

    if-ne v2, v3, :cond_5

    iget v3, p0, Ld/a/a/c;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->d:I

    goto/16 :goto_2

    :cond_5
    sget v3, Ld/a/a/d;->ShadowLayout_l_topDividerColor:I

    if-ne v2, v3, :cond_6

    iget v3, p0, Ld/a/a/c;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->h:I

    goto/16 :goto_2

    :cond_6
    sget v3, Ld/a/a/d;->ShadowLayout_l_topDividerHeight:I

    if-ne v2, v3, :cond_7

    iget v3, p0, Ld/a/a/c;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->e:I

    goto/16 :goto_2

    :cond_7
    sget v3, Ld/a/a/d;->ShadowLayout_l_topDividerInsetLeft:I

    if-ne v2, v3, :cond_8

    iget v3, p0, Ld/a/a/c;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->f:I

    goto/16 :goto_2

    :cond_8
    sget v3, Ld/a/a/d;->ShadowLayout_l_topDividerInsetRight:I

    if-ne v2, v3, :cond_9

    iget v3, p0, Ld/a/a/c;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->g:I

    goto/16 :goto_2

    :cond_9
    sget v3, Ld/a/a/d;->ShadowLayout_l_bottomDividerColor:I

    if-ne v2, v3, :cond_a

    iget v3, p0, Ld/a/a/c;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->m:I

    goto/16 :goto_2

    :cond_a
    sget v3, Ld/a/a/d;->ShadowLayout_l_bottomDividerHeight:I

    if-ne v2, v3, :cond_b

    iget v3, p0, Ld/a/a/c;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->j:I

    goto/16 :goto_2

    :cond_b
    sget v3, Ld/a/a/d;->ShadowLayout_l_bottomDividerInsetLeft:I

    if-ne v2, v3, :cond_c

    iget v3, p0, Ld/a/a/c;->k:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->k:I

    goto/16 :goto_2

    :cond_c
    sget v3, Ld/a/a/d;->ShadowLayout_l_bottomDividerInsetRight:I

    if-ne v2, v3, :cond_d

    iget v3, p0, Ld/a/a/c;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->l:I

    goto/16 :goto_2

    :cond_d
    sget v3, Ld/a/a/d;->ShadowLayout_l_leftDividerColor:I

    if-ne v2, v3, :cond_e

    iget v3, p0, Ld/a/a/c;->r:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->r:I

    goto/16 :goto_2

    :cond_e
    sget v3, Ld/a/a/d;->ShadowLayout_l_leftDividerWidth:I

    if-ne v2, v3, :cond_f

    iget v3, p0, Ld/a/a/c;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->o:I

    goto/16 :goto_2

    :cond_f
    sget v3, Ld/a/a/d;->ShadowLayout_l_leftDividerInsetTop:I

    if-ne v2, v3, :cond_10

    iget v3, p0, Ld/a/a/c;->p:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->p:I

    goto/16 :goto_2

    :cond_10
    sget v3, Ld/a/a/d;->ShadowLayout_l_leftDividerInsetBottom:I

    if-ne v2, v3, :cond_11

    iget v3, p0, Ld/a/a/c;->q:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->q:I

    goto/16 :goto_2

    :cond_11
    sget v3, Ld/a/a/d;->ShadowLayout_l_rightDividerColor:I

    if-ne v2, v3, :cond_12

    iget v3, p0, Ld/a/a/c;->w:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->w:I

    goto/16 :goto_2

    :cond_12
    sget v3, Ld/a/a/d;->ShadowLayout_l_rightDividerWidth:I

    if-ne v2, v3, :cond_13

    iget v3, p0, Ld/a/a/c;->t:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->t:I

    goto/16 :goto_2

    :cond_13
    sget v3, Ld/a/a/d;->ShadowLayout_l_rightDividerInsetTop:I

    if-ne v2, v3, :cond_14

    iget v3, p0, Ld/a/a/c;->u:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->u:I

    goto/16 :goto_2

    :cond_14
    sget v3, Ld/a/a/d;->ShadowLayout_l_rightDividerInsetBottom:I

    if-ne v2, v3, :cond_15

    iget v3, p0, Ld/a/a/c;->v:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->v:I

    goto/16 :goto_2

    :cond_15
    sget v3, Ld/a/a/d;->ShadowLayout_l_borderColor:I

    if-ne v2, v3, :cond_16

    iget v3, p0, Ld/a/a/c;->F:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->F:I

    goto/16 :goto_2

    :cond_16
    sget v3, Ld/a/a/d;->ShadowLayout_l_borderWidth:I

    if-ne v2, v3, :cond_17

    iget v3, p0, Ld/a/a/c;->G:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->G:I

    goto/16 :goto_2

    :cond_17
    sget v3, Ld/a/a/d;->ShadowLayout_l_radius:I

    if-ne v2, v3, :cond_18

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    goto/16 :goto_2

    :cond_18
    sget v3, Ld/a/a/d;->ShadowLayout_l_outerNormalColor:I

    if-ne v2, v3, :cond_19

    iget v3, p0, Ld/a/a/c;->H:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->H:I

    goto/16 :goto_2

    :cond_19
    sget v3, Ld/a/a/d;->ShadowLayout_l_hideRadiusSide:I

    if-ne v2, v3, :cond_1a

    iget v3, p0, Ld/a/a/c;->C:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->C:I

    goto :goto_2

    :cond_1a
    sget v3, Ld/a/a/d;->ShadowLayout_l_showBorderOnlyBeforeL:I

    if-ne v2, v3, :cond_1b

    iget-boolean v3, p0, Ld/a/a/c;->L:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ld/a/a/c;->L:Z

    goto :goto_2

    :cond_1b
    sget v3, Ld/a/a/d;->ShadowLayout_l_shadowElevation:I

    if-ne v2, v3, :cond_1c

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_2

    :cond_1c
    sget v3, Ld/a/a/d;->ShadowLayout_l_shadowAlpha:I

    if-ne v2, v3, :cond_1d

    iget v3, p0, Ld/a/a/c;->N:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ld/a/a/c;->N:F

    goto :goto_2

    :cond_1d
    sget v3, Ld/a/a/d;->ShadowLayout_l_outlineInsetLeft:I

    if-ne v2, v3, :cond_1e

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->O:I

    goto :goto_2

    :cond_1e
    sget v3, Ld/a/a/d;->ShadowLayout_l_outlineInsetRight:I

    if-ne v2, v3, :cond_1f

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->P:I

    goto :goto_2

    :cond_1f
    sget v3, Ld/a/a/d;->ShadowLayout_l_outlineInsetTop:I

    if-ne v2, v3, :cond_20

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->Q:I

    goto :goto_2

    :cond_20
    sget v3, Ld/a/a/d;->ShadowLayout_l_outlineInsetBottom:I

    if-ne v2, v3, :cond_21

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Ld/a/a/c;->R:I

    goto :goto_2

    :cond_21
    sget v3, Ld/a/a/d;->ShadowLayout_l_outlineExcludePadding:I

    if-ne v2, v3, :cond_22

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ld/a/a/c;->J:Z

    :cond_22
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v1

    :goto_3
    iget p1, p0, Ld/a/a/c;->C:I

    iget p2, p0, Ld/a/a/c;->N:F

    invoke-virtual {p0, p4, p1, v0, p2}, Ld/a/a/c;->a(IIIF)V

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Ld/a/a/c;->d:I

    if-ge p2, v0, :cond_0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Ld/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/a/a/c;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Ld/a/a/c;->M:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_2
    return-void
.end method

.method public a(IIF)V
    .locals 1

    iget v0, p0, Ld/a/a/c;->C:I

    invoke-virtual {p0, p1, v0, p2, p3}, Ld/a/a/c;->a(IIIF)V

    return-void
.end method

.method public a(IIIF)V
    .locals 11

    iget-object v0, p0, Ld/a/a/c;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ld/a/a/c;->B:I

    iput p2, p0, Ld/a/a/c;->C:I

    iget p1, p0, Ld/a/a/c;->B:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_5

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ne p2, v3, :cond_1

    new-array p2, v7, [F

    aput v1, p2, v2

    aput v1, p2, v3

    aput v1, p2, v10

    aput v1, p2, v9

    int-to-float p1, p1

    aput p1, p2, v8

    aput p1, p2, v6

    aput p1, p2, v5

    aput p1, p2, v4

    iput-object p2, p0, Ld/a/a/c;->D:[F

    goto :goto_0

    :cond_1
    if-ne p2, v10, :cond_2

    new-array p2, v7, [F

    int-to-float p1, p1

    aput p1, p2, v2

    aput p1, p2, v3

    aput v1, p2, v10

    aput v1, p2, v9

    aput v1, p2, v8

    aput v1, p2, v6

    aput p1, p2, v5

    aput p1, p2, v4

    iput-object p2, p0, Ld/a/a/c;->D:[F

    goto :goto_0

    :cond_2
    if-ne p2, v9, :cond_3

    new-array p2, v7, [F

    int-to-float p1, p1

    aput p1, p2, v2

    aput p1, p2, v3

    aput p1, p2, v10

    aput p1, p2, v9

    aput v1, p2, v8

    aput v1, p2, v6

    aput v1, p2, v5

    aput v1, p2, v4

    iput-object p2, p0, Ld/a/a/c;->D:[F

    goto :goto_0

    :cond_3
    if-ne p2, v8, :cond_4

    new-array p2, v7, [F

    aput v1, p2, v2

    aput v1, p2, v3

    int-to-float p1, p1

    aput p1, p2, v10

    aput p1, p2, v9

    aput p1, p2, v8

    aput p1, p2, v6

    aput v1, p2, v5

    aput v1, p2, v4

    iput-object p2, p0, Ld/a/a/c;->D:[F

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Ld/a/a/c;->D:[F

    :cond_5
    :goto_0
    iput p3, p0, Ld/a/a/c;->M:I

    iput p4, p0, Ld/a/a/c;->N:F

    invoke-static {}, Ld/a/a/c;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Ld/a/a/c;->M:I

    if-eqz p1, :cond_8

    .line 1
    iget p1, p0, Ld/a/a/c;->B:I

    if-lez p1, :cond_6

    iget p1, p0, Ld/a/a/c;->C:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    goto :goto_2

    .line 2
    :cond_7
    iget p1, p0, Ld/a/a/c;->M:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    :goto_3
    new-instance p1, Ld/a/a/b;

    invoke-direct {p1, p0}, Ld/a/a/b;-><init>(Ld/a/a/c;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget p1, p0, Ld/a/a/c;->B:I

    if-lez p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 2

    iget-object v0, p0, Ld/a/a/c;->K:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Ld/a/a/c;->K:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Ld/a/a/c;->K:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {}, Ld/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a/a/c;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ld/a/a/c;->J:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public b(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Ld/a/a/c;->c:I

    if-ge p2, v0, :cond_0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method
