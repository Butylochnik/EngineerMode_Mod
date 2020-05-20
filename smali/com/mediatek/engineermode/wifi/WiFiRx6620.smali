.class public Lcom/mediatek/engineermode/wifi/WiFiRx6620;
.super Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.source "WiFiRx6620.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BANDWIDTH_INDEX_40:I = 0x1

.field private static final HANDLER_EVENT_RX:I = 0x2

.field protected static final HANDLER_RX_DELAY_TIME:J = 0x3e8L

.field private static final PERCENT:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_Rx"

.field private static final TEXT_ZERO:Ljava/lang/String; = "0"

.field private static final WAIT_COUNT:I = 0xa


# instance fields
.field private final mBandwidth:[Ljava/lang/String;

.field private mBandwidthIndex:I

.field private mBandwidthSpinner:Landroid/widget/Spinner;

.field private mBtnGo:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

.field private mChannelAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelSpinner:Landroid/widget/Spinner;

.field private final mHandler:Landroid/os/Handler;

.field private mInitData:[J

.field private final mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mTvFcs:Landroid/widget/TextView;

.field private mTvPer:Landroid/widget/TextView;

.field private mTvRx:Landroid/widget/TextView;

.field private mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;-><init>()V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "20MHz"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "40MHz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "U20MHz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "L20MHz"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidth:[Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;

    .line 65
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;

    .line 66
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;

    .line 67
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnGo:Landroid/widget/Button;

    .line 68
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnStop:Landroid/widget/Button;

    .line 69
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 70
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 71
    iput v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I

    .line 73
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 74
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    .line 75
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 76
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mInitData:[J

    .line 77
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFiRx6620$1;-><init>(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFiRx6620$2;-><init>(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/wifi/WiFiRx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidth:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/wifi/WiFiRx6620;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private onClickBtnRxGo()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 260
    const/4 v0, -0x1

    .line 261
    .local v0, "i":I
    const/4 v1, 0x2

    .line 262
    .local v1, "len":I
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mInitData:[J

    invoke-static {v2, v7}, Lcom/mediatek/engineermode/wifi/EMWifi;->getPacketRxStatus([JI)I

    .line 263
    const-string v2, "EM/WiFi_Rx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before rx test: rx ok = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mInitData:[J

    aget-wide v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v2, "EM/WiFi_Rx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before rx test: fcs error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mInitData:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    .line 272
    const-wide/16 v2, 0x9

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 275
    const-wide/16 v2, 0xf

    iget v4, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthIndex:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 277
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 278
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->setViewEnabled(Z)V

    .line 283
    return-void
.end method

.method private onClickBtnRxStop()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    new-array v1, v6, [J

    .line 294
    .local v1, "u4Value":[J
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 296
    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v7, v8}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v1, v5

    .line 297
    aget-wide v2, v1, v5

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->setViewEnabled(Z)V

    .line 305
    return-void

    .line 300
    :cond_1
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 301
    const-string v2, "EM/WiFi_Rx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop Rx test failed at the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "times try"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setViewEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnStop:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 318
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 236
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v0, :cond_1

    .line 237
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->showDialog(I)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->onClickBtnRxGo()V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->onClickBtnRxStop()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x1090009

    const v10, 0x1090008

    const v7, 0x7f0801e4

    .line 189
    invoke-super {p0, p1}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const v6, 0x7f0300af

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->setContentView(I)V

    .line 191
    const v6, 0x7f0b0571

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;

    .line 192
    const v6, 0x7f0b0573

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;

    .line 193
    const v6, 0x7f0b0575

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;

    .line 194
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvFcs:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvRx:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mTvPer:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 197
    const v6, 0x7f0b0576

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnGo:Landroid/widget/Button;

    .line 198
    const v6, 0x7f0b0577

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnStop:Landroid/widget/Button;

    .line 199
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const/4 v6, 0x2

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mInitData:[J

    .line 202
    new-instance v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-direct {v6}, Lcom/mediatek/engineermode/wifi/ChannelInfo;-><init>()V

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 203
    const v6, 0x7f0b056d

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 204
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, p0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 206
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 208
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 209
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    int-to-long v6, v2

    sget-object v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 210
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v0, v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 211
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v7, v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 209
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .restart local v5    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 218
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mChannelSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    const v6, 0x7f0b056f

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 222
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 224
    .local v1, "bwAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 226
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidth:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 227
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidth:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 229
    :cond_3
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 230
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 231
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->setViewEnabled(Z)V

    .line 232
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiRx6620;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v0, :cond_0

    .line 251
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 253
    :cond_0
    invoke-super {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onDestroy()V

    .line 254
    return-void
.end method
