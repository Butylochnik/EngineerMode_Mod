.class public Lcom/mediatek/engineermode/nfc/NfcRawData;
.super Landroid/app/Activity;
.source "NfcRawData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EVENT_OP_FIN:I = 0x67

.field private static final EVENT_OP_MSG:I = 0x68

.field private static final EVENT_OP_START:I = 0x65

.field private static final EVENT_OP_STOP:I = 0x66

.field private static final EVENT_UPDATE_RADIO_UI:I = 0x69

.field private static final NUM_3:I = 0x3

.field private static final NUM_3F:I = 0x3

.field private static final NUM_4F:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EM/nfc"

.field private static final TEST_ID_ALWAYSE_ON_WITH:I = 0x3e9

.field private static final TEST_ID_ALWAYSE_ON_WO:I = 0x3ea

.field private static final TEST_ID_ANTENNA_SELF:I = 0x3ef

.field private static final TEST_ID_CARD_EMUL_MODE:I = 0x3eb

.field private static final TEST_ID_P2P_MODE:I = 0x3ed

.field private static final TEST_ID_READER_MODE:I = 0x3ec

.field private static final TEST_ID_SWP_SELF:I = 0x3ee

.field private static final TEST_ID_UID_RW:I = 0x3f0

.field private static final TEST_START:I = 0x1

.field private static final TEST_STOP:I


# instance fields
.field private mAlwayseOnBitrateAppendix:Landroid/widget/Spinner;

.field private mAlwayseOnModuleAppendix:Landroid/widget/Spinner;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mCardEmulModeProtAppendix:Landroid/widget/Spinner;

.field private mCardEmulModeTypeAppendix:Landroid/widget/Spinner;

.field private mHander:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInStartTest:Z

.field private mRadioGpMode:Landroid/widget/RadioGroup;

.field private mRadioItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionId:I

.field private mTextResult:Landroid/widget/TextView;

.field private mViewAlwayson:Landroid/view/View;

.field private mViewCardEmul:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    .line 73
    iput v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    .line 74
    iput-boolean v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInStartTest:Z

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInProgress:Z

    .line 279
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcRawData$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nfc/NfcRawData$2;-><init>(Lcom/mediatek/engineermode/nfc/NfcRawData;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/nfc/NfcRawData;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/nfc/NfcRawData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/nfc/NfcRawData;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->addAppendix(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/nfc/NfcRawData;Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->handleResponse(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->enableAllRadioBox(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/nfc/NfcRawData;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInStartTest:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->testing(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/nfc/NfcRawData;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mTextResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/nfc/NfcRawData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/nfc/NfcRawData;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->disableForTemp()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcRawData;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->makeRequest(Z)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;

    move-result-object v0

    return-object v0
.end method

.method private addAppendix(I)V
    .locals 3
    .param p1, "selId"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 225
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewAlwayson:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewCardEmul:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_1
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewAlwayson:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewCardEmul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewAlwayson:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewCardEmul:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private closeNFCServiceAtStart()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 140
    .local v0, "adp":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service set off."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service set off Fail."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service is off"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableForTemp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string v0, "EM/nfc"

    const-string v1, "disableForTemp"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method private enableAllRadioBox(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 316
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 317
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x69

    iput v2, v1, Landroid/os/Message;->what:I

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "UP"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    return-void
.end method

.method private handleResponse(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;)V
    .locals 5
    .param p1, "resp"    # Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;

    .prologue
    .line 465
    iget-object v3, p1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;->target:Ljava/lang/Object;

    instance-of v3, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;

    if-eqz v3, :cond_2

    .line 466
    iget-object v2, p1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;->target:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;

    .line 468
    .local v2, "uidr":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;
    iget v3, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;->result:I

    if-eqz v3, :cond_1

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;->result:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    .line 495
    .end local v2    # "uidr":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v2    # "uidr":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID Test Result: \nData["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;->data:[B

    invoke-static {v4}, Lcom/mediatek/engineermode/nfc/NfcUtils;->printArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "result":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "uidr":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;
    :cond_2
    iget-object v3, p1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;->target:Ljava/lang/Object;

    instance-of v3, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;

    if-eqz v3, :cond_0

    .line 482
    iget-object v0, p1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;->target:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;

    .line 484
    .local v0, "res":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;
    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;->result:I

    if-eqz v3, :cond_3

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;->result:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_3
    const-string v3, "Result: OK"

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSpinner()V
    .locals 8

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x0

    .line 238
    const v4, 0x7f0b039a

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnModuleAppendix:Landroid/widget/Spinner;

    .line 240
    const v4, 0x7f0b039b

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnBitrateAppendix:Landroid/widget/Spinner;

    .line 242
    const v4, 0x7f0b039d

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeTypeAppendix:Landroid/widget/Spinner;

    .line 244
    const v4, 0x7f0b039e

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeProtAppendix:Landroid/widget/Spinner;

    .line 247
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x7f06006a

    invoke-direct {v1, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 250
    .local v1, "alwaysOnModuleAdatper":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f06006b

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 253
    .local v0, "alwaysOnBitrateAdatper":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f06006c

    invoke-direct {v3, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 257
    .local v3, "cardEmulModeTypeAdatper":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x7f06006d

    invoke-direct {v2, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 261
    .local v2, "cardEmulModeProtAdatper":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 263
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 265
    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnModuleAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnBitrateAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeTypeAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeProtAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 273
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnModuleAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnBitrateAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeTypeAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 276
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeProtAppendix:Landroid/widget/Spinner;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 277
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    const v3, 0x7f0b0393

    const/4 v2, 0x1

    .line 152
    const v0, 0x7f0b039f

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    .line 153
    const v0, 0x7f0b03a0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    .line 154
    const v0, 0x7f0b0390

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioGpMode:Landroid/widget/RadioGroup;

    .line 155
    const v0, 0x7f0b03a1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mTextResult:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0b0399

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewAlwayson:Landroid/view/View;

    .line 158
    const v0, 0x7f0b039c

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mViewCardEmul:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0391

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0394

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0395

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0396

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0397

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioItems:Ljava/util/ArrayList;

    const v0, 0x7f0b0398

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioGpMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/mediatek/engineermode/nfc/NfcRawData$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/nfc/NfcRawData$1;-><init>(Lcom/mediatek/engineermode/nfc/NfcRawData;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 201
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->initSpinner()V

    .line 202
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/nfc/NfcRawData;->enableAllRadioBox(Z)V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->disableForTemp()V

    .line 204
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioGpMode:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    return-void
.end method

.method private makeRequest(Z)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;
    .locals 14
    .param p1, "isStart"    # Z

    .prologue
    .line 388
    new-instance v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;

    invoke-direct {v7}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;-><init>()V

    .line 390
    .local v7, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;
    iget v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    iput v9, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;->which:I

    .line 392
    iget v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    packed-switch v9, :pswitch_data_0

    .line 461
    :goto_0
    return-object v7

    .line 395
    :pswitch_0
    new-instance v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;

    invoke-direct {v5}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;-><init>()V

    .line 397
    .local v5, "nfcTxOnReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;
    if-eqz p1, :cond_1

    const/4 v9, 0x1

    :goto_1
    iput v9, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->action:I

    .line 398
    const/4 v9, 0x1

    iput v9, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->type:I

    .line 400
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnModuleAppendix:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    int-to-byte v1, v9

    .line 402
    .local v1, "modPos":B
    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    const/4 v9, 0x0

    :goto_2
    iput-byte v9, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->modulation_type:B

    .line 405
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mAlwayseOnBitrateAppendix:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    int-to-byte v0, v9

    .line 407
    .local v0, "bitratePos":B
    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    const/4 v1, 0x0

    .end local v1    # "modPos":B
    :cond_0
    iput-byte v1, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->bitrate:B

    .line 410
    iput-object v5, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;->target:Ljava/lang/Object;

    .line 411
    const-string v9, "EM/nfc"

    const-string v10, "action %d, type %d, modulation %d, bitrate %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->action:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-byte v13, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->modulation_type:B

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-byte v13, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;->bitrate:B

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0    # "bitratePos":B
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .restart local v1    # "modPos":B
    :cond_2
    move v9, v1

    .line 402
    goto :goto_2

    .line 417
    .end local v1    # "modPos":B
    .end local v5    # "nfcTxOnReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;
    :pswitch_1
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;

    invoke-direct {v2}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;-><init>()V

    .line 419
    .local v2, "nfcCardEmulReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;
    if-eqz p1, :cond_3

    const/4 v9, 0x1

    :goto_3
    iput v9, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->action:I

    .line 420
    const/4 v9, 0x1

    iput v9, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->type:I

    .line 422
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeTypeAppendix:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 423
    .local v8, "typePos":I
    const/4 v9, 0x1

    shl-int/2addr v9, v8

    int-to-short v9, v9

    iput-short v9, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->technology:S

    .line 425
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mCardEmulModeProtAppendix:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 426
    .local v6, "protPos":I
    const/4 v9, 0x1

    shl-int/2addr v9, v6

    int-to-short v9, v9

    iput-short v9, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->protocols:S

    .line 428
    iput-object v2, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;->target:Ljava/lang/Object;

    .line 429
    const-string v9, "EM/nfc"

    const-string v10, "action %d, type %d, technology %d, protocols %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->action:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-short v13, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->technology:S

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-short v13, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;->protocols:S

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    .end local v6    # "protPos":I
    .end local v8    # "typePos":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 435
    .end local v2    # "nfcCardEmulReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;
    :pswitch_2
    new-instance v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;

    invoke-direct {v4}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;-><init>()V

    .line 437
    .local v4, "nfcScriptUidReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;
    if-eqz p1, :cond_4

    const/4 v9, 0x1

    :goto_4
    iput v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->action:I

    .line 438
    const/4 v9, 0x1

    iput v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->type:I

    .line 439
    const/4 v9, 0x1

    iput v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->uid_type:I

    .line 440
    iget-object v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v9, v10

    .line 441
    iget-object v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->data:[B

    const/4 v10, 0x1

    const/4 v11, 0x2

    aput-byte v11, v9, v10

    .line 442
    iget-object v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->data:[B

    const/4 v10, 0x2

    const/4 v11, 0x3

    aput-byte v11, v9, v10

    .line 443
    iget-object v9, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->data:[B

    const/4 v10, 0x3

    const/4 v11, 0x4

    aput-byte v11, v9, v10

    .line 445
    iput-object v4, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;->target:Ljava/lang/Object;

    goto/16 :goto_0

    .line 437
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 451
    .end local v4    # "nfcScriptUidReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;
    :pswitch_3
    new-instance v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;

    invoke-direct {v3}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;-><init>()V

    .line 453
    .local v3, "nfcScriptReq":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;
    if-eqz p1, :cond_5

    const/4 v9, 0x1

    :goto_5
    iput v9, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;->action:I

    .line 454
    const/4 v9, 0x1

    iput v9, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;->type:I

    .line 456
    iput-object v3, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;->target:Ljava/lang/Object;

    goto/16 :goto_0

    .line 453
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private testing(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    const/16 v3, 0x3f0

    .line 325
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mTextResult:Landroid/widget/TextView;

    const-string v1, "Waiting..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-boolean v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInStartTest:Z

    if-eqz v0, :cond_0

    .line 327
    iget v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    if-ne v0, v3, :cond_1

    .line 328
    const-string v0, "EM/nfc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID = 1008, Select ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    const-string v0, "EM/nfc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++ mInStartTest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInStartTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInProgress:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mSelectionId:I

    if-ne v0, v3, :cond_2

    .line 336
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcRawData$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData$3;-><init>(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcRawData$3;->start()V

    .line 385
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v0, "Operation is still in progress. Try later."

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->threadSendMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mInStartTest:Z

    .line 359
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcRawData$4;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/engineermode/nfc/NfcRawData$4;-><init>(Lcom/mediatek/engineermode/nfc/NfcRawData;Z)V

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcRawData$4;->start()V

    goto :goto_0
.end method

.method private threadSendMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 499
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x68

    iput v2, v1, Landroid/os/Message;->what:I

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "MSG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 503
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStart:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mRadioGpMode:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Test Mode is not selected."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mBtnStop:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData;->mHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "EM/nfc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASSERT. Ghost view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "EM/nfc"

    const-string v1, "NfcRawData onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->setContentView(I)V

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->closeNFCServiceAtStart()V

    .line 112
    const-string v0, "EM/nfc"

    const-string v1, "NfcRawData onResume"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcRawData;->initUI()V

    .line 114
    return-void
.end method
