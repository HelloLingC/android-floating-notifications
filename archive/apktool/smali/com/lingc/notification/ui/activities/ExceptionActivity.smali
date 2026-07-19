.class public Lcom/lingc/notification/ui/activities/ExceptionActivity;
.super La/b/i/a/m;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, La/b/i/a/m;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    const p1, 0x7f090052

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f090050

    invoke-virtual {p0, v0}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090051

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc/b/a/c/a/h;

    invoke-direct {v2, p0}, Lc/b/a/c/a/h;-><init>(Lcom/lingc/notification/ui/activities/ExceptionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lc/b/a/c/a/i;

    invoke-direct {p1, p0, v1}, Lc/b/a/c/a/i;-><init>(Lcom/lingc/notification/ui/activities/ExceptionActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
