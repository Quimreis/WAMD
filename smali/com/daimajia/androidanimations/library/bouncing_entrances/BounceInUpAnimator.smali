.class public Lcom/daimajia/androidanimations/library/bouncing_entrances/BounceInUpAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "BounceInUpAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/bouncing_entrances/BounceInUpAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v5, [Lcom/nineoldandroids/animation/Animator;

    const-string v2, "translationY"

    new-array v3, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v6

    const/high16 v4, -0x3e100000

    aput v4, v3, v7

    const/high16 v4, 0x41200000

    aput v4, v3, v5

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "alpha"

    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 39
    return-void

    .line 35
    :array_0
    .array-data 4
        0x0
        0x3f800000
        0x3f800000
        0x3f800000
    .end array-data
.end method
