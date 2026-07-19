.class public Lc/b/a/c/b/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/A;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/c/b/A;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/A;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/c/b/z;->a:Lc/b/a/c/b/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "https://github.com/HelloLingC/floating-tile"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lc/b/a/c/b/z;->a:Lc/b/a/c/b/A;

    iget-object p2, p2, Lc/b/a/c/b/A;->a:Lcom/lingc/notification/ui/fragment/OtherFragment$AboutFragment;

    invoke-virtual {p2, p1}, La/b/h/a/i;->a(Landroid/content/Intent;)V

    return-void
.end method
