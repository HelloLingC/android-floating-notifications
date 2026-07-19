.class public Lc/b/a/c/b/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/r;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/r;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/r;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/o;->a:Lc/b/a/c/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, La/b/i/a/l$a;

    iget-object p2, p0, Lc/b/a/c/b/o;->a:Lc/b/a/c/b/r;

    iget-object p2, p2, Lc/b/a/c/b/r;->a:Lc/b/a/c/b/y;

    invoke-virtual {p2}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p2

    invoke-direct {p1, p2}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object p2, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v0, "\u8be6\u7ec6"

    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v0, "\u4f60\u5c06\u65e0\u6cd5\u4f7f\u7528\u201c\u5728\u72b6\u6001\u680f\u4e0a\u663e\u793a\u901a\u77e5\u201d\u529f\u80fd\n\n\u5e94\u7528\u5c06\u65e0\u6cd5\u5220\u9664\u539f\u901a\u77e5\n\n\u901a\u77e5\u56fe\u6807\u53ea\u80fd\u663e\u793a\u5e94\u7528\u7684\u56fe\u6807"

    .line 2
    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    const p2, 0x7f0f0038

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {p1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method
