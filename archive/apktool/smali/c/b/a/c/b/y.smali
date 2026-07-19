.class public Lc/b/a/c/b/y;
.super La/b/i/f/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/f/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, La/b/i/f/p;->Y:La/b/i/f/v;

    const-string p2, "mainSettings"

    .line 2
    iput-object p2, p1, La/b/i/f/v;->f:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p1, La/b/i/f/v;->c:Landroid/content/SharedPreferences;

    const p1, 0x7f120003

    .line 3
    invoke-virtual {p0, p1}, La/b/i/f/p;->c(I)V

    const-string p1, "betaFuncCategory"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p2

    invoke-static {p2}, Lc/b/a/d/a;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "isBetaFuncOpen"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->d(Z)V

    const-string p1, "notifitSuperMode"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/r;

    invoke-direct {p2, p0}, Lc/b/a/c/b/r;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "globalSettings"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/s;

    invoke-direct {p2, p0}, Lc/b/a/c/b/s;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "floatingSettings"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/t;

    invoke-direct {p2, p0}, Lc/b/a/c/b/t;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "tileSettings"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/u;

    invoke-direct {p2, p0}, Lc/b/a/c/b/u;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "sendFloatingTest"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/w;

    invoke-direct {p2, p0}, Lc/b/a/c/b/w;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "sendTileTest"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/x;

    invoke-direct {p2, p0}, Lc/b/a/c/b/x;-><init>(Lc/b/a/c/b/y;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, La/b/i/f/p;->c(Landroid/os/Bundle;)V

    return-void
.end method
