.class public Lc/b/a/c/b/a;
.super La/b/i/f/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/i/f/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, La/b/i/f/p;->Y:La/b/i/f/v;

    const-string p2, "floatingSettings"

    .line 2
    iput-object p2, p1, La/b/i/f/v;->f:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p1, La/b/i/f/v;->c:Landroid/content/SharedPreferences;

    const p1, 0x7f120001

    .line 3
    invoke-virtual {p0, p1}, La/b/i/f/p;->c(I)V

    return-void
.end method
