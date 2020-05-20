.class public Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.super Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.source "WiFiTx6620.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;,
        Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    }
.end annotation


# static fields
.field private static final ANTENNA:I = 0x0

.field private static final BANDWIDTH_40MHZ_MASK:I = 0x8000

.field private static final BANDWIDTH_INDEX_40:I = 0x1

.field private static final BIT_8_MASK:I = 0xff

.field private static final CCK_RATE_NUMBER:I = 0x4

.field private static final COMMAND_INDEX_CARRIER:I = 0x6

.field private static final COMMAND_INDEX_CARRIER_NEW:I = 0xa

.field private static final COMMAND_INDEX_LOCALFREQ:I = 0x5

.field private static final COMMAND_INDEX_OUTPUTPOWER:I = 0x4

.field private static final COMMAND_INDEX_STARTTX:I = 0x1

.field private static final COMMAND_INDEX_STOPTEST:I = 0x0

.field private static final CWMODE_CCKPI:I = 0x5

.field private static final CWMODE_OFDMLTF:I = 0x2

.field private static final DEFAULT_PKT_CNT:I = 0xbb8

.field private static final DEFAULT_PKT_LEN:I = 0x400

.field private static final DEFAULT_TX_GAIN:I = 0x0

.field private static final HANDLER_EVENT_FINISH:I = 0x4

.field private static final HANDLER_EVENT_GO:I = 0x1

.field private static final HANDLER_EVENT_STOP:I = 0x2

.field private static final HANDLER_EVENT_TIMER:I = 0x3

.field private static final LENGTH_3:I = 0x3

.field private static final MAX_HIGH_RATE_NUMBER:I = 0x15

.field private static final MAX_LOWER_RATE_NUMBER:I = 0xc

.field private static final MAX_VALUE:J = -0x1L

.field private static final MIN_VALUE:I = 0x0

.field private static final ONE_SENCOND:I = 0x3e8

.field private static final PACKCONTENT_BUFFER:[J

.field private static final RATE_MCS_INDEX:I = 0x20

.field private static final RATE_MODE_MASK:I = 0x1f

.field private static final RATE_NOT_MCS_INDEX:I = 0x7

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_Tx"

.field private static final TEST_MODE_CARRIER:I = 0x2

.field private static final TEST_MODE_DUTY:I = 0x1

.field private static final TEST_MODE_LEAKAGE:I = 0x3

.field private static final TEST_MODE_POWEROFF:I = 0x4

.field private static final TEST_MODE_TX:I = 0x0

.field private static final TXOP_LIMIT_VALUE:I = 0x20000


# instance fields
.field mBandwidth:[Ljava/lang/String;

.field private mBandwidthIndex:I

.field private mBandwidthSpinner:Landroid/widget/Spinner;

.field private mBtnGo:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mCCKRateSelected:Z

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

.field private mCntNum:J

.field private mEtPkt:Landroid/widget/EditText;

.field private mEtPktCnt:Landroid/widget/EditText;

.field private mEtTxGain:Landroid/widget/EditText;

.field private mEventHandler:Landroid/os/Handler;

.field mGuardInterval:[Ljava/lang/String;

.field private mGuardIntervalIndex:I

.field private mGuardIntervalSpinner:Landroid/widget/Spinner;

.field private final mHandler:Landroid/os/Handler;

.field private mHighRateSelected:Z

.field private mLastBandwidth:I

.field private mLastRateGroup:I

.field mMode:[Ljava/lang/String;

.field private mModeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModeIndex:I

.field private mModeSpinner:Landroid/widget/Spinner;

.field private mPktLenNum:J

.field mPreamble:[Ljava/lang/String;

.field private mPreambleAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreambleIndex:I

.field private mPreambleSpinner:Landroid/widget/Spinner;

.field private mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

.field private mRateSpinner:Landroid/widget/Spinner;

.field private mTestInPorcess:Z

.field private mTestThread:Landroid/os/HandlerThread;

.field private mTxGainVal:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->PACKCONTENT_BUFFER:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0xddfffc
        0x33440006
        0x55660008
        0x55550019
        -0x5555ffe5
        -0x4444ffe3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;-><init>()V

    .line 98
    iput-boolean v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    .line 99
    iput-boolean v4, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    .line 100
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    .line 101
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    .line 102
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 103
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    .line 104
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 105
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    .line 106
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    .line 107
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    .line 108
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    .line 109
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    .line 110
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    .line 115
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    .line 116
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    .line 117
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 119
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    .line 123
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    .line 124
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    .line 125
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    .line 126
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    .line 129
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    .line 130
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 131
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    .line 132
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 134
    iput-boolean v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    .line 135
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    .line 136
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$1;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "continuous packet tx"

    aput-object v1, v0, v3

    const-string v1, "100% duty cycle"

    aput-object v1, v0, v4

    const-string v1, "carrier suppression"

    aput-object v1, v0, v5

    const-string v1, "local leakage"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "enter power off"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    .line 150
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    aput-object v1, v0, v3

    const-string v1, "CCK short"

    aput-object v1, v0, v4

    const-string v1, "802.11n mixed mode"

    aput-object v1, v0, v5

    const-string v1, "802.11n green field"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "20MHz"

    aput-object v1, v0, v3

    const-string v1, "40MHz"

    aput-object v1, v0, v4

    const-string v1, "U20MHz"

    aput-object v1, v0, v5

    const-string v1, "L20MHz"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    .line 153
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "800ns"

    aput-object v1, v0, v3

    const-string v1, "400ns"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    .line 746
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->updateChannels()V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    return p1
.end method

.method static synthetic access$1602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    return-wide v0
.end method

.method static synthetic access$2100()[J
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->PACKCONTENT_BUFFER:[J

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    return p1
.end method

.method private onClickBtnTxGo()V
    .locals 19

    .prologue
    .line 621
    const-wide/16 v8, 0x0

    .line 622
    .local v8, "u4TxGainVal":J
    const/4 v4, 0x0

    .line 627
    .local v4, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 628
    .local v7, "pwrVal":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v7

    float-to-long v8, v10

    .line 629
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v12, 0x7f0801f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    long-to-double v15, v8

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 641
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    const-wide/16 v12, 0xff

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    const-wide/16 v10, 0xff

    :goto_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 642
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const-wide/16 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 643
    const-string v10, "EM/WiFi_Tx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wifi Tx Test : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    packed-switch v10, :pswitch_data_0

    .line 696
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-nez v10, :cond_2

    .line 697
    const-string v10, "EM/WiFi_Tx"

    const-string v11, "eventHandler = null"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v7    # "pwrVal":F
    :goto_3
    return-void

    .line 635
    :catch_0
    move-exception v3

    .line 636
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v10, "invalid input value"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 641
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "pwrVal":F
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    goto :goto_0

    .line 642
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    goto :goto_1

    .line 647
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 648
    .local v5, "pktNum":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 654
    .local v1, "cntNum":J
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    .line 655
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    goto :goto_2

    .line 649
    .end local v1    # "cntNum":J
    .end local v5    # "pktNum":J
    :catch_1
    move-exception v3

    .line 650
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "invalid input value"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 699
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 701
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    goto :goto_3

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onClickBtnTxStop()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 725
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "eventHandler = null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    sparse-switch v0, :sswitch_data_0

    .line 740
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setStandBy()I

    .line 744
    :goto_1
    :sswitch_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 733
    :sswitch_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setPnpPower(J)I

    .line 734
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setTestMode()I

    .line 735
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 736
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    goto :goto_1

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private setViewEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 706
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 711
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 714
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 719
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 720
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 721
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uiUpdateTxPower()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x3

    const/4 v10, 0x0

    .line 486
    const/4 v9, 0x0

    .line 487
    .local v9, "ucGain":S
    const-wide/16 v7, 0x0

    .line 490
    .local v7, "i4TxPwrGain":J
    new-array v4, v5, [J

    .line 491
    .local v4, "gain":[J
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v6

    .line 493
    .local v6, "comboChannelIndex":I
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-ne v0, v11, :cond_1

    const v0, 0x8000

    :goto_0
    or-int/2addr v6, v0

    .line 496
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rateIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    int-to-long v0, v6

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    int-to-long v2, v2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->readTxPowerFromEEPromEx(JJ[JI)I

    move-result v0

    if-nez v0, :cond_0

    .line 501
    aget-wide v7, v4, v10

    .line 504
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i4TxPwrGain from uiUpdateTxPower is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-wide/16 v0, 0xff

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-short v9, v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v2, 0x7f0801f4

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    int-to-double v11, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    return-void

    :cond_1
    move v0, v10

    .line 493
    goto/16 :goto_0
.end method

.method private updateChannels()V
    .locals 11

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "bUpdateWifiChannel":Z
    sget-boolean v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHas14Ch:Z

    if-eqz v7, :cond_0

    .line 524
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 525
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v7

    if-nez v7, :cond_4

    .line 526
    sget-boolean v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    if-eqz v7, :cond_3

    .line 527
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 529
    .local v4, "index":I
    const/4 v7, -0x1

    if-ne v7, v4, :cond_2

    .line 530
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 532
    const/4 v1, 0x1

    .line 551
    .end local v4    # "index":I
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    if-eqz v7, :cond_7

    .line 552
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 553
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    if-nez v7, :cond_6

    .line 554
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    int-to-long v7, v2

    sget-object v9, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    cmp-long v7, v7, v9

    if-gtz v7, :cond_7

    .line 555
    sget-object v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v7, v7, v2

    const-wide/16 v9, 0xe

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 556
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v0, v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 557
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v8, v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 559
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 560
    const/4 v1, 0x1

    .line 554
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 534
    .end local v2    # "i":I
    .restart local v4    # "index":I
    :cond_2
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    invoke-virtual {v7, v8, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 537
    const/4 v1, 0x1

    goto :goto_0

    .line 540
    .end local v4    # "index":I
    :cond_3
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 542
    const/4 v1, 0x1

    goto :goto_0

    .line 544
    :cond_4
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    if-nez v7, :cond_0

    .line 545
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xd

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 547
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 556
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "s":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 566
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v7

    if-nez v7, :cond_7

    .line 568
    const/16 v2, 0xe

    .line 569
    .restart local v2    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 570
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 571
    const/4 v1, 0x1

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 576
    .end local v2    # "i":I
    :cond_7
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    iget v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-eq v7, v8, :cond_b

    .line 577
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 578
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 579
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 580
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 581
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 582
    const/4 v1, 0x1

    .line 584
    :cond_8
    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 585
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 587
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 589
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->isContains(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 590
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    const/16 v9, 0xb

    invoke-virtual {v7, v8, v9}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 593
    :cond_9
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->isContains(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 594
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 597
    :cond_a
    const/4 v1, 0x1

    .line 600
    :cond_b
    if-eqz v1, :cond_c

    .line 601
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v7, v8, v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->updateWifiChannel(Lcom/mediatek/engineermode/wifi/ChannelInfo;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;)V

    .line 602
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    .line 604
    :cond_c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 454
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v0, :cond_1

    .line 455
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->showDialog(I)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 460
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onClickBtnTxGo()V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onClickBtnTxStop()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x1090009

    const v12, 0x1090008

    .line 232
    invoke-super {p0, p1}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v8, 0x7f0300b0

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setContentView(I)V

    .line 235
    const v8, 0x7f0b0578

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 236
    const v8, 0x7f0b0584

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    .line 237
    const v8, 0x7f0b057a

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    .line 238
    const v8, 0x7f0b057c

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    .line 239
    const v8, 0x7f0b057e

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    .line 240
    const v8, 0x7f0b0580

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    .line 241
    const v8, 0x7f0b0582

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    .line 246
    const v8, 0x7f0b0586

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    .line 247
    const v8, 0x7f0b0587

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    .line 248
    const v8, 0x7f0b056f

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 249
    const v8, 0x7f0b0585

    invoke-virtual {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    .line 251
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "Wifi Tx Test"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    .line 252
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v8, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    .line 254
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-direct {v8}, Lcom/mediatek/engineermode/wifi/ChannelInfo;-><init>()V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 257
    new-instance v8, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-direct {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;-><init>()V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    .line 270
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 272
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 274
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    int-to-long v8, v3

    sget-object v10, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 275
    sget-object v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, 0xe

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 285
    :cond_0
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 286
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 303
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 305
    .local v6, "rateAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v6, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 307
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getRateNumber()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 308
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->access$400(Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v6    # "rateAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v0, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 279
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Channel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v9, v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 280
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 274
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .restart local v7    # "s":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 310
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    .restart local v6    # "rateAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 311
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 354
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v9, v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mOFDMStartIndex:I

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 355
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    .line 357
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 359
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 360
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 362
    :cond_5
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 363
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 381
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    .line 383
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 385
    const/4 v3, 0x0

    :goto_4
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 386
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 388
    :cond_6
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 389
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 403
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 405
    .local v1, "bandwidthAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 407
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_7

    .line 408
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 410
    :cond_7
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 411
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 428
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 430
    .local v2, "guardIntervalAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 432
    const/4 v3, 0x0

    :goto_6
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_8

    .line 433
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 435
    :cond_8
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 436
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$7;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$7;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 448
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    .line 449
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    if-eqz v0, :cond_1

    .line 471
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v0, :cond_0

    .line 472
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 475
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 479
    invoke-super {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onDestroy()V

    .line 480
    return-void
.end method
