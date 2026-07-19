.class public Lc/b/a/c/b/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/F;->b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lc/b/a/c/b/F;->b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    invoke-static {p1}, Lc/b/a/d/a;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isBetaFuncOpen"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/a/c/b/F;->b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    const-string v0, "\u4f60\u5df2\u5f00\u542f Beta \u6a21\u5f0f"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    iget p1, p0, Lc/b/a/c/b/F;->a:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lc/b/a/c/b/F;->a:I

    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lc/b/a/c/b/F;->b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    invoke-static {p1}, Lc/b/a/d/a;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lc/b/a/c/b/F;->b:Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    const-string v0, "\u5df2\u5f00\u542f Beta \u6a21\u5f0f"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return v1
.end method
