.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;

.field public nodeDependents:Ljava/util/ArrayList;

.field public tmpDependencies:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 15
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .line 25
    return-void
.end method


# virtual methods
.method public addDependency(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    iget-object v0, p1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 6
    iget-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 7
    :cond_2
    iget-object v0, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method

.method public clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .locals 2

    .prologue
    .line 14
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 4
    :catch_0
    move-exception v0

    .line 20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
