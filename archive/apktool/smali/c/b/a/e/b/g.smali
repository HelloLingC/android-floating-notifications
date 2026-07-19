.class public Lc/b/a/e/b/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I

.field public static b:Lc/b/a/e/b/f;

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/e/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Landroid/util/SparseBooleanArray;

.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/e/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/b/a/e/b/g;->c:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/b/a/e/b/g;->e:Ljava/util/List;

    return-void
.end method

.method public static a()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    const/4 v0, 0x0

    sput v0, Lc/b/a/e/b/g;->a:I

    sget-object v0, Lc/b/a/e/b/g;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    sget-object v0, Lc/b/a/e/b/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/e/b/f;

    .line 1
    iget-object v2, v1, Lc/b/a/e/b/f;->g:Landroid/view/WindowManager;

    iget-object v3, v1, Lc/b/a/e/b/f;->q:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2
    invoke-virtual {v1}, Lc/b/a/e/b/f;->b()V

    goto :goto_0

    :cond_0
    sget-object v0, Lc/b/a/e/b/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
