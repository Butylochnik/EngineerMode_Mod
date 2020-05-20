.class Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;
.super Landroid/os/Handler;
.source "BleTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/BleTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 236
    const-string v0, "BLETestMode"

    const-string v1, "-->main Handler - handleMessage"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$400(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$300(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$502(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)Z

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$502(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)Z

    .line 245
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$600(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$502(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)Z

    .line 249
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->access$600(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;->this$0:Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->removeDialog(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
