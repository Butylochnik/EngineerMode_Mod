.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;
.super Landroid/app/Activity;
.source "NfcSoftwareStack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_EXCEPTION:I = 0x0

.field private static final DIALOG_NOT_READY:I = 0x1

.field private static final DIALOG_PROCESS:I = 0x2

.field private static final DIALOG_SCAN_ERROR:I = 0x3

.field private static final EVENT_OP_ERR:I = 0x68

.field private static final EVENT_OP_EXCEPTION:I = 0x69

.field private static final EVENT_OP_SEARCH_FIN:I = 0x67

.field private static final EVENT_OP_SEARCH_START:I = 0x65

.field private static final EVENT_OP_TIMEOUT:I = 0x6a

.field private static final EVENT_UNDER_CONSTRUCT:I = 0x6b

.field private static final NUMER_3:I = 0x3

.field private static final NUMER_4:I = 0x4

.field private static final NUMER_5:I = 0x5

.field private static final NUMER_6:I = 0x6

.field private static final NUMER_7:I = 0x7

.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnScan:Landroid/widget/Button;

.field private mBtnSet:Landroid/widget/Button;

.field private mChkRegisterNotificationAll:Landroid/widget/CheckBox;

.field private mDiscoveryNotificationArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mEditDuration:Landroid/widget/EditText;

.field mHandler:Landroid/os/Handler;

.field private mRegisterNotificationArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mScanErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnSet:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnScan:Landroid/widget/Button;

    .line 74
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mChkRegisterNotificationAll:Landroid/widget/CheckBox;

    .line 75
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mEditDuration:Landroid/widget/EditText;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mScanErrorCode:I

    .line 384
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->sendScanCommand()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->onScanOK()V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mScanErrorCode:I

    return p1
.end method

.method private checkRegisterNotiParam()Z
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getValFromRegNotiBox()I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :cond_0
    return v0
.end method

.method private checkScanParam()Z
    .locals 3

    .prologue
    .line 195
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mEditDuration:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "strDuration":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 197
    :cond_0
    const-string v1, "500"

    .line 198
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mEditDuration:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    const/4 v0, 0x1

    .line 201
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getValFromDisNotiBox()I

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const/4 v0, 0x0

    .line 204
    :cond_2
    return v0
.end method

.method private checkSecureElementSupport(I)I
    .locals 4
    .param p1, "secureEleMask"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;-><init>()V

    .line 158
    .local v0, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;
    iput p1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;->reg_type:I

    .line 160
    invoke-static {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->getRegisterNotif(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;

    move-result-object v1

    .line 161
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;
    if-nez v1, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 167
    :goto_0
    return v2

    .line 163
    :cond_0
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->status:I

    if-eqz v2, :cond_1

    .line 164
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->status:I

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v3, "nfc.software_stack.reg_notif"

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getValFromDisNotiBox()I
    .locals 5

    .prologue
    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "val":I
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 377
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    const/4 v3, 0x1

    iget v4, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_0

    .line 381
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_1
    return v2
.end method

.method private getValFromRegNotiBox()I
    .locals 5

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "val":I
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 367
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    const/4 v3, 0x1

    iget v4, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    goto :goto_0

    .line 371
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_1
    return v2
.end method

.method private handleSecureEleResp()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v3, "nfc.software_stack.reg_notif"

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;

    .line 176
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;
    if-nez v1, :cond_0

    .line 177
    const-string v2, "EM/nfc"

    const-string v3, "Take NfcRespMap.KEY_SS_REGISTER_NOTIF is null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Response is null."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se:I

    if-nez v2, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0805db

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.engineermode.nfc.NfcSoftwareStackSecure"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    const v0, 0x7f0b03ca

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnSet:Landroid/widget/Button;

    .line 302
    const v0, 0x7f0b03d4

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnScan:Landroid/widget/Button;

    .line 304
    const v0, 0x7f0b03c9

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mChkRegisterNotificationAll:Landroid/widget/CheckBox;

    .line 306
    const v0, 0x7f0b03d3

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mEditDuration:Landroid/widget/EditText;

    .line 309
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnScan:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mChkRegisterNotificationAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v4}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c2

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v5}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c3

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c4

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v7}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v8}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c6

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c7

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03c8

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03cb

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v4}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03cc

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v5}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03cd

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03ce

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v7}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03cf

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v2, v0, v8}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03d0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03d1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mDiscoveryNotificationArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v0, 0x7f0b03d2

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method private onScanOK()V
    .locals 5

    .prologue
    .line 263
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v3, "nfc.software_stack.scan_complete"

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;

    .line 266
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;
    if-nez v1, :cond_0

    .line 267
    const-string v2, "EM/nfc"

    const-string v3, "Take NfcRespMap.KEY_SS_SCAN_COMPLETE is null"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    instance-of v2, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_none_det_response;

    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0805dc

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    instance-of v2, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;

    if-eqz v2, :cond_2

    .line 278
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v3, "nfc.software_stack.normaltag_dect"

    iget-object v4, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v2, "com.mediatek.engineermode.nfc.NfcSoftwareStackScan"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    instance-of v2, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_p2p_det_response;

    if-eqz v2, :cond_3

    .line 285
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v3, "nfc.software_stack.p2p_dect"

    iget-object v4, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v2, "com.mediatek.engineermode.nfc.NfcSoftwareStackP2PInitDect"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :cond_3
    const-string v2, "EM/nfc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown target type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendScanCommand()I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;-><init>()V

    .line 235
    .local v0, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getValFromDisNotiBox()I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;->dis_type:I

    .line 237
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mEditDuration:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;->duration:I

    .line 239
    const-string v4, "EM/nfc"

    const-string v5, "REQ: dis_type, duration,%d,%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;->dis_type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;->duration:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->getDiscoveryNotif(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;

    move-result-object v1

    .line 244
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;
    if-nez v1, :cond_0

    .line 245
    const-string v3, "EM/nfc"

    const-string v4, "NfcNativeCallClass.getSettings(req) (resp == null)"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return v2

    .line 248
    :cond_0
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->status:I

    if-eqz v2, :cond_1

    .line 249
    const-string v2, "EM/nfc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NfcNativeCallClass.getSettings(req) (resp.status != 0) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->status:I

    goto :goto_0

    .line 254
    :cond_1
    const-string v2, "EM/nfc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NfcNativeCallClass.getDiscoveryNotif(req) status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v4, "nfc.software_stack.scan_complete"

    invoke-virtual {v2, v4, v1}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 257
    goto :goto_0
.end method

.method private startScan()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$1;->start()V

    .line 229
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 109
    const-string v4, "EM/nfc"

    const-string v5, "NfcSoftwareStack onClick"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnSet:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->checkRegisterNotiParam()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0805d8

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 144
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getValFromRegNotiBox()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->checkSecureElementSupport(I)I

    move-result v0

    .line 118
    .local v0, "checkReslut":I
    if-nez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->handleSecureEleResp()V

    goto :goto_0

    .line 120
    :cond_1
    if-ne v7, v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Response is null!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    .end local v0    # "checkReslut":I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mBtnScan:Landroid/widget/Button;

    if-ne p1, v4, :cond_5

    .line 129
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->checkScanParam()Z

    move-result v4

    if-nez v4, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0805da

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 134
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->startScan()V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mChkRegisterNotificationAll:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_7

    .line 136
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mChkRegisterNotificationAll:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 137
    .local v3, "shouldSelect":Z
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mRegisterNotificationArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 138
    .local v2, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v4, v2, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 140
    .end local v2    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_6
    const-string v4, "EM/nfc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mChkRegisterNotificationAll "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "shouldSelect":Z
    :cond_7
    const-string v4, "EM/nfc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ghost view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->setContentView(I)V

    .line 92
    const-string v0, "EM/nfc"

    const-string v1, "NfcSettingsResult onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->initUI()V

    .line 94
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const v3, 0x7f0805d1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v6, 0x104000a

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v2, v1

    .line 455
    :goto_1
    return-object v2

    .line 419
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0805d7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 424
    goto :goto_0

    .line 426
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0805df

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0805e0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 431
    goto :goto_0

    .line 433
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scan response status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->mScanErrorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 438
    goto :goto_0

    .line 440
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 443
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 445
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_1

    .line 449
    :cond_0
    const-string v3, "EM/nfc"

    const-string v4, "new progressDialog failed"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 100
    return-void
.end method
