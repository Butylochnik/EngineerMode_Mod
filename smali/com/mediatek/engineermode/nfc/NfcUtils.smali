.class public Lcom/mediatek/engineermode/nfc/NfcUtils;
.super Ljava/lang/Object;
.source "NfcUtils.java"


# static fields
.field private static final NUM_4:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 14
    const-string v1, ""

    .line 15
    .local v1, "res":Ljava/lang/String;
    instance-of v2, p0, [B

    if-eqz v2, :cond_1

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p0

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 17
    if-eqz v0, :cond_0

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x%02X "

    new-array v5, v7, [Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, [B

    check-cast v2, [B

    aget-byte v2, v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "i":I
    :cond_1
    instance-of v2, p0, [S

    if-eqz v2, :cond_3

    .line 23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    move-object v2, p0

    check-cast v2, [S

    check-cast v2, [S

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 24
    if-eqz v0, :cond_2

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_2

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x%04X "

    new-array v5, v7, [Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "i":I
    :cond_3
    const-string v1, "UNSUPPORTED TYPE."

    .line 32
    :cond_4
    return-object v1
.end method
