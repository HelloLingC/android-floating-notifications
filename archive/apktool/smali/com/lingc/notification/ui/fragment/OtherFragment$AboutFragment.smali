.class public Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;
.super La/b/i/f/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lingc/notification/ui/fragment/OtherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/f/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120004

    invoke-virtual {p0, p1}, La/b/i/f/p;->c(I)V

    const-string p1, "getSource"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/A;

    invoke-direct {p2, p0}, Lc/b/a/c/b/A;-><init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "update"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/B;

    invoke-direct {p2, p0}, Lc/b/a/c/b/B;-><init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "getBetaVersion"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/D;

    invoke-direct {p2, p0}, Lc/b/a/c/b/D;-><init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "faq"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/E;

    invoke-direct {p2, p0}, Lc/b/a/c/b/E;-><init>(Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    return-void
.end method
