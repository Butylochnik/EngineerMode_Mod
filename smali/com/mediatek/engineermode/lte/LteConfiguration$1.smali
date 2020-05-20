.class Lcom/mediatek/engineermode/lte/LteConfiguration$1;
.super Landroid/os/Handler;
.source "LteConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/lte/LteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lte/LteConfiguration;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f0806fc

    const v5, 0x7f0806fe

    .line 203
    const-string v2, "LteConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$000(Lcom/mediatek/engineermode/lte/LteConfiguration;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$000(Lcom/mediatek/engineermode/lte/LteConfiguration;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 212
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "LteConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V

    goto :goto_0

    .line 220
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 221
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 222
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 223
    .local v1, "data":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$200(Lcom/mediatek/engineermode/lte/LteConfiguration;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v6}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V

    goto :goto_0

    .line 229
    .end local v1    # "data":[Ljava/lang/String;
    :cond_2
    const-string v2, "LteConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V

    goto :goto_0

    .line 234
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 235
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 236
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 237
    .restart local v1    # "data":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$300(Lcom/mediatek/engineermode/lte/LteConfiguration;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v6}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V

    goto/16 :goto_0

    .line 243
    .end local v1    # "data":[Ljava/lang/String;
    :cond_3
    const-string v2, "LteConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;->this$0:Lcom/mediatek/engineermode/lte/LteConfiguration;

    invoke-static {v2, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V

    goto/16 :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
