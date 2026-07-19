.class public Lc/b/a/c/b/p;
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


# direct methods
.method public constructor <init>(Lc/b/a/c/b/r;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0

    iput-object p2, p0, Lc/b/a/c/b/p;->a:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lc/b/a/c/b/p;->a:Landroid/support/v14/preference/SwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/TwoStatePreference;->e(Z)V

    return-void
.end method
