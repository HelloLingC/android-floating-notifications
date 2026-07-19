.class public Lcom/lingc/notification/NotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source ""


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/b/h/a/X$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lingc/notification/NotificationService;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/NotificationService;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/NotificationService;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic b(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/lingc/notification/NotificationService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/lingc/notification/NotificationService;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/NotificationService;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "blackList"

    invoke-static {v0}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->cancelAllNotifications()V

    :goto_0
    const/4 v0, 0x0

    const-string v1, "globalSettings"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifitSuperMode"

    .line 2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    iput v1, p0, Lcom/lingc/notification/NotificationService;->a:I

    :try_start_0
    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lingc/notification/NotificationService;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->f:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/b/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lingc/notification/NotificationService;->b:Landroid/graphics/drawable/Drawable;

    :cond_5
    const-string v1, ""

    const-string v2, "android.title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    const-string v2, "android.text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lc/b/a/b/b;

    invoke-direct {v1}, Lc/b/a/b/b;-><init>()V

    iget-object v2, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    .line 3
    iput-object v2, v1, Lc/b/a/b/b;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    .line 5
    iput-object v2, v1, Lc/b/a/b/b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    iput-object v2, v1, Lc/b/a/b/b;->c:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, v1, Lc/b/a/b/b;->d:Ljava/lang/String;

    const-string v0, "data"

    .line 10
    invoke-static {v0}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v0}, La/b/b/a/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keys"

    invoke-static {v0}, La/b/b/a/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_a
    const-string v3, "content: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_b
    const-string v3, "or: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_c
    return-void

    :cond_d
    const-string v3, "and: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lingc/notification/NotificationService;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/c;

    invoke-direct {v1, p0, p1}, Lc/b/a/c;-><init>(Lcom/lingc/notification/NotificationService;Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_f
    :goto_2
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/NotificationListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget v0, v1, Lcom/lingc/notification/NotificationService;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const-string v0, "globalSettings"

    .line 1
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "notifitShowInBar"

    .line 2
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "041123"

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_3

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v6, 0x4

    const-string v7, "\u5728\u72b6\u6001\u680f\u901a\u77e5"

    invoke-direct {v0, v4, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    new-instance v6, La/b/h/a/W;

    invoke-direct {v6, v1, v4}, La/b/h/a/W;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 3
    iget-object v0, v6, La/b/h/a/W;->N:Landroid/app/Notification;

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    const v4, 0x7f0f0031

    .line 4
    invoke-virtual {v1, v4}, Landroid/service/notification/NotificationListenerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x1400

    if-nez v0, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v7, :cond_5

    invoke-interface {v0, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    :cond_5
    :goto_0
    iput-object v0, v6, La/b/h/a/W;->d:Ljava/lang/CharSequence;

    const-string v0, "\u6b64\u5904\u53ef\u5c55\u5f00"

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v7, :cond_6

    invoke-interface {v0, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    :cond_6
    iput-object v0, v6, La/b/h/a/W;->e:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, v6, La/b/h/a/W;->N:Landroid/app/Notification;

    const/4 v7, -0x1

    iput v7, v0, Landroid/app/Notification;->defaults:I

    iget v8, v0, Landroid/app/Notification;->flags:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v0, Landroid/app/Notification;->flags:I

    const v8, 0x7f080072

    .line 10
    iput v8, v0, Landroid/app/Notification;->icon:I

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/NotificationListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0e0002

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 12
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1b

    if-lt v8, v10, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v8, v6, La/b/h/a/W;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, La/b/a/b;->compat_notification_large_icon_max_width:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget v11, La/b/a/b;->compat_notification_large_icon_max_height:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-gt v11, v10, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-gt v11, v8, :cond_8

    goto/16 :goto_1

    :cond_8
    int-to-double v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    int-to-double v12, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v14, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v8, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v0, v8, v10, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13
    :cond_9
    :goto_1
    iput-object v0, v6, La/b/h/a/W;->i:Landroid/graphics/Bitmap;

    .line 14
    iget-object v0, v6, La/b/h/a/W;->N:Landroid/app/Notification;

    iget v8, v0, Landroid/app/Notification;->flags:I

    const/16 v10, 0x10

    or-int/2addr v8, v10

    iput v8, v0, Landroid/app/Notification;->flags:I

    .line 15
    iput v9, v6, La/b/h/a/W;->l:I

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 17
    iput-object v0, v6, La/b/h/a/W;->f:Landroid/app/PendingIntent;

    const/4 v8, 0x0

    .line 18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.largeIcon"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    move-object v0, v8

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.title"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.text"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, La/b/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_a

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_a
    instance-of v13, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v13, :cond_c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v15

    if-eq v15, v7, :cond_b

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_b
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_3
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v0, v2, v2, v15, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v13

    goto :goto_4

    :cond_c
    move-object v0, v8

    :cond_d
    :goto_4
    if-eqz v0, :cond_e

    .line 20
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v10, La/b/h/a/da$a;

    invoke-direct {v10}, La/b/h/a/da$a;-><init>()V

    .line 21
    iput-object v11, v10, La/b/h/a/da$a;->a:Ljava/lang/CharSequence;

    .line 22
    iput-boolean v9, v10, La/b/h/a/da$a;->f:Z

    .line 23
    iput-object v0, v10, La/b/h/a/da$a;->b:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 24
    iput-boolean v2, v10, La/b/h/a/da$a;->e:Z

    .line 25
    new-instance v0, La/b/h/a/da;

    invoke-direct {v0, v10}, La/b/h/a/da;-><init>(La/b/h/a/da$a;)V

    .line 26
    new-instance v10, La/b/h/a/X$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v10, v12, v13, v14, v0}, La/b/h/a/X$a;-><init>(Ljava/lang/CharSequence;JLa/b/h/a/da;)V

    goto :goto_5

    :cond_e
    new-instance v10, La/b/h/a/X$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v10, v12, v13, v14, v11}, La/b/h/a/X$a;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    :goto_5
    new-instance v0, La/b/h/a/X;

    invoke-virtual {v1, v4}, Landroid/service/notification/NotificationListenerService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, La/b/h/a/X;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/lingc/notification/NotificationService;->e:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/lingc/notification/NotificationService;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/b/h/a/X$a;

    .line 27
    iget-object v11, v0, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x19

    if-le v10, v11, :cond_f

    iget-object v10, v0, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 28
    :cond_10
    invoke-virtual {v6, v0}, La/b/h/a/W;->a(La/b/h/a/Y;)La/b/h/a/W;

    iget-object v0, v1, Lcom/lingc/notification/NotificationService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_11

    iget-object v0, v1, Lcom/lingc/notification/NotificationService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    :cond_11
    new-instance v0, La/b/h/a/Z;

    invoke-direct {v0, v6}, La/b/h/a/Z;-><init>(La/b/h/a/W;)V

    .line 30
    iget-object v4, v0, La/b/h/a/Z;->b:La/b/h/a/W;

    iget-object v4, v4, La/b/h/a/W;->o:La/b/h/a/Y;

    const/16 v6, 0x18

    if-eqz v4, :cond_2c

    move-object v10, v4

    check-cast v10, La/b/h/a/X;

    .line 31
    iget-object v11, v10, La/b/h/a/Y;->a:La/b/h/a/W;

    const/16 v12, 0x1c

    if-eqz v11, :cond_12

    iget-object v11, v11, La/b/h/a/W;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v11, v12, :cond_12

    iget-object v11, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    if-nez v11, :cond_12

    iget-object v11, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    if-eqz v11, :cond_13

    const/4 v11, 0x1

    goto :goto_7

    :cond_12
    iget-object v11, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_7

    :cond_13
    const/4 v11, 0x0

    .line 32
    :goto_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    .line 33
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v6, :cond_1d

    if-lt v11, v12, :cond_14

    new-instance v7, Landroid/app/Notification$MessagingStyle;

    iget-object v11, v10, La/b/h/a/X;->c:La/b/h/a/da;

    invoke-virtual {v11}, La/b/h/a/da;->a()Landroid/app/Person;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    goto :goto_8

    :cond_14
    new-instance v7, Landroid/app/Notification$MessagingStyle;

    iget-object v11, v10, La/b/h/a/X;->c:La/b/h/a/da;

    .line 34
    iget-object v11, v11, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    .line 35
    invoke-direct {v7, v11}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v11, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_15

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_16

    :cond_15
    iget-object v11, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :cond_16
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_17

    iget-object v11, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    :cond_17
    iget-object v10, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/b/h/a/X$a;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v12, :cond_19

    .line 36
    iget-object v13, v11, La/b/h/a/X$a;->c:La/b/h/a/da;

    .line 37
    new-instance v14, Landroid/app/Notification$MessagingStyle$Message;

    .line 38
    iget-object v15, v11, La/b/h/a/X$a;->a:Ljava/lang/CharSequence;

    .line 39
    iget-wide v5, v11, La/b/h/a/X$a;->b:J

    if-nez v13, :cond_18

    move-object v13, v8

    goto :goto_a

    .line 40
    :cond_18
    invoke-virtual {v13}, La/b/h/a/da;->a()Landroid/app/Person;

    move-result-object v13

    :goto_a
    invoke-direct {v14, v15, v5, v6, v13}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    goto :goto_c

    .line 41
    :cond_19
    iget-object v5, v11, La/b/h/a/X$a;->c:La/b/h/a/da;

    if-eqz v5, :cond_1a

    .line 42
    iget-object v5, v5, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_1a
    move-object v5, v8

    .line 43
    :goto_b
    new-instance v14, Landroid/app/Notification$MessagingStyle$Message;

    .line 44
    iget-object v6, v11, La/b/h/a/X$a;->a:Ljava/lang/CharSequence;

    .line 45
    iget-wide v12, v11, La/b/h/a/X$a;->b:J

    .line 46
    invoke-direct {v14, v6, v12, v13, v5}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 47
    :goto_c
    iget-object v5, v11, La/b/h/a/X$a;->e:Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, v11, La/b/h/a/X$a;->e:Ljava/lang/String;

    .line 48
    iget-object v6, v11, La/b/h/a/X$a;->f:Landroid/net/Uri;

    .line 49
    invoke-virtual {v14, v5, v6}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    :cond_1b
    invoke-virtual {v7, v14}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    const/16 v5, 0x1a

    const/16 v6, 0x18

    const/16 v12, 0x1c

    goto :goto_9

    .line 50
    :cond_1c
    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    .line 51
    invoke-virtual {v7, v5}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    goto/16 :goto_16

    .line 52
    :cond_1d
    iget-object v5, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :cond_1e
    add-int/2addr v5, v7

    if-ltz v5, :cond_1f

    iget-object v6, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/h/a/X$a;

    .line 53
    iget-object v11, v6, La/b/h/a/X$a;->c:La/b/h/a/da;

    if-eqz v11, :cond_1e

    .line 54
    iget-object v11, v11, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    .line 55
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    move-object v5, v6

    goto :goto_d

    :cond_1f
    iget-object v5, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/b/h/a/X$a;

    goto :goto_d

    :cond_20
    move-object v5, v8

    .line 56
    :goto_d
    iget-object v6, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    if-eqz v6, :cond_21

    iget-object v6, v10, La/b/h/a/X;->e:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 57
    iget-object v6, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    .line 58
    iget-object v7, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_e

    :cond_21
    if-eqz v5, :cond_22

    .line 59
    iget-object v6, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    const-string v7, ""

    .line 60
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 61
    iget-object v6, v5, La/b/h/a/X$a;->c:La/b/h/a/da;

    if-eqz v6, :cond_22

    .line 62
    iget-object v7, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    .line 63
    iget-object v6, v6, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_22
    :goto_e
    if-eqz v5, :cond_24

    .line 65
    iget-object v6, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    .line 66
    iget-object v7, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    if-eqz v7, :cond_23

    invoke-virtual {v10, v5}, La/b/h/a/X;->a(La/b/h/a/X$a;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_f

    .line 67
    :cond_23
    iget-object v5, v5, La/b/h/a/X$a;->a:Ljava/lang/CharSequence;

    .line 68
    :goto_f
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v6, v10, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    if-nez v6, :cond_28

    .line 69
    iget-object v6, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_10
    if-ltz v6, :cond_26

    iget-object v7, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/b/h/a/X$a;

    .line 70
    iget-object v7, v7, La/b/h/a/X$a;->c:La/b/h/a/da;

    if-eqz v7, :cond_25

    .line 71
    iget-object v7, v7, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    if-nez v7, :cond_25

    const/4 v6, 0x1

    goto :goto_11

    :cond_25
    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    :cond_26
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_27

    goto :goto_12

    :cond_27
    const/4 v6, 0x0

    goto :goto_13

    :cond_28
    :goto_12
    const/4 v6, 0x1

    .line 72
    :goto_13
    iget-object v7, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    :goto_14
    if-ltz v7, :cond_2b

    iget-object v11, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/b/h/a/X$a;

    if-eqz v6, :cond_29

    invoke-virtual {v10, v11}, La/b/h/a/X;->a(La/b/h/a/X$a;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_15

    .line 73
    :cond_29
    iget-object v11, v11, La/b/h/a/X$a;->a:Ljava/lang/CharSequence;

    .line 74
    :goto_15
    iget-object v12, v10, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-eq v7, v12, :cond_2a

    const-string v12, "\n"

    invoke-virtual {v5, v2, v12}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2a
    invoke-virtual {v5, v2, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_2b
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    .line 75
    iget-object v7, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    .line 76
    invoke-direct {v6, v7}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v6, v8}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 77
    :cond_2c
    :goto_16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_2d

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    goto/16 :goto_18

    :cond_2d
    const/4 v7, 0x2

    const/16 v8, 0x18

    if-lt v5, v8, :cond_2f

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget v8, v0, La/b/h/a/Z;->g:I

    if-eqz v8, :cond_3b

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2e

    iget v8, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_2e

    iget v8, v0, La/b/h/a/Z;->g:I

    if-ne v8, v7, :cond_2e

    invoke-virtual {v0, v5}, La/b/h/a/Z;->a(Landroid/app/Notification;)V

    :cond_2e
    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    iget v7, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_3b

    iget v7, v0, La/b/h/a/Z;->g:I

    if-ne v7, v9, :cond_3b

    goto/16 :goto_17

    :cond_2f
    if-lt v5, v6, :cond_34

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    iget-object v8, v0, La/b/h/a/Z;->f:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v8, v0, La/b/h/a/Z;->c:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_30

    iput-object v8, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_30
    iget-object v8, v0, La/b/h/a/Z;->d:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_31

    iput-object v8, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_31
    iget-object v8, v0, La/b/h/a/Z;->h:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_32

    iput-object v8, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_32
    iget v8, v0, La/b/h/a/Z;->g:I

    if-eqz v8, :cond_3b

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_33

    iget v8, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_33

    iget v8, v0, La/b/h/a/Z;->g:I

    if-ne v8, v7, :cond_33

    invoke-virtual {v0, v5}, La/b/h/a/Z;->a(Landroid/app/Notification;)V

    :cond_33
    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    iget v7, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_3b

    iget v7, v0, La/b/h/a/Z;->g:I

    if-ne v7, v9, :cond_3b

    goto :goto_17

    :cond_34
    const/16 v8, 0x14

    if-lt v5, v8, :cond_38

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    iget-object v8, v0, La/b/h/a/Z;->f:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v8, v0, La/b/h/a/Z;->c:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_35

    iput-object v8, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_35
    iget-object v8, v0, La/b/h/a/Z;->d:Landroid/widget/RemoteViews;

    if-eqz v8, :cond_36

    iput-object v8, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_36
    iget v8, v0, La/b/h/a/Z;->g:I

    if-eqz v8, :cond_3b

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_37

    iget v8, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_37

    iget v8, v0, La/b/h/a/Z;->g:I

    if-ne v8, v7, :cond_37

    invoke-virtual {v0, v5}, La/b/h/a/Z;->a(Landroid/app/Notification;)V

    :cond_37
    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    iget v7, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_3b

    iget v7, v0, La/b/h/a/Z;->g:I

    if-ne v7, v9, :cond_3b

    :goto_17
    invoke-virtual {v0, v5}, La/b/h/a/Z;->a(Landroid/app/Notification;)V

    goto :goto_18

    :cond_38
    iget-object v5, v0, La/b/h/a/Z;->e:Ljava/util/List;

    invoke-static {v5}, La/b/h/a/aa;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v5

    if-eqz v5, :cond_39

    iget-object v7, v0, La/b/h/a/Z;->f:Landroid/os/Bundle;

    const-string v8, "android.support.actionExtras"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_39
    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    iget-object v7, v0, La/b/h/a/Z;->f:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v5, v0, La/b/h/a/Z;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v7, v0, La/b/h/a/Z;->c:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_3a

    iput-object v7, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_3a
    iget-object v7, v0, La/b/h/a/Z;->d:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_3b

    iput-object v7, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 78
    :cond_3b
    :goto_18
    iget-object v7, v0, La/b/h/a/Z;->b:La/b/h/a/W;

    iget-object v7, v7, La/b/h/a/W;->F:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_3c

    iput-object v7, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_3c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_3d

    if-eqz v4, :cond_3d

    iget-object v6, v0, La/b/h/a/Z;->b:La/b/h/a/W;

    iget-object v6, v6, La/b/h/a/W;->o:La/b/h/a/Y;

    invoke-virtual {v6, v0}, La/b/h/a/Y;->a(La/b/h/a/U;)Landroid/widget/RemoteViews;

    :cond_3d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v4, :cond_41

    .line 79
    iget-object v0, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_41

    .line 80
    check-cast v4, La/b/h/a/X;

    .line 81
    iget-object v6, v4, La/b/h/a/X;->c:La/b/h/a/da;

    .line 82
    iget-object v6, v6, La/b/h/a/da;->a:Ljava/lang/CharSequence;

    const-string v7, "android.selfDisplayName"

    .line 83
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v6, v4, La/b/h/a/X;->c:La/b/h/a/da;

    invoke-virtual {v6}, La/b/h/a/da;->b()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.messagingStyleUser"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v4, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    const-string v7, "android.hiddenConversationTitle"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v6, v4, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3e

    iget-object v6, v4, La/b/h/a/X;->e:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3e

    iget-object v6, v4, La/b/h/a/X;->d:Ljava/lang/CharSequence;

    const-string v7, "android.conversationTitle"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3e
    iget-object v6, v4, La/b/h/a/X;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    iget-object v6, v4, La/b/h/a/X;->b:Ljava/util/List;

    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/Bundle;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    :goto_19
    if-ge v2, v8, :cond_3f

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/b/h/a/X$a;

    invoke-virtual {v10}, La/b/h/a/X$a;->a()Landroid/os/Bundle;

    move-result-object v10

    aput-object v10, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3f
    const-string v2, "android.messages"

    .line 85
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_40
    iget-object v2, v4, La/b/h/a/X;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "android.isGroupConversation"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_41
    const/16 v2, 0x10

    .line 86
    iput v2, v5, Landroid/app/Notification;->flags:I

    invoke-virtual {v3, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_42
    :goto_1a
    return-void
.end method
