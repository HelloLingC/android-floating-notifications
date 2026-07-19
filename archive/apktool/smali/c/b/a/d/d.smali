.class public Lc/b/a/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lc/b/a/d/e;


# direct methods
.method public constructor <init>(Lc/b/a/d/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/d/d;->a:Lc/b/a/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lc/b/a/d/d;->a:Lc/b/a/d/e;

    .line 1
    iget-object p2, p2, Lc/b/a/d/e;->b:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lc/b/a/d/d;->a:Lc/b/a/d/e;

    .line 3
    iget-object p2, p2, Lc/b/a/d/e;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
