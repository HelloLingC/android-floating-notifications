.class public Lc/b/a/c/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/a/m;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lc/b/a/c/a/m;


# direct methods
.method public constructor <init>(Lc/b/a/c/a/m;ILandroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/l;->c:Lc/b/a/c/a/m;

    iput p2, p0, Lc/b/a/c/a/l;->a:I

    iput-object p3, p0, Lc/b/a/c/a/l;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/a/l;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lc/b/a/c/a/l;->a:I

    iget-object v0, p0, Lc/b/a/c/a/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/b/a/c/a/l;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    const-string p2, "keys"

    invoke-static {p1, p2}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/a/c/a/l;->c:Lc/b/a/c/a/m;

    iget-object p1, p1, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    const-string p2, "\u4fee\u6539\u6210\u529f"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
