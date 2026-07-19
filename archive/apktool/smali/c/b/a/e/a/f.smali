.class public Lc/b/a/e/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/e/a/f$a;,
        Lc/b/a/e/a/f$b;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:Landroid/content/Context;

.field public f:Landroid/view/View;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public m:Landroid/graphics/Bitmap;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/app/PendingIntent;

.field public r:Lc/b/a/e/a/f$b;

.field public s:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/a/e/a/f;->a:Z

    iput-boolean v0, p0, Lc/b/a/e/a/f;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/b/a/e/a/f;->l:Z

    new-instance v0, Lc/b/a/e/a/e;

    invoke-direct {v0, p0}, Lc/b/a/e/a/e;-><init>(Lc/b/a/e/a/f;)V

    iput-object v0, p0, Lc/b/a/e/a/f;->s:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lc/b/a/e/a/f;
    .locals 2

    iget-boolean v0, p0, Lc/b/a/e/a/f;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lc/b/a/e/a/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/e/a/f;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/a/f;->m:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lc/b/a/e/a/f;->n:Ljava/lang/String;

    iput-object p3, p0, Lc/b/a/e/a/f;->o:Ljava/lang/String;

    iput-object p4, p0, Lc/b/a/e/a/f;->p:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lc/b/a/e/a/f;->q:Landroid/app/PendingIntent;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lc/b/a/e/a/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lc/b/a/e/a/f;->c:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p1, Lc/b/a/e/a/b;->b:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    sput p1, Lc/b/a/e/a/b;->b:I

    iput-boolean v0, p0, Lc/b/a/e/a/f;->b:Z

    iget-object p1, p0, Lc/b/a/e/a/f;->r:Lc/b/a/e/a/f$b;

    if-eqz p1, :cond_2

    check-cast p1, Lc/b/a/c/a/b;

    .line 1
    iget-object p1, p1, Lc/b/a/c/a/b;->a:Lc/b/a/c/a/c;

    iget-object p1, p1, Lc/b/a/c/a/c;->a:Lc/b/a/c/a/d;

    iget-object p1, p1, Lc/b/a/c/a/d;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-static {p1, v0}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;Z)V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/d/a;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lc/b/a/e/a/f;->c:Landroid/view/WindowManager;

    sget-object v0, Lc/b/a/e/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lc/b/a/e/a/f;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lc/b/a/e/a/f;->j:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lc/b/a/e/a/f;->k:I

    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lc/b/a/e/a/f;->l:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lc/b/a/e/a/f;->l:Z

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iput-boolean v4, p0, Lc/b/a/e/a/f;->l:Z

    .line 2
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    const v1, 0x7f0c005e

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    sget v0, Lc/b/a/e/a/b;->b:I

    add-int/2addr v0, v4

    sput v0, Lc/b/a/e/a/b;->b:I

    sget v0, Lc/b/a/e/a/b;->b:I

    sget v1, Lc/b/a/d/a;->f:I

    if-le v0, v1, :cond_3

    sget-object v0, Lc/b/a/e/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lc/b/a/e/a/b;->b:I

    sub-int/2addr v0, v4

    sput v0, Lc/b/a/e/a/b;->b:I

    return-void

    .line 3
    :cond_3
    iget-object v0, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltop/limuyang2/shadowlayoutlib/ShadowLinearLayout;

    iget-object v1, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v1}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "notifitRadiu"

    const-string v7, "44"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v6}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "notifitShadowSize"

    const-string v8, "72"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v7}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "notifitAlpha"

    const-string v9, "0.44F"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Ltop/limuyang2/shadowlayoutlib/ShadowLinearLayout;->a(IIF)V

    iget-object v1, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    const v6, 0x7f0900ff

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    const v7, 0x7f090106

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    const v8, 0x7f090105

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v8}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "notifitMaxHeight"

    const-string v10, "1024"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v9}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "notifitMaxWidth"

    const-string v11, "0"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxHeight(I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget-object v8, Lc/b/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x1547bb9f

    const/4 v12, -0x1

    if-eq v10, v11, :cond_5

    const v11, 0x2eef76

    if-eq v10, v11, :cond_4

    goto :goto_1

    :cond_4
    const-string v10, "dark"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const-string v10, "asswecan"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_8

    if-eq v8, v4, :cond_7

    goto :goto_3

    :cond_7
    :try_start_0
    sget-object v8, Lc/b/a/d/a;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    sget-object v0, Lc/b/a/d/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Lc/b/a/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    const-string v8, "#000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#e5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    if-nez v9, :cond_9

    iget v0, p0, Lc/b/a/e/a/f;->j:I

    add-int/lit16 v0, v0, -0x190

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_9
    iget-object v0, p0, Lc/b/a/e/a/f;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lc/b/a/e/a/f;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_4
    iget-object v0, p0, Lc/b/a/e/a/f;->n:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/b/a/e/a/f;->o:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default"

    const-string v6, "notifitAnimations"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    sparse-switch v6, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x0

    goto :goto_5

    :sswitch_1
    const-string v1, "inputmethod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x3

    goto :goto_5

    :sswitch_2
    const-string v1, "toast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x2

    goto :goto_5

    :sswitch_3
    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x4

    goto :goto_5

    :sswitch_4
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v12, 0x1

    :cond_c
    :goto_5
    const v0, 0x1030003

    if-eqz v12, :cond_11

    if-eq v12, v4, :cond_10

    if-eq v12, v2, :cond_f

    if-eq v12, v7, :cond_e

    if-eq v12, v8, :cond_d

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030002

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030056

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030001

    goto :goto_7

    :cond_11
    :goto_6
    iget-object v1, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    move-object v0, v1

    const v1, 0x1030003

    :goto_7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    :goto_8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v1, Lc/b/a/d/a;->e:Z

    if-eqz v1, :cond_13

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x20000

    add-int/2addr v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_13
    iget-object v0, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v6, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    invoke-virtual {v6, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v6, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x12c

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0xc8

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v1, p0, Lc/b/a/e/a/f;->l:Z

    const/16 v6, 0x2290

    if-eqz v1, :cond_14

    iget-object v1, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "x"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v7}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "y"

    goto :goto_9

    :cond_14
    iget-object v1, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v1}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v7, "hozX"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v7}, Lc/b/a/d/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "hozY"

    :goto_9
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-boolean v8, p0, Lc/b/a/e/a/f;->i:Z

    if-eqz v8, :cond_15

    const/16 v7, -0x1f4

    const/4 v1, 0x0

    :cond_15
    if-eq v1, v6, :cond_16

    iget-object v8, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_16
    if-eq v7, v6, :cond_17

    iget-object v1, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_17
    invoke-virtual {p0}, Lc/b/a/e/a/f;->a()Lc/b/a/e/a/f;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lc/b/a/e/a/f;->a()Lc/b/a/e/a/f;

    move-result-object v1

    iget-object v1, v1, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lc/b/a/e/a/f;->a()Lc/b/a/e/a/f;

    move-result-object v6

    iget-object v6, v6, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lc/b/a/e/a/f;->a()Lc/b/a/e/a/f;

    move-result-object v7

    iget-object v7, v7, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v8, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-boolean v1, Lc/b/a/d/a;->g:Z

    if-ge v7, v0, :cond_18

    add-int/lit8 v7, v7, 0x28

    :cond_18
    if-le v7, v0, :cond_19

    add-int/lit8 v7, v7, -0xf

    :cond_19
    if-ne v7, v0, :cond_1a

    add-int/lit8 v7, v7, 0xf

    :cond_1a
    if-eqz v1, :cond_1b

    iget-object v1, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    add-int/2addr v6, v7

    goto :goto_a

    :cond_1b
    iget-object v1, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    sub-int/2addr v6, v7

    :goto_a
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lc/b/a/e/a/f;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x19

    iget v7, p0, Lc/b/a/e/a/f;->k:I

    div-int/lit8 v8, v7, 0x2

    if-gt v6, v8, :cond_1d

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x19

    neg-int v0, v7

    div-int/2addr v0, v2

    if-ge v1, v0, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-virtual {p0}, Lc/b/a/e/a/f;->a()Lc/b/a/e/a/f;

    move-result-object v0

    iput-boolean v4, v0, Lc/b/a/e/a/f;->a:Z

    goto :goto_c

    :cond_1d
    :goto_b
    sget-object v0, Lc/b/a/e/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lc/b/a/e/a/b;->b:I

    sub-int/2addr v0, v4

    sput v0, Lc/b/a/e/a/b;->b:I

    const/4 v3, 0x1

    goto :goto_d

    :cond_1e
    :goto_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc/b/a/e/a/b;->a:Ljava/lang/ref/WeakReference;

    :goto_d
    if-eqz v3, :cond_1f

    return-void

    .line 5
    :cond_1f
    iget-object v0, p0, Lc/b/a/e/a/f;->q:Landroid/app/PendingIntent;

    if-eqz v0, :cond_20

    sget-boolean v0, Lc/b/a/d/a;->h:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    new-instance v1, Lc/b/a/e/a/c;

    invoke-direct {v1, p0}, Lc/b/a/e/a/c;-><init>(Lc/b/a/e/a/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc/b/a/e/a/d;

    invoke-direct {v1, p0}, Lc/b/a/e/a/d;-><init>(Lc/b/a/e/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lc/b/a/e/a/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lc/b/a/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifitShowTime"

    const-string v2, "3000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_e
    iget-boolean v0, p0, Lc/b/a/e/a/f;->a:Z

    if-nez v0, :cond_21

    sput-object v5, Lc/b/a/e/a/b;->a:Ljava/lang/ref/WeakReference;

    sget-object v0, Lc/b/a/e/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lc/b/a/e/a/b;->a()V

    :cond_21
    iget-boolean v0, p0, Lc/b/a/e/a/f;->g:Z

    iget-boolean v1, p0, Lc/b/a/e/a/f;->i:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lc/b/a/e/a/f;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lc/b/a/e/a/f;->a(Landroid/view/View;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4
        -0x4f6602b8 -> :sswitch_3
        0x6969627 -> :sswitch_2
        0x194ea92b -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method
