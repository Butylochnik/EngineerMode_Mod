.class public Lcom/mediatek/engineermode/io/EmGpio;
.super Ljava/lang/Object;
.source "EmGpio.java"


# static fields
.field private static final RESULT_ERROR:Ljava/lang/String; = "ERROR"

.field private static final RESULT_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final TAG:Ljava/lang/String; = "EM/EmGpio"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "em_gpio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCurrent(I)I
.end method

.method public static native getGpioMaxNumber()I
.end method

.method public static native gpioInit()Z
.end method

.method public static native gpioUnInit()Z
.end method

.method public static newGetCurrent(II)I
    .locals 7
    .param p0, "hostNumber"    # I
    .param p1, "opcode"    # I

    .prologue
    const/4 v6, 0x2

    .line 110
    const v3, 0x11172

    new-array v4, v6, [I

    const/4 v5, 0x0

    aput p0, v4, v5

    const/4 v5, 0x1

    aput p1, v4, v5

    invoke-static {v3, v6, v4}, Lcom/mediatek/engineermode/io/EmGpio;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "response":Ljava/lang/String;
    const-string v3, "EM/EmGpio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newGetCurrent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, -0x1

    .line 115
    .local v1, "idx":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "EM/EmGpio"

    const-string v4, "parseInt failed--invalid number!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newSetCurrent(IIIIIIIIII)Z
    .locals 5
    .param p0, "hostNumber"    # I
    .param p1, "clkpu"    # I
    .param p2, "clkpd"    # I
    .param p3, "cmdpu"    # I
    .param p4, "cmdpd"    # I
    .param p5, "datapu"    # I
    .param p6, "datapd"    # I
    .param p7, "hopbit"    # I
    .param p8, "hoptime"    # I
    .param p9, "opcode"    # I

    .prologue
    .line 125
    const v1, 0x11171

    const/16 v2, 0xa

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v4, 0x2

    aput p2, v3, v4

    const/4 v4, 0x3

    aput p3, v3, v4

    const/4 v4, 0x4

    aput p4, v3, v4

    const/4 v4, 0x5

    aput p5, v3, v4

    const/4 v4, 0x6

    aput p6, v3, v4

    const/4 v4, 0x7

    aput p7, v3, v4

    const/16 v4, 0x8

    aput p8, v3, v4

    const/16 v4, 0x9

    aput p9, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/io/EmGpio;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "response":Ljava/lang/String;
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static varargs runCmdInNative(II[I)Ljava/lang/String;
    .locals 11
    .param p0, "index"    # I
    .param p1, "paramNum"    # I
    .param p2, "param"    # [I

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, "build":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 138
    .local v2, "functionCall":Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    invoke-virtual {v2, p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 139
    .local v7, "result":Z
    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 140
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 141
    .local v3, "i":I
    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_0
    if-eqz v7, :cond_4

    .line 146
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 147
    .local v6, "r":Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    :goto_1
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 153
    const-string v8, "EM/EmGpio"

    const-string v9, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const-string v10, "ERROR"

    invoke-virtual {v1, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .end local v6    # "r":Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 150
    .restart local v6    # "r":Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_3
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 157
    .end local v6    # "r":Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_4
    const-string v8, "EM/EmGpio"

    const-string v9, "AFMFunctionCallEx return false"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static native setCurrent(III)Z
.end method

.method public static native setGpioDataHigh(I)Z
.end method

.method public static native setGpioDataLow(I)Z
.end method

.method public static native setGpioInput(I)Z
.end method

.method public static native setGpioOutput(I)Z
.end method

.method public static setSd30Mode(IIIII)Z
    .locals 7
    .param p0, "hostNumber"    # I
    .param p1, "sd30Mode"    # I
    .param p2, "sd30MaxCurrent"    # I
    .param p3, "sd30Drive"    # I
    .param p4, "sd30PowerControl"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    const v3, 0x11173

    new-array v4, v6, [I

    aput p0, v4, v1

    aput p1, v4, v2

    const/4 v5, 0x2

    aput p2, v4, v5

    const/4 v5, 0x3

    aput p3, v4, v5

    const/4 v5, 0x4

    aput p4, v4, v5

    invoke-static {v3, v6, v4}, Lcom/mediatek/engineermode/io/EmGpio;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "response":Ljava/lang/String;
    const-string v3, "ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
