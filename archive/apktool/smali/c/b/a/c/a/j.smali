.class public Lc/b/a/c/a/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/k;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/a/k;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/k;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    iget-object p1, p1, Lc/b/a/c/a/k;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    iget-object v0, v0, Lc/b/a/c/a/k;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    iget-object p1, p1, Lc/b/a/c/a/k;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    const-string v0, "keys"

    invoke-static {p1, v0}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    iget-object v0, p1, Lc/b/a/c/a/k;->c:Lc/b/a/c/a/m;

    iget-object v0, v0, Lc/b/a/c/a/m;->a:Landroid/widget/ArrayAdapter;

    iget-object p1, p1, Lc/b/a/c/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/b/a/c/a/j;->a:Lc/b/a/c/a/k;

    iget-object p1, p1, Lc/b/a/c/a/k;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    const-string v0, "\u5df2\u5220\u9664"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
