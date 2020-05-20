.class Lcom/mediatek/engineermode/nfc/NfcRawData$2;
.super Landroid/os/Handler;
.source "NfcRawData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcRawData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcRawData;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 312
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$200(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$300(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$402(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Z

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$200(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$300(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4, v6}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$402(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Z

    .line 292
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4, v6}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$500(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$500(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    goto :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "MSG"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$600(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 302
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "UP"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 303
    .local v0, "enabled":Z
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$700(Lcom/mediatek/engineermode/nfc/NfcRawData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 304
    .local v2, "r":Landroid/widget/RadioButton;
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 306
    .end local v2    # "r":Landroid/widget/RadioButton;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$800(Lcom/mediatek/engineermode/nfc/NfcRawData;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
