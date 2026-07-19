.class public Lcom/lingc/notification/ui/activities/EditPosActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# instance fields
.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/Button;

.field public r:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/EditPosActivity;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->r:Landroid/widget/Switch;

    return-object p0
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/EditPosActivity;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->r:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    invoke-virtual {p0}, La/b/i/a/m;->i()La/b/i/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La/b/i/a/a;->c(Z)V

    :cond_0
    const p1, 0x7f090049

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->p:Landroid/widget/Button;

    const p1, 0x7f09004b

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->q:Landroid/widget/Button;

    const p1, 0x7f09004a

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->r:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->p:Landroid/widget/Button;

    new-instance v0, Lc/b/a/c/a/d;

    invoke-direct {v0, p0}, Lc/b/a/c/a/d;-><init>(Lcom/lingc/notification/ui/activities/EditPosActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/lingc/notification/ui/activities/EditPosActivity;->q:Landroid/widget/Button;

    new-instance v0, Lc/b/a/c/a/g;

    invoke-direct {v0, p0}, Lc/b/a/c/a/g;-><init>(Lcom/lingc/notification/ui/activities/EditPosActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
