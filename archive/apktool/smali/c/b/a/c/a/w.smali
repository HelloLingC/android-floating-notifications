.class public Lc/b/a/c/a/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/w;->a:Lcom/lingc/notification/ui/activities/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/a/c/a/w;->a:Lcom/lingc/notification/ui/activities/SplashActivity;

    const-string v0, "\u627e\u5230 \u81ea\u5b9a\u4e49\u60ac\u6d6e\u901a\u77e5 \u5e76\u6253\u5f00"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lc/b/a/c/a/w;->a:Lcom/lingc/notification/ui/activities/SplashActivity;

    invoke-static {p1}, Lcom/lingc/notification/ui/activities/SplashActivity;->a(Lcom/lingc/notification/ui/activities/SplashActivity;)Z

    return-void
.end method
