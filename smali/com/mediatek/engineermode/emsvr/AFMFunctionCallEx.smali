.class public Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
.super Ljava/lang/Object;
.source "AFMFunctionCallEx.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR "

.field public static final FUNCTION_EM_BASEBAND:I = 0x2711

.field public static final FUNCTION_EM_CPU_FREQ_TEST_CURRENCT:I = 0x4e23

.field public static final FUNCTION_EM_CPU_FREQ_TEST_START:I = 0x4e21

.field public static final FUNCTION_EM_CPU_FREQ_TEST_STOP:I = 0x4e22

.field public static final FUNCTION_EM_CPU_STRESS_TEST_APMCU:I = 0x9c41

.field public static final FUNCTION_EM_CPU_STRESS_TEST_BACKUP:I = 0x9c43

.field public static final FUNCTION_EM_CPU_STRESS_TEST_SWCODEC:I = 0x9c42

.field public static final FUNCTION_EM_CPU_STRESS_TEST_THERMAL:I = 0x9c44

.field public static final FUNCTION_EM_DFO_DEINIT:I = 0xea65

.field public static final FUNCTION_EM_DFO_GET_DEFAULT_SIZE:I = 0xea67

.field public static final FUNCTION_EM_DFO_INIT:I = 0xea61

.field public static final FUNCTION_EM_DFO_PROPERTY_SET:I = 0xea66

.field public static final FUNCTION_EM_DFO_READ:I = 0xea63

.field public static final FUNCTION_EM_DFO_READ_COUNT:I = 0xea62

.field public static final FUNCTION_EM_DFO_WRITE:I = 0xea64

.field public static final FUNCTION_EM_FB0_IOCTL:I = 0x7531

.field public static final FUNCTION_EM_MSDC_GET_CURRENT:I = 0x11172

.field public static final FUNCTION_EM_MSDC_SET30_MODE:I = 0x11173

.field public static final FUNCTION_EM_MSDC_SET_CURRENT:I = 0x11171

.field public static final FUNCTION_EM_SENSOR_CLEAR_CALIBRATION:I = 0xc352

.field public static final FUNCTION_EM_SENSOR_CLEAR_GSENSOR_CALIBRATION:I = 0xc356

.field public static final FUNCTION_EM_SENSOR_CLEAR_GYROSCOPE_CALIBRATION:I = 0xc359

.field public static final FUNCTION_EM_SENSOR_DO_CALIBRATION:I = 0xc351

.field public static final FUNCTION_EM_SENSOR_DO_GSENSOR_CALIBRATION:I = 0xc354

.field public static final FUNCTION_EM_SENSOR_DO_GYROSCOPE_CALIBRATION:I = 0xc357

.field public static final FUNCTION_EM_SENSOR_GET_GSENSOR_CALIBRATION:I = 0xc355

.field public static final FUNCTION_EM_SENSOR_GET_GYROSCOPE_CALIBRATION:I = 0xc358

.field public static final FUNCTION_EM_SENSOR_SET_THRESHOLD:I = 0xc353

.field public static final RESULT_CONTINUE:I = 0x1

.field public static final RESULT_FIN:I = 0x0

.field public static final RESULT_IO_ERR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EM/functioncall"


# instance fields
.field private mSocket:Lcom/mediatek/engineermode/emsvr/Client;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    return-void
.end method

.method private endCallFunction()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/emsvr/Client;->stopClient()V

    .line 202
    return-void
.end method


# virtual methods
.method public getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 176
    new-instance v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    invoke-direct {v1}, Lcom/mediatek/engineermode/emsvr/FunctionReturn;-><init>()V

    .line 178
    .local v1, "ret":Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/Client;->read()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    .line 179
    iget-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x0

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 181
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 194
    :goto_0
    return-object v1

    .line 183
    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/EOFException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 187
    iput v3, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 188
    const-string v2, ""

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 191
    const/4 v2, -0x1

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0
.end method

.method public startCallFunctionStringReturn(I)Z
    .locals 5
    .param p1, "functionId"    # I

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "result":Z
    new-instance v2, Lcom/mediatek/engineermode/emsvr/Client;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/Client;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    .line 102
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/Client;->startClient()V

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/Client;->writeFunctionNo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "EM/functioncall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartCallFunctionStringReturnEXP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamInt(I)Z
    .locals 3
    .param p1, "param"    # I

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamNo(I)Z
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamNo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
