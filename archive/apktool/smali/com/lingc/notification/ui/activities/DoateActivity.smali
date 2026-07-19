.class public Lcom/lingc/notification/ui/activities/DoateActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# instance fields
.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lingc/notification/ui/activities/DoateActivity;->p:I

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/DoateActivity;)I
    .locals 0

    iget p0, p0, Lcom/lingc/notification/ui/activities/DoateActivity;->p:I

    return p0
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/DoateActivity;I)I
    .locals 0

    iput p1, p0, Lcom/lingc/notification/ui/activities/DoateActivity;->p:I

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "#FF35B751"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const p1, 0x7f0900a0

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09009e

    invoke-virtual {p0, v2}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lc/b/a/c/a/a;

    invoke-direct {v3, p0, p1, v0, v1}, Lc/b/a/c/a/a;-><init>(Lcom/lingc/notification/ui/activities/DoateActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
