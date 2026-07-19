.class public Lc/b/a/c/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/DoateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/lingc/notification/ui/activities/DoateActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/DoateActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    iput-object p2, p0, Lc/b/a/c/a/a;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lc/b/a/c/a/a;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lc/b/a/c/a/a;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/DoateActivity;->a(Lcom/lingc/notification/ui/activities/DoateActivity;)I

    move-result p1

    const/high16 v0, -0x80000000

    const/high16 v1, 0x4000000

    const/16 v2, 0x17

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "#FF2186F3"

    if-lt p1, v2, :cond_0

    iget-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    iget-object p1, p0, Lc/b/a/c/a/a;->a:Landroid/widget/LinearLayout;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lc/b/a/c/a/a;->b:Landroid/widget/TextView;

    const-string v0, "\u652f\u4ed8\u5b9d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/a/c/a/a;->c:Landroid/widget/ImageView;

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "#FF35B751"

    if-lt p1, v2, :cond_2

    iget-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    iget-object p1, p0, Lc/b/a/c/a/a;->a:Landroid/widget/LinearLayout;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lc/b/a/c/a/a;->b:Landroid/widget/TextView;

    const-string v0, "\u5fae\u4fe1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/a/c/a/a;->c:Landroid/widget/ImageView;

    const v0, 0x7f0e0005

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lc/b/a/c/a/a;->d:Lcom/lingc/notification/ui/activities/DoateActivity;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/lingc/notification/ui/activities/DoateActivity;->a(Lcom/lingc/notification/ui/activities/DoateActivity;I)I

    return-void
.end method
