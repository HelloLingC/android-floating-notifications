.class public Lc/b/a/c/b/A;
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


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/A;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    new-instance v0, La/b/i/a/l$a;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object p1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v1, "\u83b7\u53d6\u5e94\u7528\u6e90\u4ee3\u7801"

    iput-object v1, p1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v1, "\u81ea\u5b9a\u4e49\u60ac\u6d6e\u901a\u77e5\u7684\u78c1\u8d34\u6a21\u5f0f\u91c7\u7528 GNU GPL 3.0 \u534f\u8bae\u5f00\u6e90\u3002\n\u4f60\u53ef\u4ee5\u70b9\u51fb\u4e0b\u65b9\u7684\u6309\u94ae\u8df3\u8f6c\u5230Github\u6d4f\u89c8\u9879\u76ee\u3002"

    .line 2
    iput-object v1, p1, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    new-instance p1, Lc/b/a/c/b/z;

    invoke-direct {p1, p0}, Lc/b/a/c/b/z;-><init>(Lc/b/a/c/b/A;)V

    .line 4
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "Github"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object p1, v1, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    const/4 p1, 0x0

    return p1
.end method
