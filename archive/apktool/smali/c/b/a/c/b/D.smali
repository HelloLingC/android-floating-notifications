.class public Lc/b/a/c/b/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    new-instance v0, La/b/i/a/l$a;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u52a0\u5165\u5185\u6d4bQQ\u7fa4"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v2, "\u70b9\u4e00\u4e0b\u73a9\u4e00\u5e74\uff0c\u88c5\u5907\u4e0d\u82b1\u4e00\u5206\u94b1\n\u4ee5\u540e\u7684\u62a2\u5148\u4f53\u9a8c\u7248\u90fd\u4f1a\u5728\u7fa4\u91cc\u53d1\u5e03\uff0c\u6b22\u8fce\u52a0\u7fa4\u704c\u6c34\u804a\u5929\uff01"

    .line 2
    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    new-instance v1, Lc/b/a/c/b/C;

    invoke-direct {v1, p0, p1}, Lc/b/a/c/b/C;-><init>(Lc/b/a/c/b/D;Landroid/support/v7/preference/Preference;)V

    .line 4
    iget-object p1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u590d\u5236\u7fa4\u53f7"

    iput-object v2, p1, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    const/4 p1, 0x0

    return p1
.end method
