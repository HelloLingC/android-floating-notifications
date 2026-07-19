.class public Lc/b/a/c/b/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/c/b/D;->a(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/D;Landroid/support/v7/preference/Preference;)V
    .locals 0

    iput-object p2, p0, Lc/b/a/c/b/C;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lc/b/a/c/b/C;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 p2, 0x0

    const-string v0, "910708531"

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lc/b/a/c/b/C;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->b()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u5df2\u590d\u5236"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
