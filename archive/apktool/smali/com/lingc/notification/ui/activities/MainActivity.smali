.class public Lcom/lingc/notification/ui/activities/MainActivity;
.super Lcom/lingc/notification/ui/activities/BaseActivity;
.source ""


# instance fields
.field public p:Z

.field public q:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->p:Z

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/activities/MainActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/MainActivity;->m()V

    return-void
.end method


# virtual methods
.method public c(La/b/h/a/i;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->p:Z

    instance-of v0, p1, Lc/b/a/c/b/y;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/lingc/notification/ui/activities/MainActivity;->p:Z

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0031

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lc/b/a/c/b/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0060

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lc/b/a/c/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f005f

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lc/b/a/c/b/G;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0f0066

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/lingc/notification/ui/fragment/OtherFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    iput-boolean v1, p0, Lcom/lingc/notification/ui/activities/MainActivity;->p:Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, La/b/h/a/k;->d()La/b/h/a/o;

    move-result-object v0

    invoke-virtual {v0}, La/b/h/a/o;->a()La/b/h/a/C;

    move-result-object v0

    const v1, 0x7f090086

    check-cast v0, La/b/h/a/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v1, p1, v3, v2}, La/b/h/a/b;->a(ILa/b/h/a/i;Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, La/b/h/a/C;->a()I

    return-void
.end method

.method public final m()V
    .locals 4

    new-instance v0, La/b/i/a/l$a;

    invoke-direct {v0, p0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v1, v0, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    iget-object v2, v1, Landroid/support/v7/app/AlertController$a;->a:Landroid/content/Context;

    const v3, 0x7f0f003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f003b

    .line 2
    invoke-virtual {v0, v1}, La/b/i/a/l$a;->a(I)La/b/i/a/l$a;

    const v1, 0x7f0f0039

    new-instance v2, Lc/b/a/c/a/v;

    invoke-direct {v2, p0}, Lc/b/a/c/a/v;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    const v1, 0x7f0f003a

    new-instance v2, Lc/b/a/c/a/u;

    invoke-direct {v2, p0}, Lc/b/a/c/a/u;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1, v2}, La/b/i/a/l$a;->a(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {v0}, La/b/i/a/l$a;->b()La/b/i/a/l;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/lingc/notification/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p0, Lcom/lingc/notification/ui/activities/MainActivity;->q:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, La/b/i/a/m;->a(Landroid/support/v7/widget/Toolbar;)V

    new-instance p1, Lc/b/a/c/b/y;

    invoke-direct {p1}, Lc/b/a/c/b/y;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lingc/notification/ui/activities/MainActivity;->c(La/b/h/a/i;)V

    const p1, 0x7f090056

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Lc/b/a/c/a/q;

    invoke-direct {v0, p0}, Lc/b/a/c/a/q;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->b()V

    const v0, 0x7f090085

    invoke-virtual {p0, v0}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    new-instance v1, Lc/b/a/c/a/r;

    invoke-direct {v1, p0, p1}, Lc/b/a/c/a/r;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$b;)V

    const-string p1, "appSettings"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "autoUpdate"

    .line 2
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lc/b/a/d/e;

    invoke-direct {v1, p0}, Lc/b/a/d/e;-><init>(Landroid/content/Context;)V

    const-string v2, "https://www.coolapk.com/apk/com.lingc.notification"

    .line 3
    iput-object v2, v1, Lc/b/a/d/e;->b:Ljava/lang/String;

    iput-boolean v0, v1, Lc/b/a/d/e;->c:Z

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lc/b/a/d/b;

    invoke-direct {v3, v1}, Lc/b/a/d/b;-><init>(Lc/b/a/d/e;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "lastVersion"

    const-string v2, "0"

    .line 5
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "2.0.4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0f0072

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, La/b/i/a/l$a;

    invoke-direct {v1, p0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u6b64\u7248\u672c\u7684\u6539\u52a8 - v2.0.4"

    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v2, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 9
    iput-boolean v0, v2, Landroid/support/v7/app/AlertController$a;->r:Z

    const p1, 0x7f0f0038

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lc/b/a/c/a/s;

    invoke-direct {v0, p0}, Lc/b/a/c/a/s;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;)V

    invoke-virtual {v1, p1, v0}, La/b/i/a/l$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    invoke-virtual {v1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, La/b/i/a/m;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090008

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "appSettings"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "autoUpdate"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/lingc/notification/ui/activities/MainActivity;->p:Z

    if-nez p1, :cond_0

    new-instance p1, Lc/b/a/c/b/y;

    invoke-direct {p1}, Lc/b/a/c/b/y;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lingc/notification/ui/activities/MainActivity;->c(La/b/h/a/i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/BaseActivity;->l()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lingc/notification/ui/intro/IntroActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/lingc/notification/ui/activities/MainActivity;->m()V

    goto/16 :goto_0

    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const-string v2, "appSettings"

    .line 1
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    const-string v2, "autoUpdate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :sswitch_3
    new-instance p1, La/b/i/a/l$a;

    invoke-direct {p1, p0}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v2, "Notification Listener"

    iput-object v2, v0, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v0, "APPLICATION Service is live: "

    .line 4
    invoke-static {v0}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.lingc.notification.NotificationService"

    invoke-static {v2, p0}, Lc/b/a/d/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nANDROID Service is live: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.systemui.statusbar.NotificationListener"

    invoke-static {v2, p0}, Lc/b/a/d/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nMIUI Service is live: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaomi.xmsf.push.service.notificationcollection.NotificationListener"

    invoke-static {v2, p0}, Lc/b/a/d/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nLike Listener Service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NotificationListener"

    invoke-static {p0, v2, v1}, Lc/b/a/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n\nLike Service process name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/b/a/d/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    iput-object v0, v2, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    const v0, 0x7f0f0038

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0, v2}, La/b/i/a/l$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La/b/i/a/l$a;

    new-instance v0, Lc/b/a/c/a/t;

    invoke-direct {v0, p0}, Lc/b/a/c/a/t;-><init>(Lcom/lingc/notification/ui/activities/MainActivity;)V

    .line 7
    iget-object v2, p1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "Watch"

    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->l:Ljava/lang/CharSequence;

    iput-object v0, v2, Landroid/support/v7/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {p1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090007 -> :sswitch_3
        0x7f090008 -> :sswitch_2
        0x7f090013 -> :sswitch_1
        0x7f090015 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, La/b/i/a/m;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
