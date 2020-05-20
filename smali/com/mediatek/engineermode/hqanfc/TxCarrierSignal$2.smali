.class Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;
.super Landroid/os/Handler;
.source "TxCarrierSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    const/16 v1, 0xc8

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-virtual {v1, v4}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->dismissDialog(I)V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "toastMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->access$100(Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmTxCarrAlsOnRsp;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmTxCarrAlsOnRsp;->mResult:I

    packed-switch v1, :pswitch_data_0

    .line 78
    const-string v0, "TxCarrierSignal Rsp Result: ERROR"

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    .end local v0    # "toastMsg":Ljava/lang/String;
    :cond_0
    return-void

    .line 66
    .restart local v0    # "toastMsg":Ljava/lang/String;
    :pswitch_0
    const-string v0, "TxCarrierSignal Rsp Result: SUCCESS"

    .line 67
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->access$300(Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    const v3, 0x7f0804af

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->access$400(Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;Z)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal$2;->this$0:Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;->access$400(Lcom/mediatek/engineermode/hqanfc/TxCarrierSignal;Z)V

    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "TxCarrierSignal Rsp Result: FAIL"

    .line 76
    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
