.class public Lc/b/a/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/b/a/d/e;


# direct methods
.method public constructor <init>(Lc/b/a/d/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/d/c;->a:Lc/b/a/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/b/a/d/c;->a:Lc/b/a/d/e;

    .line 1
    iget-object v1, v0, Lc/b/a/d/e;->d:Ljava/lang/String;

    const-string v2, "2.0.4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, La/b/i/a/l$a;

    iget-object v2, v0, Lc/b/a/d/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, La/b/i/a/l$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v2, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u53d1\u73b0\u6709\u53ef\u7528\u7248\u672c\u66f4\u65b0"

    iput-object v3, v2, Landroid/support/v7/app/AlertController$a;->f:Ljava/lang/CharSequence;

    const-string v2, "\u76ee\u6807\u7248\u672c\uff1a"

    .line 3
    invoke-static {v2}, Lc/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lc/b/a/d/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lc/b/a/d/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    iput-object v2, v3, Landroid/support/v7/app/AlertController$a;->h:Ljava/lang/CharSequence;

    .line 5
    new-instance v2, Lc/b/a/d/d;

    invoke-direct {v2, v0}, Lc/b/a/d/d;-><init>(Lc/b/a/d/e;)V

    .line 6
    iget-object v0, v1, La/b/i/a/l$a;->a:Landroid/support/v7/app/AlertController$a;

    const-string v3, "\u66f4\u65b0"

    iput-object v3, v0, Landroid/support/v7/app/AlertController$a;->i:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/support/v7/app/AlertController$a;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    const-string v3, "\u53d6\u6d88"

    .line 7
    iput-object v3, v0, Landroid/support/v7/app/AlertController$a;->l:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/support/v7/app/AlertController$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {v1}, La/b/i/a/l$a;->b()La/b/i/a/l;

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lc/b/a/d/e;->c:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lc/b/a/d/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u672a\u53d1\u73b0\u53ef\u7528\u7248\u672c\u66f4\u65b0"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
