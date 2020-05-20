.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
.super Ljava/lang/Object;
.source "WiFiTx6620.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RateInfo"
.end annotation


# static fields
.field private static final EEPROM_RATE_GROUP_CCK:S = 0x0s

.field private static final EEPROM_RATE_GROUP_OFDM_12_18M:S = 0x2s

.field private static final EEPROM_RATE_GROUP_OFDM_24_36M:S = 0x3s

.field private static final EEPROM_RATE_GROUP_OFDM_48_54M:S = 0x4s

.field private static final EEPROM_RATE_GROUP_OFDM_6_9M:S = 0x1s

.field private static final EEPROM_RATE_GROUP_OFDM_MCS0_32:S = 0x5s


# instance fields
.field mOFDMStartIndex:I

.field private final mPszRate:[Ljava/lang/String;

.field private final mRateCfg:[I

.field mRateIndex:I

.field private final mUcRateGroupEep:[S


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 165
    iput v4, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mOFDMStartIndex:I

    .line 167
    new-array v0, v3, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mUcRateGroupEep:[S

    .line 180
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1M"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "2M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5.5M"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "11M"

    aput-object v2, v0, v1

    const-string v1, "6M"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "9M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "18M"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "24M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "36M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "48M"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "54M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MCS0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MCS1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MCS2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MCS3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MCS4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MCS5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MCS6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MCS7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MCS32"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    .line 188
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateCfg:[I

    return-void

    .line 167
    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    .line 188
    nop

    :array_1
    .array-data 4
        0x2
        0x4
        0xb
        0x16
        0xc
        0x12
        0x18
        0x24
        0x30
        0x48
        0x60
        0x6c
        0x16
        0xc
        0x12
        0x18
        0x24
        0x30
        0x48
        0x60
        0x6c
    .end array-data
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getRate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getRateCfg()I
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateCfg:[I

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget v0, v0, v1

    return v0
.end method

.method getRateNumber()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method getUcRateGroupEep()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mUcRateGroupEep:[S

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget-short v0, v0, v1

    return v0
.end method
