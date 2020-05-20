.class public Lcom/mediatek/engineermode/ChipSupport;
.super Ljava/lang/Object;
.source "ChipSupport.java"


# static fields
.field public static final CHIP_657X_SERIES_NEW:[I

.field public static final HAVE_MATV_FEATURE:I = 0x5

.field public static final MTK_6516_SUPPORT:I = 0x2

.field public static final MTK_6571_SUPPORT:I = 0x21

.field public static final MTK_6572_SUPPORT:I = 0x20

.field public static final MTK_6573_SUPPORT:I = 0x1

.field public static final MTK_6575_SUPPORT:I = 0x4

.field public static final MTK_6577_SUPPORT:I = 0x8

.field public static final MTK_6582_SUPPORT:I = 0x12

.field public static final MTK_6589_SUPPORT:I = 0x10

.field public static final MTK_6592_SUPPORT:I = 0x28

.field public static final MTK_8127_SUPPORT:I = 0x16

.field public static final MTK_8135_SUPPORT:I = 0x14

.field public static final MTK_AGPS_APP:I = 0x3

.field public static final MTK_BT_SUPPORT:I = 0x6

.field public static final MTK_FM_SUPPORT:I = 0x0

.field public static final MTK_FM_TX_SUPPORT:I = 0x1

.field public static final MTK_GPS_SUPPORT:I = 0x4

.field public static final MTK_NFC_SUPPORT:I = 0x9

.field public static final MTK_RADIO_SUPPORT:I = 0x2

.field public static final MTK_TTY_SUPPORT:I = 0x8

.field public static final MTK_UNKNOWN_SUPPORT:I = 0x0

.field public static final MTK_WLAN_SUPPORT:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/ChipSupport;->CHIP_657X_SERIES_NEW:[I

    .line 154
    const-string v0, "em_support_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 155
    return-void

    .line 105
    :array_0
    .array-data 4
        0x21
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getChip()I
.end method

.method public static isChipInSet([I)Z
    .locals 6
    .param p0, "chips"    # [I

    .prologue
    const/4 v5, 0x0

    .line 124
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v5

    .line 127
    :cond_1
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v2

    .line 128
    .local v2, "chip":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 129
    .local v1, "c":I
    if-ne v1, v2, :cond_2

    .line 130
    const/4 v5, 0x1

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isCurrentChipEquals(I)Z
    .locals 2
    .param p0, "targetChip"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    .line 120
    .local v0, "chip":I
    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCurrentChipHigher(IZ)Z
    .locals 3
    .param p0, "comparedChip"    # I
    .param p1, "allowEquel"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v0

    .line 110
    .local v0, "curChip":I
    if-eqz p1, :cond_2

    .line 111
    if-lt v0, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    if-gt v0, p0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static native isFeatureSupported(I)Z
.end method
