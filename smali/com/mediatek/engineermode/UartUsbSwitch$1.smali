.class Lcom/mediatek/engineermode/UartUsbSwitch$1;
.super Landroid/content/BroadcastReceiver;
.source "UartUsbSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/UartUsbSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/UartUsbSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/UartUsbSwitch;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    iget-object v5, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$002(Lcom/mediatek/engineermode/UartUsbSwitch;I)I

    .line 58
    :cond_0
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const-string v5, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 61
    .local v1, "isHwUsbConnected":Z
    :goto_0
    const-string v5, "SettingUsbCharging"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 63
    .local v2, "mSettingUsbCharging":Z
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-static {v5}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$000(Lcom/mediatek/engineermode/UartUsbSwitch;)I

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-static {v4, v3}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$100(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V

    .line 71
    .end local v1    # "isHwUsbConnected":Z
    .end local v2    # "mSettingUsbCharging":Z
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v4

    .line 59
    goto :goto_0

    .line 66
    .restart local v1    # "isHwUsbConnected":Z
    .restart local v2    # "mSettingUsbCharging":Z
    :cond_4
    iget-object v5, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-static {v5, v4}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$100(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V

    .line 67
    iget-object v4, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const v5, 0x7f080661

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 68
    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/UartUsbSwitch;->finish()V

    goto :goto_1
.end method
