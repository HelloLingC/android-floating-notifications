.class public Lc/b/a/c/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/d;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/d;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/c;->a:Lc/b/a/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lc/b/a/c/b/c;->a:Lc/b/a/c/b/d;

    iget-object p1, p1, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/g;

    iget-object p1, p1, Lc/b/a/c/b/g;->a:Lc/b/a/c/b/n;

    invoke-static {p1}, Lc/b/a/c/b/n;->a(Lc/b/a/c/b/n;)V

    return-void
.end method
