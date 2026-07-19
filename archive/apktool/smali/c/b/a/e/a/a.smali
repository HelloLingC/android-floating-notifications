.class public final Lc/b/a/e/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/e/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/e/a/f;


# direct methods
.method public constructor <init>(Lc/b/a/e/a/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/e/a/a;->a:Lc/b/a/e/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc/b/a/e/a/a;->a:Lc/b/a/e/a/f;

    invoke-virtual {v0}, Lc/b/a/e/a/f;->b()V

    return-void
.end method
