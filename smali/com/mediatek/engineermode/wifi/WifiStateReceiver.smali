.class public Lcom/mediatek/engineermode/wifi/WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiStateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onWifiDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->dismissCtiaEnabledNotify(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private onWifiEnbled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->isWifiCtiaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->initWifiCtiaOnEnabled(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->notifyCtiaEnabled(Landroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "wifi_state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 18
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 26
    :pswitch_0
    const-string v1, "WifiStateReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled wifi state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 20
    .restart local v0    # "state":I
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/wifi/WifiStateReceiver;->onWifiEnbled(Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/wifi/WifiStateReceiver;->onWifiDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
