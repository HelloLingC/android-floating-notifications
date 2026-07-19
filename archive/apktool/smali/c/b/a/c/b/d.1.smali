.class public Lc/b/a/c/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/g;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v7/preference/Preference;

.field public final synthetic b:Lc/b/a/c/b/g;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/g;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/g;

    iput-object p2, p0, Lc/b/a/c/b/d;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, La/b/i/a/l$a;

    iget-object p2, p0, Lc/b/a/c/b/d;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object p2, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v0, "\u8bbe\u7f6e\u6559\u7a0b\uff08\u6b22\u8fce\u8865\u5145\uff09"

    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v0, "\u5982\u679c\u4ee5\u4e0b\u6ca1\u6709\u4f60\u7684\u673a\u578b\uff0c\u8bf7\u81ea\u5df1\u53d8\u901a\u4e00\u4e0b\uff0c\u5982\u679c\u5b9e\u5728\u4e0d\u884c\u53ef\u4ee5\u767e\u5ea6\u6216\u5728\u9177\u5b89\u8bc4\u8bba\u533a\u8be2\u95ee\u3002\n\n\u539f\u751fAndroid 9.0: \u70b9\u51fb\u4e0b\u65b9\u201c\u8df3\u8f6c\u201d\u6309\u94ae\u540e\uff0c\u70b9\u51fb\u201c\u5728\u72b6\u6001\u680f\u663e\u793a\u201d -> \u201c\u884c\u4e3a\u201d -> \u201c\u53d1\u51fa\u63d0\u793a\u97f3\u201d\n\nMIUI\uff1a\u8df3\u8f6c\u540e\uff0c\u5173\u95ed\u201c\u60ac\u6d6e\u901a\u77e5\u201d\n\n\u90e8\u5206MIUI\uff1a\u8df3\u8f6c\u540e\uff0c\u5c06\u201c\u5141\u8bb8\u5feb\u901f\u67e5\u770b\u201d\u5173\u95ed\u5373\u53ef"

    .line 2
    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 3
    new-instance p2, Lc/b/a/c/b/c;

    invoke-direct {p2, p0}, Lc/b/a/c/b/c;-><init>(Lc/b/a/c/b/d;)V

    .line 4
    iget-object v0, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v1, "\u8df3\u8f6c"

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const p2, 0x7f0f0038

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {p1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method
