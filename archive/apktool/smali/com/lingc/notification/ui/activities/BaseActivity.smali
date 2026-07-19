.class public Lcom/lingc/notification/ui/activities/BaseActivity;
.super La/b/i/a/m;
.source ""


# static fields
.field public static o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lingc/notification/ui/activities/BaseActivity;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public l()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "globalSettings"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hideInBackground"

    .line 2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, La/b/i/a/m;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/lingc/notification/ui/activities/BaseActivity;->o:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, La/b/i/a/m;->onDestroy()V

    sget-object v0, Lcom/lingc/notification/ui/activities/BaseActivity;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, La/b/i/a/m;->onStop()V

    sget-object v0, Lcom/lingc/notification/ui/activities/BaseActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;->l()Z

    :cond_0
    return-void
.end method
