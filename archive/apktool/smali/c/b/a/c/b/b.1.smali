.class public Lc/b/a/c/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$c;


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

    iput-object p1, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string p1, "asswecan"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/n;

    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    iget-object p2, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/n;

    const-string v0, "titleColor"

    invoke-virtual {p2, v0}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    iget-object p2, p0, Lc/b/a/c/b/b;->a:Lc/b/a/c/b/n;

    const-string v0, "messageColor"

    invoke-virtual {p2, v0}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->d(Z)V

    const/4 p1, 0x1

    return p1
.end method
