.class Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "IcsListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;-><init>(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$600(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$600(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$600(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    .line 3
    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$600(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-static {v1}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$700(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->access$800(Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow$ResizePopupRunnable;->this$0:Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsListPopupWindow;->show()V

    .line 4
    :cond_0
    return-void
.end method
