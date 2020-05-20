.class Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;
.super Ljava/lang/Object;
.source "UartUsbSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iput-boolean p2, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v0, v0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const-string v1, "usb"

    iget-object v2, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v2, v2, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-static {v2}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$200(Lcom/mediatek/engineermode/UartUsbSwitch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$400(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/Boolean;)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v0, v0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$100(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v1, v0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->this$1:Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;

    iget-object v3, v3, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const v4, 0x7f080660

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/UartUsbSwitch;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/mediatek/engineermode/UartUsbSwitch$WorkerHandler$1;->val$result:Z

    if-eqz v0, :cond_0

    const-string v0, " success"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$500(Lcom/mediatek/engineermode/UartUsbSwitch;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 97
    :cond_0
    const-string v0, " fail"

    goto :goto_0
.end method
