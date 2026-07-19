.class public Lc/b/a/e/b/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/e/b/f$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/app/PendingIntent;

.field public f:Landroid/content/Context;

.field public g:Landroid/view/WindowManager;

.field public h:Landroid/view/WindowManager$LayoutParams;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lc/b/a/e/b/f;

.field public p:Z

.field public q:Landroid/view/View;

.field public r:Lc/b/a/e/b/f$a;

.field public s:Landroid/view/View$OnTouchListener;

.field public t:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/b/a/e/b/f;->m:Z

    new-instance v0, Lc/b/a/e/b/d;

    invoke-direct {v0, p0}, Lc/b/a/e/b/d;-><init>(Lc/b/a/e/b/f;)V

    iput-object v0, p0, Lc/b/a/e/b/f;->s:Landroid/view/View$OnTouchListener;

    new-instance v0, Lc/b/a/e/b/e;

    invoke-direct {v0, p0}, Lc/b/a/e/b/e;-><init>(Lc/b/a/e/b/f;)V

    iput-object v0, p0, Lc/b/a/e/b/f;->t:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lc/b/a/e/b/f;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/a/e/b/f;->r:Lc/b/a/e/b/f$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Lc/b/a/c/a/e;

    .line 1
    iget-object v0, v0, Lc/b/a/c/a/e;->a:Lc/b/a/c/a/f;

    iget-object v0, v0, Lc/b/a/c/a/f;->a:Lc/b/a/c/a/g;

    iget-object v0, v0, Lc/b/a/c/a/g;->a:Lcom/lingc/notification/ui/activities/EditPosActivity;

    invoke-static {v0, v1}, Lcom/lingc/notification/ui/activities/EditPosActivity;->a(Lcom/lingc/notification/ui/activities/EditPosActivity;Z)V

    .line 2
    :cond_1
    sget v0, Lc/b/a/e/b/g;->a:I

    sub-int/2addr v0, v1

    sput v0, Lc/b/a/e/b/g;->a:I

    iput-boolean v1, p0, Lc/b/a/e/b/f;->p:Z

    sget-object v0, Lc/b/a/e/b/g;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lc/b/a/e/b/f;->b()V

    .line 3
    iget-object v0, p0, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 12

    invoke-static {p1}, Lc/b/a/d/a;->e(Landroid/content/Context;)V

    iput-object p1, p0, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    const v1, 0x7f0c005f

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lc/b/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x1547bb9f

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v6, v7, :cond_1

    const v7, 0x2eef76

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "dark"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-string v6, "asswecan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v5, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    sget-object v6, Lc/b/a/d/a;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lc/b/a/d/a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lc/b/a/d/a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v5, "#FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "#e5e5e5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v6, p0, Lc/b/a/e/b/f;->m:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    iput-boolean v10, p0, Lc/b/a/e/b/f;->m:Z

    goto :goto_3

    :cond_5
    if-ne v5, v9, :cond_6

    iput-boolean v9, p0, Lc/b/a/e/b/f;->m:Z

    :cond_6
    :goto_3
    const-string v5, "tileSettings"

    .line 4
    invoke-virtual {p1, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "open"

    .line 5
    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-boolean v6, p0, Lc/b/a/e/b/f;->l:Z

    or-int/2addr v5, v6

    if-eqz v5, :cond_7

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lc/b/a/e/b/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lc/b/a/e/b/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v9, p0, Lc/b/a/e/b/f;->n:Z

    :cond_7
    iget-object v5, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    new-instance v6, Lc/b/a/e/b/a;

    invoke-direct {v6, p0, v1, v3, v4}, Lc/b/a/e/b/a;-><init>(Lc/b/a/e/b/f;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    new-instance v3, Lc/b/a/e/b/b;

    invoke-direct {v3, p0}, Lc/b/a/e/b/b;-><init>(Lc/b/a/e/b/f;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v1, p0, Lc/b/a/e/b/f;->i:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    iget-object v3, p0, Lc/b/a/e/b/f;->t:Landroid/view/View$OnTouchListener;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    iget-object v3, p0, Lc/b/a/e/b/f;->s:Landroid/view/View$OnTouchListener;

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lc/b/a/e/b/f;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const-string v4, "globalSettings"

    .line 6
    invoke-virtual {p1, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "x"

    .line 7
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x438

    if-ne v5, v8, :cond_9

    iget-object v4, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, 0x12c

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6

    :cond_9
    iget-boolean v5, p0, Lc/b/a/e/b/f;->m:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 8
    invoke-virtual {p1, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 9
    invoke-interface {v11, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 10
    invoke-virtual {p1, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "y"

    goto :goto_5

    .line 11
    :cond_a
    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 12
    invoke-virtual {p1, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v11, "hozX"

    .line 13
    invoke-interface {v6, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    .line 14
    invoke-virtual {p1, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "hozY"

    .line 15
    :goto_5
    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_6
    iget-boolean v4, p0, Lc/b/a/e/b/f;->k:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v5, -0x1f4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_b
    sget v4, Lc/b/a/d/a;->f:I

    sget v5, Lc/b/a/e/b/g;->a:I

    if-nez v5, :cond_c

    iput-object v0, p0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    :cond_c
    iget-object v0, p0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    if-eqz v0, :cond_12

    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eq v0, v4, :cond_e

    sget-boolean v0, Lc/b/a/d/a;->g:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    iget-object v5, v5, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x12

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    iget-object v5, v5, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x12

    :goto_7
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_e
    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 16
    :goto_8
    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_10

    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, -0x1

    :goto_9
    if-eq v0, v8, :cond_11

    .line 17
    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v5, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a

    :cond_11
    sget-object p1, Lc/b/a/e/b/g;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_12
    :goto_a
    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget v0, Lc/b/a/e/b/g;->a:I

    if-ge v0, v4, :cond_16

    add-int/2addr v0, v9

    sput v0, Lc/b/a/e/b/g;->a:I

    iget-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_13

    const/16 v1, 0x7f6

    goto :goto_b

    :cond_13
    const/16 v1, 0x7d2

    :goto_b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x20028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v1, Lc/b/a/d/a;->e:Z

    if-eqz v1, :cond_14

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_14
    iget-object v0, p0, Lc/b/a/e/b/f;->h:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030003

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lc/b/a/e/b/f;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    iget-object v0, p0, Lc/b/a/e/b/f;->d:Ljava/lang/String;

    invoke-static {p1, v0}, La/b/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_15
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_c
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lc/b/a/e/b/c;

    invoke-direct {v0, p0}, Lc/b/a/e/b/c;-><init>(Lc/b/a/e/b/f;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-object p0, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    return-void

    :cond_16
    sget-object p1, Lc/b/a/e/b/g;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lc/b/a/e/b/f;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lc/b/a/e/b/f;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x11

    if-le p1, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    const/16 v0, 0x12

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lc/b/a/e/b/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/b/a/e/b/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lc/b/a/e/b/f;->e:Landroid/app/PendingIntent;

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lc/b/a/e/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc/b/a/e/b/g;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/e/b/f;

    iget-object v1, p0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 1
    iput-object v1, v0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 2
    iget-object v1, p0, Lc/b/a/e/b/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    sget-object v1, Lc/b/a/e/b/g;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
