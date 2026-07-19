.class public Lc/b/a/c/a/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/ExceptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/lingc/notification/ui/activities/ExceptionActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/ExceptionActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/i;->b:Lcom/lingc/notification/ui/activities/ExceptionActivity;

    iput-object p2, p0, Lc/b/a/c/a/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/a/c/a/i;->b:Lcom/lingc/notification/ui/activities/ExceptionActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iget-object v0, p0, Lc/b/a/c/a/i;->a:Ljava/lang/String;

    const-string v1, "Label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lc/b/a/c/a/i;->b:Lcom/lingc/notification/ui/activities/ExceptionActivity;

    const-string v0, "\u590d\u5236\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
