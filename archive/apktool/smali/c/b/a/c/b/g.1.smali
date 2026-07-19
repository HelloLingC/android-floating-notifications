.class public Lc/b/a/c/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/n;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/n;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/n;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/g;->a:Lc/b/a/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->D()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, La/b/i/a/l$a;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v3, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v4, "\u6b64\u529f\u80fd\u6709\u4e00\u4e9b\u95ee\u9898"

    iput-object v4, v3, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v4, "\u5f53\u6253\u5f00\u6b64\u9009\u9879\u540e\uff0c5.0\u4ee5\u4e0a\u7684\u7cfb\u7edf\u4f1a\u5728\u5c4f\u5e55\u9876\u7aef\u663e\u793a\u4e00\u6761\u7cfb\u7edf\u60ac\u6302\u5f0f\u901a\u77e5\uff0c\u8bf7\u5230\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5173\u95ed \u81ea\u5b9a\u4e49\u60ac\u6d6e\u901a\u77e5 \u7684\u5728\u5c4f\u5e55\u4e2d\u663e\u793a\u901a\u77e5\u7684\u6743\u9650\uff0c\u4e0d\u540c\u7cfb\u7edf\u7684\u4fee\u6539\u65b9\u6cd5\u4e0d\u540c\u3002"

    .line 2
    iput-object v4, v3, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    new-instance v3, Lc/b/a/c/b/f;

    invoke-direct {v3, p0}, Lc/b/a/c/b/f;-><init>(Lc/b/a/c/b/g;)V

    .line 4
    iget-object v4, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v5, "\u8df3\u8f6c\u8bbe\u7f6e"

    iput-object v5, v4, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v3, v4, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f0f0037

    .line 5
    new-instance v4, Lc/b/a/c/b/e;

    invoke-direct {v4, p0, v0}, Lc/b/a/c/b/e;-><init>(Lc/b/a/c/b/g;Landroid/support/v14/preference/SwitchPreference;)V

    invoke-virtual {v1, v3, v4}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    new-instance v0, Lc/b/a/c/b/d;

    invoke-direct {v0, p0, p1}, Lc/b/a/c/b/d;-><init>(Lc/b/a/c/b/g;Landroid/support/v7/preference/Preference;)V

    .line 6
    iget-object p1, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u6559\u7a0b"

    iput-object v3, p1, Landroid/support/v7/app/AlertController$a;->o:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/support/v7/app/AlertController$a;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput-boolean v2, p1, Landroid/support/v7/app/AlertController$a;->r:Z

    .line 8
    invoke-virtual {v1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    :cond_0
    return v2
.end method
