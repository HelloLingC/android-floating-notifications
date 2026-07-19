.class public Lc/b/a/c/b/m;
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


# direct methods
.method public constructor <init>(Lc/b/a/c/b/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->D()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_0

    new-instance v1, La/b/i/a/l$a;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object p1, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    iput-object v3, p1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v3, "\u4f60\u7684\u7cfb\u7edf API \u5c0f\u4e8e 21\uff0c\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 2
    iput-object v3, p1, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u5173\u95ed"

    .line 3
    iput-object v4, p1, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v3, p1, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {v1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/TwoStatePreference;->e(Z)V

    :cond_0
    return v2
.end method
