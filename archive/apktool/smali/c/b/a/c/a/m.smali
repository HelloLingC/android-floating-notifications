.class public Lc/b/a/c/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/KeyPreventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ArrayAdapter;

.field public final synthetic b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/KeyPreventActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    iput-object p2, p0, Lc/b/a/c/a/m;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/KeyPreventActivity;->a(Lcom/lingc/notification/ui/activities/KeyPreventActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p4, Landroid/widget/EditText;

    iget-object p5, p0, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {p4, p5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance p5, La/b/i/a/l$a;

    iget-object v0, p0, Lc/b/a/c/a/m;->b:Lcom/lingc/notification/ui/activities/KeyPreventActivity;

    invoke-direct {p5, v0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v0, p5, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v1, "\u4fee\u6539\u5173\u952e\u5b57"

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    .line 2
    iput-object p4, v0, Landroid/support/v7/app/AlertController$a;->z:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController$a;->y:I

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->E:Z

    const v0, 0x7f0f002d

    .line 3
    new-instance v1, Lc/b/a/c/a/l;

    invoke-direct {v1, p0, p3, p4}, Lc/b/a/c/a/l;-><init>(Lc/b/a/c/a/m;ILandroid/widget/EditText;)V

    invoke-virtual {p5, v0, v1}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    const p3, 0x7f0f002c

    new-instance p4, Lc/b/a/c/a/k;

    invoke-direct {p4, p0, p2, p1}, Lc/b/a/c/a/k;-><init>(Lc/b/a/c/a/m;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p5, p3, p4}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {p5}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method
