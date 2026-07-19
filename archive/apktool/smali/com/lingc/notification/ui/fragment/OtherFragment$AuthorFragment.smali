.class public Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;
.super La/b/i/f/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lingc/notification/ui/fragment/OtherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/f/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f120005

    invoke-virtual {p0, p1}, La/b/i/f/p;->c(I)V

    const-string p1, "version"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    const-string v0, "2.0.4 (23)"

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/F;

    invoke-direct {p2, p0}, Lc/b/a/c/b/F;-><init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AuthorFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "buildTime"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    const-string p2, "2020-01-25 18:48:58"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
