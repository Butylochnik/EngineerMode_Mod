.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;
.super Landroid/app/Activity;
.source "NfcSoftwareStackScan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$1;,
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;
    }
.end annotation


# static fields
.field private static final CARDTYPE_MC1K:Ljava/lang/String; = "MIFARE_UL"

.field public static final CARDTYPE_MC1K_VAL:I = 0x1

.field private static final CARDTYPE_MC4K:Ljava/lang/String; = "MIFARE_STD"

.field public static final CARDTYPE_MC4K_VAL:I = 0x2

.field private static final CARDTYPE_NDEF:Ljava/lang/String; = "NDEF"

.field public static final CARDTYPE_NDEF_VAL:I = 0x9

.field public static final CARDTYPE_TAG_TYPE_DEFAULT_VAL:I = 0x0

.field private static final CARDTYPE_TAG_TYPE_FELICA:Ljava/lang/String; = "FELICA"

.field public static final CARDTYPE_TAG_TYPE_FELICA_VAL:I = 0x7

.field private static final CARDTYPE_TAG_TYPE_ISO1443_4A:Ljava/lang/String; = "ISO14443_4A"

.field public static final CARDTYPE_TAG_TYPE_ISO1443_4A_VAL:I = 0x3

.field private static final CARDTYPE_TAG_TYPE_ISO1443_4B:Ljava/lang/String; = "ISO14443_4B"

.field public static final CARDTYPE_TAG_TYPE_ISO1443_4B_VAL:I = 0x4

.field private static final CARDTYPE_TAG_TYPE_ISO15693:Ljava/lang/String; = "ISO15693"

.field public static final CARDTYPE_TAG_TYPE_ISO15693_VAL:I = 0x8

.field private static final CARDTYPE_TAG_TYPE_JEWWL:Ljava/lang/String; = "JEWEL"

.field public static final CARDTYPE_TAG_TYPE_JEWWL_VAL:I = 0x5

.field private static final CARDTYPE_TAG_TYPE_NFC:Ljava/lang/String; = "NFC"

.field public static final CARDTYPE_TAG_TYPE_NFC_VAL:I = 0x6

.field private static final FUNCTION_SUPPORT_NONE:I = 0x3

.field private static final FUNCTION_SUPPORT_RAW:I = 0x2

.field private static final FUNCTION_SUPPORT_RW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "EM/nfc"

.field private static final TAGTYPE_NDEF:I = 0x2

.field private static final TAGTYPE_NORMAL:I = 0x1


# instance fields
.field private mBtnDisconnect:Landroid/widget/Button;

.field private mBtnFormatNDEF:Landroid/widget/Button;

.field private mBtnRawCmd:Landroid/widget/Button;

.field private mBtnRead:Landroid/widget/Button;

.field private mBtnWrite:Landroid/widget/Button;

.field private mChkNDEFTag:Landroid/widget/CheckBox;

.field private mChkNormalTag:Landroid/widget/CheckBox;

.field private mTextAppData:Landroid/widget/TextView;

.field private mTextAtqA:Landroid/widget/TextView;

.field private mTextCardType:Landroid/widget/TextView;

.field private mTextMaxDataRate:Landroid/widget/TextView;

.field private mTextSak:Landroid/widget/TextView;

.field private mTextUid:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 318
    return-void
.end method

.method private disconnectCard()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method private formatNdef()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 241
    const v1, 0x7f0b03de

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    .line 243
    const v1, 0x7f0b03df

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextUid:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f0b03e0

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextSak:Landroid/widget/TextView;

    .line 245
    const v1, 0x7f0b03e1

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextAtqA:Landroid/widget/TextView;

    .line 246
    const v1, 0x7f0b03e2

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextAppData:Landroid/widget/TextView;

    .line 248
    const v1, 0x7f0b03e3

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextMaxDataRate:Landroid/widget/TextView;

    .line 251
    const v1, 0x7f0b03e4

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    .line 252
    const v1, 0x7f0b03e5

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    .line 253
    const v1, 0x7f0b03e7

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    .line 255
    const v1, 0x7f0b03e6

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    .line 257
    const v1, 0x7f0b03e8

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    .line 260
    const v1, 0x7f0b03dc

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNormalTag:Landroid/widget/CheckBox;

    .line 262
    const v1, 0x7f0b03dd

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNDEFTag:Landroid/widget/CheckBox;

    .line 264
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$1;)V

    .line 271
    .local v0, "specListener":Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNormalTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNDEFTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method private readTagInfo()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 136
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v1

    const-string v2, "nfc.software_stack.normaltag_dect"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;

    .line 139
    .local v0, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;
    if-nez v0, :cond_0

    .line 140
    const-string v1, "EM/nfc"

    const-string v2, "Take NfcRespMap.KEY_SS_TAG_DECT is null"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->finish()V

    .line 204
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->printMember()V

    .line 147
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->tag_type:I

    if-ne v1, v4, :cond_1

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNormalTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNDEFTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    :goto_1
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->card_type:I

    packed-switch v1, :pswitch_data_0

    .line 195
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Garbarge: card_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->card_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    .line 199
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextUid:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->uid:[B

    invoke-static {v2}, Lcom/mediatek/engineermode/nfc/NfcUtils;->printArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextSak:Landroid/widget/TextView;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->sak:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextAtqA:Landroid/widget/TextView;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->atag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextAppData:Landroid/widget/TextView;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->appdata:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextMaxDataRate:Landroid/widget/TextView;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->maxdatarate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->tag_type:I

    if-ne v1, v5, :cond_2

    .line 151
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNormalTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mChkNDEFTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 154
    :cond_2
    const-string v1, "EM/nfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Garbarge: tag_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->tag_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "MIFARE_UL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto :goto_2

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "MIFARE_STD"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto :goto_2

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "NDEF"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 171
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "ISO14443_4A"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 175
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "ISO14443_4B"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 179
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "JEWEL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 183
    :pswitch_6
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "FELICA"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 187
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "NFC"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 191
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mTextCardType:Landroid/widget/TextView;

    const-string v2, "ISO15693"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setBtnSupportState(I)V

    goto/16 :goto_2

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method private setBtnSupportState(I)V
    .locals 3
    .param p1, "functionSupport"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    const/4 p1, 0x3

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 282
    const-string v1, "EM/nfc"

    const-string v2, "NfcSoftwareStackScan onClick"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRead:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 285
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.engineermode.nfc.NfcSoftwareStackScanReadTag"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    :goto_0
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->startActivity(Landroid/content/Intent;)V

    .line 308
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnWrite:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 289
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.engineermode.nfc.NfcSoftwareStackScanWriteTag"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnRawCmd:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 294
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.engineermode.nfc.NfcSoftwareStackRawCommand"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnDisconnect:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 299
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->disconnectCard()V

    goto :goto_0

    .line 300
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->mBtnFormatNDEF:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 301
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->formatNdef()V

    goto :goto_0

    .line 303
    :cond_5
    const-string v1, "EM/nfc"

    const-string v2, "ghost button?"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->requestWindowFeature(I)Z

    .line 115
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 118
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackScan onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->initUI()V

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->disconnectCard()V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;->readTagInfo()V

    .line 126
    return-void
.end method
