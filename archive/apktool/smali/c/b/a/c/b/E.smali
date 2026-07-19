.class public Lc/b/a/c/b/E;
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

    iput-object p1, p0, Lc/b/a/c/b/E;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    new-instance p1, La/b/i/a/l$a;

    iget-object v0, p0, Lc/b/a/c/b/E;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-virtual {v0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v0

    invoke-direct {p1, v0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v0, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v1, "FAQ"

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const v0, 0x7f0f0041

    .line 2
    invoke-virtual {p1, v0}, La/b/i/a/l$a;->a(I)La/b/i/a/l$a;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "\u5173\u95ed"

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v0, v1, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {p1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    const/4 p1, 0x0

    return p1
.end method
