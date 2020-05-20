.class Lcom/mediatek/engineermode/lte/CommandToolService$1;
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
    .line 76
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string v0, "EM/CommandToolService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$000(Lcom/mediatek/engineermode/lte/CommandToolService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$100(Lcom/mediatek/engineermode/lte/CommandToolService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$100(Lcom/mediatek/engineermode/lte/CommandToolService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$200(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$400(Lcom/mediatek/engineermode/lte/CommandToolService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v2}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$300(Lcom/mediatek/engineermode/lte/CommandToolService;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$002(Lcom/mediatek/engineermode/lte/CommandToolService;Z)Z

    .line 90
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService$1;->this$0:Lcom/mediatek/engineermode/lte/CommandToolService;

    const-string v1, "Finished\n"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/lte/CommandToolService;->access$500(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
