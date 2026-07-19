.class public Lc/b/a/c/a/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/ui/activities/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lingc/notification/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/a/t;->a:Lcom/lingc/notification/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, La/b/i/a/l$a;

    iget-object p2, p0, Lc/b/a/c/a/t;->a:Lcom/lingc/notification/ui/activities/MainActivity;

    invoke-direct {p1, p2}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object p2, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v0, "All Service Name"

    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v0, "ANDROID: com.android.systemui.statusbar.NotificationListener\nMIUI: com.xiaomi.xmsf.push.service.notificationcollection.NotificationListener"

    .line 2
    iput-object v0, p2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    const p2, 0x7f0f0038

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {p1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method
