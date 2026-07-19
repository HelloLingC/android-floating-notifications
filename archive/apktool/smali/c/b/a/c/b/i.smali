.class public Lc/b/a/c/b/i;
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

    iput-object p1, p0, Lc/b/a/c/b/i;->a:Lc/b/a/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lc/b/a/c/b/i;->a:Lc/b/a/c/b/n;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v1

    const-class v2, Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, La/b/h/a/i;->a(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
