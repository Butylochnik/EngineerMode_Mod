.class Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;
.super Landroid/os/Handler;
.source "LteNetworkInfoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 269
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 272
    .local v1, "data":[Ljava/lang/String;
    const-string v5, "EM/LteNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive URC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v4, -0x1

    .line 276
    .local v4, "type":I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 282
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v5}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$600(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {v4}, Lcom/mediatek/engineermode/lte/UrcParser;->size(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x2

    .line 285
    .local v3, "size":I
    aget-object v5, v1, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 286
    const-string v5, "EM/LteNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong return length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v5}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$700(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 290
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v5}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$800(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    .line 293
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 277
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "data":[Ljava/lang/String;
    .restart local v4    # "type":I
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    const-string v6, "Return type error"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$500(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;Ljava/lang/String;)V

    goto :goto_0
.end method
