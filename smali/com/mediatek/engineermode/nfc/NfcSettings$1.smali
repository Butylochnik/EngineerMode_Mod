.class Lcom/mediatek/engineermode/nfc/NfcSettings$1;
.super Ljava/lang/Thread;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcSettings;->startSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->access$000(Lcom/mediatek/engineermode/nfc/NfcSettings;)I

    move-result v0

    .line 264
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

    .line 265
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    iget-object v1, v1, Lcom/mediatek/engineermode/nfc/NfcSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
