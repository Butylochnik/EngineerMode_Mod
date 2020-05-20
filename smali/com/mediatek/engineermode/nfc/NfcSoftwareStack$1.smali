.class Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;
.super Ljava/lang/Thread;
.source "NfcSoftwareStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->access$000(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)I

    move-result v0

    .line 214
    .local v0, "errCode":I
    const-string v1, "EM/nfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendScanCommand errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-nez v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->access$100(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->access$202(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;I)I

    .line 222
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
