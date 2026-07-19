.class public Lc/b/a/c/b/h;
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

    iput-object p1, p0, Lc/b/a/c/b/h;->a:Lc/b/a/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lc/b/a/c/b/h;->a:Lc/b/a/c/b/n;

    invoke-virtual {v0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v0

    const-class v1, Lcom/lingc/notification/ui/activities/SplashActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isMain"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lc/b/a/c/b/h;->a:Lc/b/a/c/b/n;

    invoke-virtual {v0, p1}, La/b/h/a/i;->a(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
