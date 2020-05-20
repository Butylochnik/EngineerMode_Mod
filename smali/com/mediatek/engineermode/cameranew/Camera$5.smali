.class Lcom/mediatek/engineermode/cameranew/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/Camera;->showEvCalibrationDlg()V
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
    .line 1266
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "inputStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1269
    const/4 v5, 0x0

    .line 1270
    .local v5, "value":I
    const/4 v4, 0x1

    .line 1272
    .local v4, "validInput":Z
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1276
    :goto_0
    if-eqz v4, :cond_2

    .line 1277
    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v6, v6, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 1278
    .local v3, "param":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getEngEVCalOffset()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v2, v6, 0x32

    .line 1280
    .local v2, "offset":I
    const/16 v6, -0x1e

    if-lt v2, v6, :cond_0

    const/16 v6, 0x1e

    if-le v2, v6, :cond_1

    .line 1282
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const-string v7, "Offset must be -30 ~ 30"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1293
    .end local v2    # "offset":I
    .end local v3    # "param":Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0

    .line 1286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "offset":I
    .restart local v3    # "param":Landroid/hardware/Camera$Parameters;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EV Offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v7, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v8, 0x7f080547

    invoke-virtual {v7, v8}, Lcom/mediatek/engineermode/cameranew/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6200(Lcom/mediatek/engineermode/cameranew/Camera;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 1291
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "offset":I
    .end local v3    # "param":Landroid/hardware/Camera$Parameters;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/Camera$5;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const-string v7, "Invalid LV"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
