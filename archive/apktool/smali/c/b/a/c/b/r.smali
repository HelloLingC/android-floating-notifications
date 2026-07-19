.class public Lc/b/a/c/b/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/y;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/y;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/y;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/r;->a:Lc/b/a/c/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/TwoStatePreference;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, La/b/i/a/l$a;

    iget-object v2, p0, Lc/b/a/c/b/r;->a:Lc/b/a/c/b/y;

    invoke-virtual {v2}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v2, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u517c\u5bb9\u6a21\u5f0f"

    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v3, "\u6ce8\u610f\u6b64\u529f\u80fd\u4ecd\u5728\u6d4b\u8bd5\u9636\u6bb5\uff0c\u5f53\u6253\u5f00\u517c\u5bb9\u6a21\u5f0f\u540e\u4f60\u53ef\u4ee5\u968f\u65f6\u5173\u95ed\u3002\n\n\u517c\u5bb9\u6a21\u5f0f\u5c06\u4f1a\u727a\u7272\u4e00\u5b9a\u529f\u80fd\u4ee5\u8fbe\u5230\u5b8c\u5168\u517c\u5bb9\u7684\u76ee\u7684\u3002"

    .line 2
    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    new-instance v2, Lc/b/a/c/b/q;

    invoke-direct {v2, p0, p1}, Lc/b/a/c/b/q;-><init>(Lc/b/a/c/b/r;Landroid/support/v14/preference/SwitchPreference;)V

    .line 4
    iget-object v3, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v4, "\u5f00\u542f"

    iput-object v4, v3, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v2, v3, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0037

    .line 5
    new-instance v3, Lc/b/a/c/b/p;

    invoke-direct {v3, p0, p1}, Lc/b/a/c/b/p;-><init>(Lc/b/a/c/b/r;Landroid/support/v14/preference/SwitchPreference;)V

    invoke-virtual {v0, v2, v3}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    new-instance p1, Lc/b/a/c/b/o;

    invoke-direct {p1, p0}, Lc/b/a/c/b/o;-><init>(Lc/b/a/c/b/r;)V

    .line 6
    iget-object v2, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u8be6\u7ec6"

    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iput-object p1, v2, Landroid/support/v7/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return v1
.end method
