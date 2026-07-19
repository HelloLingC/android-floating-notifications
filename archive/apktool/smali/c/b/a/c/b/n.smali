.class public Lc/b/a/c/b/n;
.super La/b/i/f/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/f/p;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/b/a/c/b/n;)V
    .locals 0

    invoke-virtual {p0}, Lc/b/a/c/b/n;->la()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/b/i/f/p;->Y:La/b/i/f/v;

    const-string p2, "globalSettings"

    .line 2
    iput-object p2, p1, La/b/i/f/v;->f:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p1, La/b/i/f/v;->c:Landroid/content/SharedPreferences;

    const p1, 0x7f120002

    .line 3
    invoke-virtual {p0, p1}, La/b/i/f/p;->c(I)V

    const-string p1, "notificatStyle"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->M()Ljava/lang/String;

    move-result-object p2

    const-string v0, "asswecan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "backgroundColor"

    invoke-virtual {p0, p2}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->d(Z)V

    const-string p2, "titleColor"

    invoke-virtual {p0, p2}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->d(Z)V

    const-string p2, "messageColor"

    invoke-virtual {p0, p2}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->d(Z)V

    :cond_0
    new-instance p2, Lc/b/a/c/b/b;

    invoke-direct {p2, p0}, Lc/b/a/c/b/b;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    const-string p1, "notifitShowInBar"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/g;

    invoke-direct {p2, p0}, Lc/b/a/c/b/g;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "permissionSplash"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/h;

    invoke-direct {p2, p0}, Lc/b/a/c/b/h;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "keyPrevent"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/i;

    invoke-direct {p2, p0}, Lc/b/a/c/b/i;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "notifitWhiteList"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/j;

    invoke-direct {p2, p0}, Lc/b/a/c/b/j;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "notifitManager"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/k;

    invoke-direct {p2, p0}, Lc/b/a/c/b/k;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "notificatEditPos"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/l;

    invoke-direct {p2, p0}, Lc/b/a/c/b/l;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    const-string p1, "hideInBackground"

    invoke-virtual {p0, p1}, La/b/i/f/p;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/b/a/c/b/m;

    invoke-direct {p2, p0}, Lc/b/a/c/b/m;-><init>(Lc/b/a/c/b/n;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$d;)V

    return-void
.end method

.method public final la()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "app_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, La/b/h/a/i;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, La/b/h/a/i;->a(Landroid/content/Intent;)V

    return-void
.end method
