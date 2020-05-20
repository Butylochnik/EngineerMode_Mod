.class Lcom/mediatek/engineermode/cameranew/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/Camera;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 2097
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngFlashDutyMin()I

    move-result v3

    .line 2098
    .local v3, "minDuty":I
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getEngFlashDutyMax()I

    move-result v2

    .line 2099
    .local v2, "maxDuty":I
    const/4 v4, 0x1

    .line 2100
    .local v4, "validInput":Z
    const/4 v0, -0x1

    .line 2102
    .local v0, "duty":I
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2106
    :goto_0
    if-eqz v4, :cond_0

    if-lt v0, v3, :cond_0

    if-le v0, v2, :cond_1

    .line 2107
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid strobe duty, must range from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2115
    :goto_1
    return-void

    .line 2103
    :catch_0
    move-exception v1

    .line 2104
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0

    .line 2111
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v5, p3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6302(Lcom/mediatek/engineermode/cameranew/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 2112
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setEngFlashDuty(I)V

    .line 2113
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v5, v5, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method
