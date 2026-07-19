.class public Lc/b/a/c/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/intro/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/view/ViewPager;

.field public final synthetic b:Lcom/lingc/notification/ui/intro/IntroActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/intro/IntroActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/c/e;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    iput-object p2, p0, Lc/b/a/c/c/e;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/c/e;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lc/b/a/c/c/e;->b:Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-static {v0}, Lcom/lingc/notification/ui/intro/IntroActivity;->b(Lcom/lingc/notification/ui/intro/IntroActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
