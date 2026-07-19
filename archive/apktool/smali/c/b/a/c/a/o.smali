.class public Lc/b/a/c/a/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/p;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Lc/b/a/c/a/p;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/p;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/o;->b:Lc/b/a/c/a/p;

    iput-object p2, p0, Lc/b/a/c/a/o;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/a/o;->b:Lc/b/a/c/a/p;

    iget-object p1, p1, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lc/b/a/c/a/o;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/a/c/a/o;->b:Lc/b/a/c/a/p;

    iget-object p1, p1, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    const-string p2, "keys"

    invoke-static {p1, p2}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/a/c/a/o;->b:Lc/b/a/c/a/p;

    iget-object p1, p1, Lc/b/a/c/a/p;->a:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    const-string p2, "\u5df2\u6dfb\u52a0"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
