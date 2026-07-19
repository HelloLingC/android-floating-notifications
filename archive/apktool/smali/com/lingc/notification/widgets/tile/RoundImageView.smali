.class public Lcom/lingc/notification/widgets/tile/RoundImageView;
.super La/b/i/j/u;
.source ""


# static fields
.field public static final c:Landroid/graphics/Bitmap$Config;


# instance fields
.field public d:F

.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/BitmapShader;

.field public h:Landroid/graphics/RectF;

.field public i:I

.field public j:I

.field public k:Landroid/graphics/Matrix;

.field public l:Landroid/graphics/Paint;

.field public m:I

.field public n:I

.field public o:Landroid/graphics/RectF;

.field public p:F

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/lingc/notification/widgets/tile/RoundImageView;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, La/b/i/j/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, La/b/i/j/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "CircleImage3"

    const-string p2, "CircleImage3 \u6784\u9020\u65b9\u6cd5 :"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->q:Z

    iget-boolean p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->q:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    const/high16 p1, -0x10000

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->m:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "CircleImage3"

    const-string v1, "onDraw :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->d:F

    iget-object v3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->p:F

    iget-object v3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :cond_1
    :try_start_0
    instance-of p3, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_2

    sget-object p3, Lcom/lingc/notification/widgets/tile/RoundImageView;->c:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x2

    invoke-static {p4, p4, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    sget-object v0, Lcom/lingc/notification/widgets/tile/RoundImageView;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    goto :goto_2

    :catch_0
    :goto_1
    move-object p1, p2

    .line 3
    :goto_2
    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    :cond_3
    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->q:Z

    const/4 p3, 0x1

    const/high16 p4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->m:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    div-float/2addr p1, p4

    iget-object v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, p4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->p:F

    :cond_4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->f:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->k:Landroid/graphics/Matrix;

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->i:I

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->j:I

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->g:Landroid/graphics/BitmapShader;

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->f:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->g:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-boolean p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->q:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget-object v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->n:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_3
    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p4

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p4

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->d:F

    const-string p1, "initPaint drawable Width :"

    invoke-static {p1}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " Height "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " View width :"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " height :"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "CircleImage3"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmapShaderMtrix drawable Width :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setBitmapShaderMtrix bitmap width :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->i:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->j:I

    int-to-float p3, p3

    mul-float p1, p1, p3

    const-string p3, "setBitmapShaderMtrix scale :"

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->j:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->i:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " dx :"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->i:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget v0, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->j:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    mul-float v0, p2, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " dy :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_4
    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->k:Landroid/graphics/Matrix;

    invoke-virtual {p3, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->k:Landroid/graphics/Matrix;

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->h:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p4

    add-float/2addr v0, v1

    float-to-int p4, v0

    int-to-float p4, p4

    iget p3, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->g:Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lcom/lingc/notification/widgets/tile/RoundImageView;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    .line 5
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the bitmap of imageView is null !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, La/b/i/j/u;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
