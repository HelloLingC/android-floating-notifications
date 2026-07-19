.class public Lc/b/a/c/a/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/design/widget/FloatingActionButton;

.field public final synthetic b:Lcom/lingc/notification/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/MainActivity;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/r;->b:Lcom/lingc/notification/ui/activities/MainActivity;

    iput-object p2, p0, Lc/b/a/c/a/r;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lc/b/a/c/a/r;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->b()V

    iget-object p1, p0, Lc/b/a/c/a/r;->b:Lcom/lingc/notification/ui/activities/MainActivity;

    new-instance v1, Lc/b/a/c/b/y;

    invoke-direct {v1}, Lc/b/a/c/b/y;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/lingc/notification/ui/activities/MainActivity;->c(La/b/h/a/i;)V

    return v0

    :pswitch_1
    iget-object p1, p0, Lc/b/a/c/a/r;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->e()V

    iget-object p1, p0, Lc/b/a/c/a/r;->b:Lcom/lingc/notification/ui/activities/MainActivity;

    new-instance v1, Lcom/lingc/notification/ui/fragment/OtherFragment;

    invoke-direct {v1}, Lcom/lingc/notification/ui/fragment/OtherFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f09002b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
