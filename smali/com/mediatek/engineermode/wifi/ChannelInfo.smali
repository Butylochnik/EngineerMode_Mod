.class public Lcom/mediatek/engineermode/wifi/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"


# static fields
.field public static final CHANNEL_NUMBER_14:I = 0xe

.field private static final DEFAULT_CHANNEL_COUNT:I = 0xb

.field private static final MAX_CHANNEL_COUNT:I = 0x41

.field private static final TAG:Ljava/lang/String; = "EM/Wifi_ChannelInfo"

.field protected static sChannels:[J

.field protected static sHas14Ch:Z

.field protected static sHasUpper14Ch:Z


# instance fields
.field final mChannelFreq:[I

.field final mChannelName:[Ljava/lang/String;

.field protected mChannelSelect:Ljava/lang/String;

.field final mFullChannelName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    .line 47
    sput-boolean v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHas14Ch:Z

    .line 48
    sput-boolean v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channel 1 [2412MHz]"

    aput-object v1, v0, v3

    const-string v1, "Channel 2 [2417MHz]"

    aput-object v1, v0, v4

    const-string v1, "Channel 3 [2422MHz]"

    aput-object v1, v0, v5

    const-string v1, "Channel 4 [2427MHz]"

    aput-object v1, v0, v6

    const-string v1, "Channel 5 [2432MHz]"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Channel 6 [2437MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Channel 7 [2442MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Channel 8 [2447MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Channel 9 [2452MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Channel 10 [2457MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Channel 11 [2462MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Channel 12 [2467MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Channel 13 [2472MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Channel 14 [2484MHz]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelName:[Ljava/lang/String;

    .line 59
    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Channel 1 [2412MHz]"

    aput-object v1, v0, v3

    const-string v1, "Channel 2 [2417MHz]"

    aput-object v1, v0, v4

    const-string v1, "Channel 3 [2422MHz]"

    aput-object v1, v0, v5

    const-string v1, "Channel 4 [2427MHz]"

    aput-object v1, v0, v6

    const-string v1, "Channel 5 [2432MHz]"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Channel 6 [2437MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Channel 7 [2442MHz]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Channel 8 [2447MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Channel 9 [2452MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Channel 10 [2457MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Channel 11 [2462MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Channel 12 [2467MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Channel 13 [2472MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Channel 14 [2484MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Channel 36 [5180MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Channel 40 [5200MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Channel 44 [5220MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Channel 48 [5240MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Channel 52 [5260MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Channel 56 [5280MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Channel 60 [5300MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Channel 64 [5320MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Channel 100 [5500MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Channel 104 [5520MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Channel 108 [5540MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Channel 112 [5560MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Channel 116 [5580MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Channel 120 [5600MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Channel 124 [5620MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Channel 128 [5640MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Channel 132 [5660MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Channel 136 [5680MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Channel 140 [5700MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Channel 149 [5745MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Channel 153 [5765MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Channel 157 [5785MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Channel 161 [5805MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Channel 165 [5825MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Channel 169 [5845MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Channel 173 [5865MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Channel 177 [5885MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Channel 180 [5905MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Channel 183 [4915MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Channel 184 [4920MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Channel 185 [4925MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Channel 187 [4935MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Channel 188 [4940MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Channel 189 [4945MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Channel 192 [4960MHz]"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Channel 196 [4980MHz]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelFreq:[I

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 171
    return-void

    .line 87
    nop

    :array_0
    .array-data 4
        0x24cde0
        0x24e168
        0x24f4f0
        0x250878
        0x251c00
        0x252f88
        0x254310
        0x255698
        0x256a20
        0x257da8
        0x259130
        0x25a4b8
        0x25b840
        0x25e720
        0x4f0a60
        0x4f5880
        0x4fa6a0
        0x4ff4c0
        0x5042e0
        0x509100
        0x50df20
        0x512d40
        0x53ec60
        0x543a80
        0x5488a0
        0x54d6c0
        0x5524e0
        0x557300
        0x55c120
        0x560f40
        0x565d60
        0x56ab80
        0x56f9a0
        0x57a968
        0x57f788
        0x5845a8
        0x5893c8
        0x58e1e8
        0x593008
        0x597e28
        0x59cc48
        0x5a1a68
        0x4aff38
        0x4b12c0
        0x4b2648
        0x4b4d58
        0x4b60e0
        0x4b7468
        0x4baf00
        0x4bfd20
    .end array-data
.end method

.method public static getSupportChannels()V
    .locals 9

    .prologue
    const-wide/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    const/16 v1, 0x41

    new-array v1, v1, [J

    sput-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    .line 143
    sget-boolean v1, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v1, :cond_3

    .line 144
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->getSupportChannelList([J)I

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const-string v1, "EM/Wifi_ChannelInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH channels[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 147
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v1, v1, v0

    cmp-long v1, v7, v1

    if-nez v1, :cond_0

    .line 148
    sput-boolean v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHas14Ch:Z

    .line 150
    :cond_0
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    .line 151
    sput-boolean v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    .line 153
    :cond_1
    const-string v1, "EM/Wifi_ChannelInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const-wide/16 v2, 0xb

    aput-wide v2, v1, v5

    .line 157
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0xb

    if-ge v0, v1, :cond_4

    .line 158
    sget-object v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "i":I
    :cond_3
    const-string v1, "EM/Wifi_ChannelInfo"

    const-string v2, "Wifi is not initialed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    return-void
.end method


# virtual methods
.method public getChannelFreq()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelFreq:[I

    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getChannelIndex()I
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 114
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isContains(I)Z
    .locals 6
    .param p1, "channel"    # I

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v4, v4, v1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 131
    int-to-long v2, p1

    sget-object v4, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 132
    const/4 v1, 0x1

    .line 135
    :cond_0
    return v1

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
