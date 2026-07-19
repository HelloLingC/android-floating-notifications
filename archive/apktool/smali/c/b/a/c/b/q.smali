.class public Lc/b/a/c/b/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/r;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v14/preference/SwitchPreference;

.field public final synthetic b:Lc/b/a/c/b/r;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/r;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/q;->b:Lc/b/a/c/b/r;

    iput-object p2, p0, Lc/b/a/c/b/q;->a:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/b/q;->b:Lc/b/a/c/b/r;

    iget-object p1, p1, Lc/b/a/c/b/r;->a:Lc/b/a/c/b/y;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    const-class p2, Lcom/lingc/notification/AccessibilityService;

    invoke-static {p1, p2}, Lcom/lingc/notification/ui/activities/SplashActivity;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/a/c/b/q;->a:Landroid/support/v14/preference/SwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/TwoStatePreference;->e(Z)V

    iget-object p1, p0, Lc/b/a/c/b/q;->b:Lc/b/a/c/b/r;

    iget-object p1, p1, Lc/b/a/c/b/r;->a:Lc/b/a/c/b/y;

    invoke-virtual {p1}, La/b/h/a/i;->e()La/b/h/a/k;

    move-result-object p1

    const-string v0, "\u6e05\u5148\u524d\u5f80\u6743\u9650\u5f15\u5bfc\u6253\u5f00\u65e0\u969c\u788d\u670d\u52a1"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
