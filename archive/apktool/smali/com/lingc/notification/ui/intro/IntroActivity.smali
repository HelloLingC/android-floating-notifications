.class public Lcom/lingc/notification/ui/intro/IntroActivity;
.super La/b/i/a/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lingc/notification/ui/intro/IntroActivity$a;
    }
.end annotation


# instance fields
.field public o:I

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/e/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/e/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/b/i/a/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->t:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->u:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/intro/IntroActivity;I)I
    .locals 0

    iput p1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->o:I

    return p1
.end method

.method public static synthetic a(Lcom/lingc/notification/ui/intro/IntroActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/intro/IntroActivity;->l()V

    return-void
.end method

.method public static synthetic b(Lcom/lingc/notification/ui/intro/IntroActivity;)I
    .locals 0

    iget p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->o:I

    return p0
.end method

.method public static synthetic c(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic e(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic f(Lcom/lingc/notification/ui/intro/IntroActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic g(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Lcom/lingc/notification/ui/intro/IntroActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->u:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/lingc/notification/ui/intro/IntroActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/intro/IntroActivity;->m()V

    return-void
.end method

.method public static synthetic j(Lcom/lingc/notification/ui/intro/IntroActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/lingc/notification/ui/intro/IntroActivity;->n()V

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lingc/notification/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const-string v1, "appSettings"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstBoot"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    const-string v1, "\u4f60\u4ecd\u53ef\u5728\u53f3\u4e0a\u89d2\u7684\u83dc\u5355\u5185\u67e5\u770b\u4f7f\u7528\u8bf4\u660e"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final m()V
    .locals 3

    new-instance v0, Lc/b/a/e/a/f;

    invoke-direct {v0, p0}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/b/a/c/c/g;

    invoke-direct {v2, p0, v0}, Lc/b/a/c/c/g;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Lc/b/a/e/a/f;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lc/b/a/e/a/f;

    invoke-direct {v0, p0}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/b/a/c/c/h;

    invoke-direct {v2, p0, v0}, Lc/b/a/c/c/h;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Lc/b/a/e/a/f;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lc/b/a/e/a/f;

    invoke-direct {v0, p0}, Lc/b/a/e/a/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/b/a/c/c/i;

    invoke-direct {v2, p0, v0}, Lc/b/a/c/c/i;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Lc/b/a/e/a/f;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/c/c/j;

    invoke-direct {v1, p0}, Lc/b/a/c/c/j;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, La/b/i/a/m;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, La/b/i/a/m;->setContentView(I)V

    invoke-virtual {p0}, La/b/i/a/m;->i()La/b/i/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/b/i/a/a;->e()V

    :cond_0
    const p1, 0x7f090070

    invoke-virtual {p0, p1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc/b/a/c/c/a;

    invoke-direct {v1}, Lc/b/a/c/c/a;-><init>()V

    const-string v2, "Simple guide to help you know about this app!"

    .line 1
    iput-object v2, v1, Lc/b/a/c/c/a;->Y:Ljava/lang/String;

    const v2, 0x7f0e0002

    .line 2
    iput v2, v1, Lc/b/a/c/c/a;->Z:I

    const v2, 0x7f0f0042

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v1, Lc/b/a/c/c/a;->aa:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/b/a/c/c/a;

    invoke-direct {v1}, Lc/b/a/c/c/a;-><init>()V

    const-string v2, "\u9ed8\u8ba4\u6a21\u5f0f"

    .line 6
    iput-object v2, v1, Lc/b/a/c/c/a;->Y:Ljava/lang/String;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lc/b/a/c/c/a;->ba:Z

    const v3, 0x7f0f0043

    .line 8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v1, Lc/b/a/c/c/a;->aa:Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/b/a/c/c/a;

    invoke-direct {v1}, Lc/b/a/c/c/a;-><init>()V

    const-string v3, "\u78c1\u8d34\u6a21\u5f0f"

    .line 11
    iput-object v3, v1, Lc/b/a/c/c/a;->Y:Ljava/lang/String;

    .line 12
    iput-boolean v2, v1, Lc/b/a/c/c/a;->ca:Z

    const v2, 0x7f0f0045

    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, v1, Lc/b/a/c/c/a;->aa:Ljava/lang/String;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/b/a/c/c/a;

    invoke-direct {v1}, Lc/b/a/c/c/a;-><init>()V

    const-string v2, "\u8bbe\u7f6e"

    .line 16
    iput-object v2, v1, Lc/b/a/c/c/a;->Y:Ljava/lang/String;

    const/16 v2, 0x8

    .line 17
    iput v2, v1, Lc/b/a/c/c/a;->da:I

    const v2, 0x7f0f0044

    .line 18
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    iput-object v2, v1, Lc/b/a/c/c/a;->aa:Ljava/lang/String;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/lingc/notification/ui/intro/IntroActivity$a;

    invoke-virtual {p0}, La/b/h/a/k;->d()La/b/h/a/o;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/lingc/notification/ui/intro/IntroActivity$a;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;La/b/h/a/o;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(La/b/h/j/n;)V

    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->r:Landroid/widget/ImageView;

    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->s:Landroid/widget/ImageView;

    const v1, 0x7f09006d

    invoke-virtual {p0, v1}, La/b/i/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->p:Landroid/widget/TextView;

    new-instance v2, Lc/b/a/c/c/b;

    invoke-direct {v2, p0}, Lc/b/a/c/c/b;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->q:Landroid/widget/TextView;

    new-instance v2, Lc/b/a/c/c/c;

    invoke-direct {v2, p0}, Lc/b/a/c/c/c;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->r:Landroid/widget/ImageView;

    new-instance v2, Lc/b/a/c/c/d;

    invoke-direct {v2, p0, p1}, Lc/b/a/c/c/d;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/lingc/notification/ui/intro/IntroActivity;->s:Landroid/widget/ImageView;

    new-instance v2, Lc/b/a/c/c/e;

    invoke-direct {v2, p0, p1}, Lc/b/a/c/c/e;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lc/b/a/c/c/f;

    invoke-direct {v1, p0, v0}, Lc/b/a/c/c/f;-><init>(Lcom/lingc/notification/ui/intro/IntroActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$f;)V

    return-void
.end method
