.class Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;
.super Landroid/os/Handler;
.source "UartUsbSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/UartUsbSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/UartUsbSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/UartUsbSwitch;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 106
    const-string v1, "EM/UartUsbSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWorkerHandler Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    iget-object v2, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-static {v2}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$200(Lcom/mediatek/engineermode/UartUsbSwitch;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$300(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/String;I)Z

    move-result v0

    .line 91
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    new-instance v2, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;-><init>(Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;Z)V

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/UartUsbSwitch;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
