.class Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;
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
    .line 234
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 237
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 239
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 240
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 241
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    .line 242
    .local v2, "data":[Ljava/lang/String;
    const-string v5, "EM/LteNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data[0] is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "EM/LteNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flag is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    aget-object v6, v2, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$102(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;I)I

    .line 245
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    iget-object v6, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$100(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$102(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;I)I

    .line 246
    const-string v5, "EM/LteNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flag change is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v7}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$100(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v5}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$200(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 248
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v5}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$300(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->types:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 249
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 250
    .local v1, "atCommand":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AT+EINFO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$100(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$300(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->types:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 251
    const/4 v5, 0x1

    const-string v6, "+EINFO"

    aput-object v6, v1, v5

    .line 252
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    const/4 v6, 0x3

    invoke-static {v5, v1, v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$400(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;[Ljava/lang/String;I)V

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "atCommand":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "data":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_2
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 260
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    iget-object v6, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    const v7, 0x7f08047c

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$500(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
