.class public Lc/b/a/c/b/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v7/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/y;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/y;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/y;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/w;->a:Lc/b/a/c/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lc/b/a/c/b/v;

    invoke-direct {v0, p0}, Lc/b/a/c/b/v;-><init>(Lc/b/a/c/b/w;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method
