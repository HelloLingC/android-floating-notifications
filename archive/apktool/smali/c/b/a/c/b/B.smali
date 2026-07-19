.class public Lc/b/a/c/b/B;
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

    iput-object p1, p0, Lc/b/a/c/b/B;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    new-instance p1, Lc/b/a/d/e;

    iget-object v0, p0, Lc/b/a/c/b/B;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-virtual {v0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/b/a/d/e;-><init>(Landroid/content/Context;)V

    const-string v0, "https://www.coolapk.com/apk/com.lingc.notification"

    .line 1
    iput-object v0, p1, Lc/b/a/d/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lc/b/a/d/e;->c:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/d/b;

    invoke-direct {v1, p1}, Lc/b/a/d/b;-><init>(Lc/b/a/d/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method
