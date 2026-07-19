.class public Lc/b/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/NotificationService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/service/notification/StatusBarNotification;

.field public final synthetic b:Lcom/lingc/notification/NotificationService;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/NotificationService;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    iput-object p2, p0, Lc/b/a/c;->a:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v0}, Lc/b/a/d/a;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "floating"

    const-string v2, "notificatWays"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/b/a/e/a/f;

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->a(Lcom/lingc/notification/NotificationService;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->b(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->c(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->d(Lcom/lingc/notification/NotificationService;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v1, p0, Lc/b/a/c;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lc/b/a/e/a/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lc/b/a/e/a/f;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/b/a/e/b/f;

    invoke-direct {v0}, Lc/b/a/e/b/f;-><init>()V

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->a(Lcom/lingc/notification/NotificationService;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->b(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-static {v1}, Lcom/lingc/notification/NotificationService;->c(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lc/b/a/c;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lc/b/a/c;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v12, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    sget-object v1, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 1
    iput-object v1, v0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 2
    iget-object v1, p0, Lc/b/a/c;->b:Lcom/lingc/notification/NotificationService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
