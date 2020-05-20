.class public Lcom/mediatek/engineermode/nfc/NfcSettings;
.super Landroid/app/Activity;
.source "NfcSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_EXCEPTION:I = 0x0

.field private static final DIALOG_PROCESS:I = 0x2

.field private static final DIALOG_RSP_ERROR:I = 0x1

.field private static final ENTRY_DBG_ONOFF:Ljava/lang/String; = "dbgonoff"

.field private static final ENTRY_NFC_ONOFF:Ljava/lang/String; = "nfconoff"

.field private static final EVENT_OP_ERR:I = 0x68

.field private static final EVENT_OP_EXCEPTION:I = 0x69

.field private static final EVENT_OP_OK:I = 0x6b

.field private static final EVENT_OP_SEARCH_FIN:I = 0x67

.field private static final EVENT_OP_SEARCH_START:I = 0x65

.field private static final EVENT_OP_TIMEOUT:I = 0x6a

.field private static final SELECTION_DBG_OFF:I = 0x0

.field private static final SELECTION_DBG_ON:I = 0x1

.field private static final SELECTION_NFC_OFF:I = 0x0

.field private static final SELECTION_NFC_ON:I = 0x1

.field private static final SELECTION_PROT_OFF:I = 0x2

.field private static final SELECTION_PROT_RD:I = 0x1

.field private static final SELECTION_PROT_SW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mGpDebug:Landroid/widget/RadioGroup;

.field private mGpNfcOnOff:Landroid/widget/RadioGroup;

.field private mGpProtocol:Landroid/widget/RadioGroup;

.field mHandler:Landroid/os/Handler;

.field private mSetRspStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mBtnSet:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    .line 82
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    .line 83
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mSetRspStatus:I

    .line 279
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nfc/NfcSettings$2;-><init>(Lcom/mediatek/engineermode/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/nfc/NfcSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->sendCommand()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->handleResp()V

    return-void
.end method

.method private checkRadiobox(III)V
    .locals 7
    .param p1, "nfcEnable"    # I
    .param p2, "debugEnable"    # I
    .param p3, "swProtocol"    # I

    .prologue
    const v6, 0x7f0b03a9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    const-string v2, "NfcSettings"

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/engineermode/nfc/NfcSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne p1, v5, :cond_1

    .line 212
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    const v3, 0x7f0b03a4

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 213
    const-string v2, "nfconoff"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    if-ne p3, v5, :cond_0

    .line 220
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    const v3, 0x7f0b03aa

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 221
    const-string v2, "Software Stack"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v2, "Raw Data"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    :goto_0
    if-ne p2, v5, :cond_2

    .line 237
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    const v3, 0x7f0b03a7

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 238
    const-string v2, "dbgonoff"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 225
    const-string v2, "Software Stack"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v2, "Raw Data"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    const v3, 0x7f0b03a3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 231
    const-string v2, "nfconoff"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v2, "Software Stack"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v2, "Raw Data"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    const v3, 0x7f0b03a6

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 241
    const-string v2, "dbgonoff"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private getSelection(I)I
    .locals 1
    .param p1, "checkedId"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "selection":I
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    return v0

    .line 143
    :pswitch_1
    const/4 v0, 0x1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v0, 0x0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_3
    const/4 v0, 0x1

    .line 150
    goto :goto_0

    .line 152
    :pswitch_4
    const/4 v0, 0x0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_5
    const/4 v0, 0x1

    .line 156
    goto :goto_0

    .line 161
    :pswitch_6
    const/4 v0, 0x2

    .line 162
    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03a3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private handleResp()V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v1

    const-string v2, "nfc.settings"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;

    .line 251
    .local v0, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;
    if-nez v0, :cond_0

    .line 252
    const-string v1, "EM/nfc"

    const-string v2, "processResp Take NfcRespMap.KEY_SETTINGS is null"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->nfc_enable:I

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->debug_enable:I

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->sw_protocol:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/nfc/NfcSettings;->checkRadiobox(III)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    const v1, 0x7f0b03ab

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mBtnSet:Landroid/widget/Button;

    .line 109
    const v1, 0x7f0b03a2

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    .line 110
    const v1, 0x7f0b03a5

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    .line 111
    const v1, 0x7f0b03a8

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    .line 112
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const-string v1, "NfcSettings"

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/engineermode/nfc/NfcSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "nfconoff"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03a4

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 123
    :goto_0
    const-string v1, "dbgonoff"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03a7

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 132
    :goto_1
    const-string v1, "Raw Data"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03aa

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 137
    :goto_2
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03a3

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03a6

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    const v2, 0x7f0b03a9

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2
.end method

.method private sendCommand()I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 171
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;-><init>()V

    .line 174
    .local v0, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpNfcOnOff:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSettings;->getSelection(I)I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->nfc_enable:I

    .line 175
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpDebug:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSettings;->getSelection(I)I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->debug_enable:I

    .line 176
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mGpProtocol:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSettings;->getSelection(I)I

    move-result v4

    iput v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->sw_protocol:I

    .line 177
    iput v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->get_capabilities:I

    .line 178
    const-string v4, "EM/nfc"

    const-string v5, "REQ: nfc_enable, debug_enable, sw_protocol, %d,%d,%d"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->nfc_enable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->debug_enable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->sw_protocol:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->getSettings(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;

    move-result-object v1

    .line 183
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;
    if-nez v1, :cond_0

    .line 184
    const-string v3, "EM/nfc"

    const-string v4, "NfcNativeCallClass.getSettings(req) (resp == null)"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return v2

    .line 187
    :cond_0
    iget v4, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->status:I

    if-eqz v4, :cond_1

    .line 192
    const-string v3, "EM/nfc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NfcNativeCallClass.getSettings(req) (resp.status != 0) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget v3, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->status:I

    iput v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mSetRspStatus:I

    goto :goto_0

    .line 198
    :cond_1
    const-string v4, "EM/nfc"

    const-string v5, "RES: nfc_enable, debug_enable, sw_protocol, %d,%d,%d"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->nfc_enable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->debug_enable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->sw_protocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v2

    const-string v4, "nfc.settings"

    invoke-virtual {v2, v4, v1}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 203
    goto :goto_0
.end method

.method private startSetting()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nfc/NfcSettings$1;-><init>(Lcom/mediatek/engineermode/nfc/NfcSettings;)V

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcSettings$1;->start()V

    .line 277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mBtnSet:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 102
    const-string v0, "EM/nfc"

    const-string v1, "NfcSettings onClick"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->startSetting()V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->initUI()V

    .line 92
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    const v3, 0x7f0805d1

    const v6, 0x104000a

    const/4 v4, 0x0

    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v2, v1

    .line 346
    :goto_1
    return-object v2

    .line 318
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0805d7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 323
    goto :goto_0

    .line 325
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting rsp status is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/nfc/NfcSettings;->mSetRspStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 330
    goto :goto_0

    .line 332
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 334
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 336
    const-string v3, "In Progress..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    const-string v3, "Setting"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_1

    .line 340
    :cond_0
    const-string v3, "EM/nfc"

    const-string v4, "new progressDialog failed"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
