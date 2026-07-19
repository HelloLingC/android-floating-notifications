.class public Lcom/lingc/notification/ui/intro/IntroActivity$a;
.super La/b/h/a/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lingc/notification/ui/intro/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lingc/notification/ui/intro/IntroActivity;La/b/h/a/o;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/h/a/o;",
            "Ljava/util/List<",
            "Lc/b/a/c/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, La/b/h/a/z;-><init>(La/b/h/a/o;)V

    iput-object p3, p0, Lcom/lingc/notification/ui/intro/IntroActivity$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/lingc/notification/ui/intro/IntroActivity$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
