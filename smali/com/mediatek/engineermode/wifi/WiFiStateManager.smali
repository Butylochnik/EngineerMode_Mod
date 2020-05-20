.class public Lcom/mediatek/engineermode/wifi/WiFiStateManager;
.super Ljava/lang/Object;
.source "WiFiStateManager.java"


# static fields
.field protected static final CHIP_ID_5921:I = 0x5920

.field protected static final CHIP_ID_6620:I = 0x6620

.field public static final CHIP_READY:I = -0x4

.field private static final DEFAULT_WAIT_TIME:J = 0x64L

.field public static final ENABLE_WIFI_FAIL:I = -0x1

.field public static final INVALID_CHIP_ID:I = -0x2

.field public static final SET_TEST_MODE_FAIL:I = -0x3

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_WiFiStateManager"


# instance fields
.field private mChipID:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mChipID:I

    .line 64
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 66
    return-void
.end method


# virtual methods
.method public checkState(Landroid/content/Context;)I
    .locals 7
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x3

    .line 76
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_5

    .line 77
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 78
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-string v3, "EM/WiFi_WiFiStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After enable wifi, state is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 82
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 85
    :cond_0
    const-string v3, "EM/WiFi_WiFiStateManager"

    const-string v4, "enable wifi power failed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    return v2

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 90
    const-string v3, "EM/WiFi_WiFiStateManager"

    const-string v4, "enable wifi power failed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :cond_2
    sget-boolean v2, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v2, :cond_3

    .line 94
    const/4 v2, -0x4

    goto :goto_1

    .line 96
    :cond_3
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->initial()I

    move-result v2

    iput v2, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mChipID:I

    .line 97
    iget v2, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mChipID:I

    const/16 v3, 0x6620

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mChipID:I

    const/16 v3, 0x5920

    if-ne v2, v3, :cond_7

    .line 98
    :cond_4
    const-string v2, "EM/WiFi_WiFiStateManager"

    const-string v3, "Initialize succeed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-wide/16 v0, -0x1

    .line 100
    .local v0, "result":J
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setTestMode()I

    move-result v2

    int-to-long v0, v2

    .line 101
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 102
    monitor-enter p0

    .line 103
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    const-string v2, "EM/WiFi_WiFiStateManager"

    const-string v3, "setTestMode succeed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "result":J
    :cond_5
    iget v2, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mChipID:I

    goto :goto_1

    .line 104
    .restart local v0    # "result":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 107
    :cond_6
    const-string v2, "EM/WiFi_WiFiStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTestMode failed, ERROR_CODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, -0x3

    goto :goto_1

    .line 112
    .end local v0    # "result":J
    :cond_7
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public disableWiFi()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "EM/WiFi_WiFiStateManager"

    const-string v1, "disable wifi power succeed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v0, "EM/WiFi_WiFiStateManager"

    const-string v1, "disable wifi power failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
