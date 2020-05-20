.class Lcom/mediatek/engineermode/dfo/DfoResolution$4;
.super Ljava/lang/Object;
.source "DfoResolution.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/dfo/DfoResolution;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 261
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$000(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$200(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$300(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v2}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$500(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$4;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$600(Lcom/mediatek/engineermode/dfo/DfoResolution;)[Landroid/widget/RadioButton;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 269
    :cond_0
    return-void

    .line 262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
