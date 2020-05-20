.class Lcom/mediatek/engineermode/lte/CommandToolService$2;
.super Landroid/os/Handler;
.source "CommandToolService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/lte/CommandToolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lte/CommandToolService;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lte/CommandToolService;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandToolService$2;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    const-string v4, "EM/CommandToolService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 123
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 124
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 125
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 126
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "result":Ljava/lang/Object;
    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 127
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolService$2;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    const-string v5, "Return: "

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$500(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolService$2;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$500(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const-string v4, "EM/CommandToolService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolService$2;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$500(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
