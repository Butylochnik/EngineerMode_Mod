.class Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;
.super Landroid/content/BroadcastReceiver;
.source "LoopBackTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/LoopBackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[LoopBackTest]mReceiver onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.mediatek.hqanfc.130"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$002(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;[B)[B

    .line 45
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$000(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$000(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;-><init>()V

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$102(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

    .line 48
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$100(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmLoopbackRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 49
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/LoopBackTest$1;->this$0:Lcom/mediatek/engineermode/hqanfc/LoopBackTest;

    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/LoopBackTest;->access$200(Lcom/mediatek/engineermode/hqanfc/LoopBackTest;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[LoopBackTest]Other response"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
