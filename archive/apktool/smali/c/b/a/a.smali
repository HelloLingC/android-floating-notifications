.class public Lc/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lingc/notification/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/app/Notification;

.field public final synthetic f:Lcom/lingc/notification/AccessibilityService;


# direct methods
.method public constructor <init>(Lcom/lingc/notification/AccessibilityService;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    iput-object p2, p0, Lc/b/a/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/b/a/a;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lc/b/a/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lc/b/a/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lc/b/a/a;->e:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    invoke-static {v0}, Lc/b/a/d/a;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "floating"

    const-string v2, "notificatWays"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    iget-object v1, p0, Lc/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, La/b/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v0, Lc/b/a/e/a/f;

    iget-object v1, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lc/b/a/a;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lc/b/a/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lc/b/a/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lc/b/a/a;->e:Landroid/app/Notification;

    iget-object v7, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lc/b/a/e/a/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Lc/b/a/e/a/f;->b()V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/b/a/e/b/f;

    invoke-direct {v0}, Lc/b/a/e/b/f;-><init>()V

    iget-object v9, p0, Lc/b/a/a;->b:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lc/b/a/a;->c:Ljava/lang/String;

    iget-object v11, p0, Lc/b/a/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v8, v0

    invoke-virtual/range {v8 .. v13}, Lc/b/a/e/b/f;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    sget-object v1, Lc/b/a/e/b/g;->b:Lc/b/a/e/b/f;

    .line 1
    iput-object v1, v0, Lc/b/a/e/b/f;->o:Lc/b/a/e/b/f;

    .line 2
    iget-object v1, p0, Lc/b/a/a;->f:Lcom/lingc/notification/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/e/b/f;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
