.class Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;
.super Landroid/widget/ImageView;
.source "ImageGallery.java"


# instance fields
.field final a:Lcom/whatsapp/gallerypicker/v;

.field private b:Landroid/graphics/Paint;

.field final c:Lcom/whatsapp/gallerypicker/ae;

.field private d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/whatsapp/gallerypicker/ae;Landroid/content/Context;Lcom/whatsapp/gallerypicker/v;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    iput-object p3, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->a:Lcom/whatsapp/gallerypicker/v;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    sget-boolean v7, Lcom/whatsapp/gallerypicker/ImagePreview;->x:Z

    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->a:Lcom/whatsapp/gallerypicker/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->a:Lcom/whatsapp/gallerypicker/v;

    invoke-static {v0}, Lcom/whatsapp/gallerypicker/av;->a(Lcom/whatsapp/gallerypicker/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->b:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getHeight()I

    move-result v8

    .line 4
    div-int/lit8 v9, v8, 0x7

    .line 20
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 1
    div-int/lit8 v0, v9, 0x4

    int-to-float v1, v0

    div-int/lit8 v0, v9, 0x4

    add-int/2addr v0, v6

    int-to-float v2, v0

    mul-int/lit8 v0, v9, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    mul-int/lit8 v0, v9, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    add-int v0, v6, v9

    if-eqz v7, :cond_4

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    invoke-static {v0}, Lcom/whatsapp/gallerypicker/ae;->a(Lcom/whatsapp/gallerypicker/ae;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/whatsapp/gallerypicker/ae;->a(Lcom/whatsapp/gallerypicker/ae;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    invoke-static {v0}, Lcom/whatsapp/gallerypicker/ae;->a(Lcom/whatsapp/gallerypicker/ae;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 17
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    invoke-static {v0}, Lcom/whatsapp/gallerypicker/ae;->a(Lcom/whatsapp/gallerypicker/ae;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->c:Lcom/whatsapp/gallerypicker/ae;

    invoke-static {v0}, Lcom/whatsapp/gallerypicker/ae;->a(Lcom/whatsapp/gallerypicker/ae;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_3
    return-void

    :cond_4
    move v6, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->getDefaultSize(II)I

    move-result v0

    .line 13
    invoke-virtual {p0, v0, v0}, Lcom/whatsapp/gallerypicker/ImageGallery$ImageAdapter$1;->setMeasuredDimension(II)V

    .line 19
    return-void
.end method
