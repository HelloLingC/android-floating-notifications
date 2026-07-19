.class public Lc/b/a/c/c/a;
.super La/b/h/a/i;
.source ""


# instance fields
.field public Y:Ljava/lang/String;

.field public Z:I

.field public aa:Ljava/lang/String;

.field public ba:Z

.field public ca:Z

.field public da:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/h/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0034

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09006b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f090069

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lc/b/a/c/c/a;->Y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lc/b/a/c/c/a;->da:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p2, p0, Lc/b/a/c/c/a;->da:I

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    iget p2, p0, Lc/b/a/c/c/a;->Z:I

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lc/b/a/c/c/a;->aa:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
