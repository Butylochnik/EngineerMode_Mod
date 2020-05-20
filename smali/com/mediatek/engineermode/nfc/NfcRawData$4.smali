.class Lcom/mediatek/engineermode/nfc/NfcRawData$4;
.super Ljava/lang/Thread;
.source "NfcRawData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcRawData;->testing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    iput-boolean p2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 362
    const-string v3, "EM/nfc"

    const-string v4, "++++ Thread 2 , Start +++++"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->val$isStart:Z

    if-eqz v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v3, v6}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$1100(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    .line 368
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    iget-boolean v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->val$isStart:Z

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$900(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;

    move-result-object v1

    .line 369
    .local v1, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;
    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->testEntry(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;

    move-result-object v2

    .line 370
    .local v2, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v3, v2}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$1000(Lcom/mediatek/engineermode/nfc/NfcRawData;Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v1    # "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;
    .end local v2    # "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->val$isStart:Z

    if-nez v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$1100(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    .line 377
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v3}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$1200(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v3, v6}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$1402(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Z

    .line 380
    const-string v3, "EM/nfc"

    const-string v4, "++++ Thread 2 , End +++++"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EM/nfc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
