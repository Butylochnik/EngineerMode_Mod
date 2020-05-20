.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;
.super Landroid/app/Activity;
.source "NfcSoftwareStackScanReadTag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$1;,
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;
    }
.end annotation


# static fields
.field public static final NUM_3:I = 0x3

.field public static final TAG:Ljava/lang/String; = "EM/nfc"

.field public static final TAG_TYPE_MC1K:I = 0x2

.field public static final TAG_TYPE_MC4K:I = 0x3

.field public static final TAG_TYPE_NDEF:I = 0x1

.field public static final TAG_TYPE_NONE:I


# instance fields
.field private mBtn1KOK:Landroid/widget/Button;

.field private mBtn4KOK:Landroid/widget/Button;

.field private mCurrentTag:I

.field private mEditBlock:Landroid/widget/EditText;

.field private mEditPageAddress:Landroid/widget/EditText;

.field private mEditPageI:Landroid/widget/EditText;

.field private mEditPageII:Landroid/widget/EditText;

.field private mEditPageIII:Landroid/widget/EditText;

.field private mEditPageIV:Landroid/widget/EditText;

.field private mEditPayloadASCII:Landroid/widget/EditText;

.field private mEditPayloadHex:Landroid/widget/EditText;

.field private mEditSector:Landroid/widget/EditText;

.field private mEditSectorInfo:Landroid/widget/EditText;

.field private mTagTypeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTextLang:Landroid/widget/TextView;

.field private mTextPayloadLen:Landroid/widget/TextView;

.field private mTextRecFlags:Landroid/widget/TextView;

.field private mTextRecId:Landroid/widget/TextView;

.field private mTextRecTnf:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mCurrentTag:I

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    .line 335
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    .line 136
    const v3, 0x7f0b03ec

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextLang:Landroid/widget/TextView;

    .line 138
    const v3, 0x7f0b03ef

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecFlags:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f0b03f0

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecId:Landroid/widget/TextView;

    .line 142
    const v3, 0x7f0b03f1

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecTnf:Landroid/widget/TextView;

    .line 144
    const v3, 0x7f0b03f2

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextPayloadLen:Landroid/widget/TextView;

    .line 146
    const v3, 0x7f0b03f3

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPayloadHex:Landroid/widget/EditText;

    .line 148
    const v3, 0x7f0b03f4

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPayloadASCII:Landroid/widget/EditText;

    .line 150
    const v3, 0x7f0b03f6

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageAddress:Landroid/widget/EditText;

    .line 152
    const v3, 0x7f0b03f8

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageI:Landroid/widget/EditText;

    .line 154
    const v3, 0x7f0b03fa

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageII:Landroid/widget/EditText;

    .line 156
    const v3, 0x7f0b03fc

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageIII:Landroid/widget/EditText;

    .line 158
    const v3, 0x7f0b03fe

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageIV:Landroid/widget/EditText;

    .line 160
    const v3, 0x7f0b0401

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSector:Landroid/widget/EditText;

    .line 162
    const v3, 0x7f0b0402

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditBlock:Landroid/widget/EditText;

    .line 164
    const v3, 0x7f0b0403

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSectorInfo:Landroid/widget/EditText;

    .line 166
    const v3, 0x7f0b03ff

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mBtn1KOK:Landroid/widget/Button;

    .line 168
    const v3, 0x7f0b0404

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mBtn4KOK:Landroid/widget/Button;

    .line 171
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03ea

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03eb

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03ed

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03ee

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$1;)V

    .line 183
    .local v2, "specListener":Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 184
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 187
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mBtn1KOK:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->selectView()V

    .line 190
    return-void
.end method

.method private readMC1K()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 234
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;

    invoke-direct {v2}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;-><init>()V

    .line 236
    .local v2, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;
    iput v4, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->read_type:I

    .line 237
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageAddress:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->address:I

    .line 240
    invoke-static {v2}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->readTag(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;

    move-result-object v3

    .line 241
    .local v3, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->status:I

    if-eqz v5, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v4

    .line 244
    :cond_1
    iget-object v4, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;

    check-cast v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;

    iget v0, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;->address:I

    .line 246
    .local v0, "address":I
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageAddress:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;

    check-cast v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;

    iget-object v1, v4, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;->data:[S

    .line 250
    .local v1, "data":[S
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageI:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcUtils;->printArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readMC4K()I
    .locals 7

    .prologue
    .line 256
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;

    invoke-direct {v2}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;-><init>()V

    .line 258
    .local v2, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;
    const/4 v5, 0x2

    iput v5, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->read_type:I

    .line 259
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditBlock:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->block:I

    .line 260
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSector:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->sector:I

    .line 263
    invoke-static {v2}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->readTag(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;

    move-result-object v3

    .line 264
    .local v3, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->status:I

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    const/4 v5, 0x1

    .line 279
    :goto_0
    return v5

    .line 268
    :cond_1
    iget-object v5, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    iget v0, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;->block:I

    .line 270
    .local v0, "block":I
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditBlock:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v5, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    iget v4, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;->sector:I

    .line 273
    .local v4, "sector":I
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSector:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v5, v3, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;

    iget-object v1, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;->data:[S

    .line 277
    .local v1, "data":[S
    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSectorInfo:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcUtils;->printArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readNDEF()I
    .locals 11

    .prologue
    .line 284
    new-instance v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;

    invoke-direct {v7}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;-><init>()V

    .line 286
    .local v7, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;
    const/16 v9, 0x9

    iput v9, v7, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;->read_type:I

    .line 289
    invoke-static {v7}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->readTag(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;

    move-result-object v8

    .line 290
    .local v8, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;
    if-eqz v8, :cond_0

    iget v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->status:I

    if-eqz v9, :cond_1

    .line 291
    :cond_0
    const/4 v9, 0x1

    .line 317
    :goto_0
    return v9

    .line 294
    :cond_1
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget v3, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->ndef_type:I

    .line 296
    .local v3, "ndefType":I
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget v4, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->recordFlage:I

    .line 298
    .local v4, "recordFlage":I
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget v5, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->recordId:I

    .line 300
    .local v5, "recordId":I
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget v6, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->recordInfo:I

    .line 302
    .local v6, "recordInfo":I
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget v2, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->length:I

    .line 305
    .local v2, "length":I
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->setCurrentMode(I)V

    .line 306
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecFlags:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecId:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextRecTnf:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTextPayloadLen:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget-object v1, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->dataHex:[S

    .line 313
    .local v1, "dataHex":[S
    iget-object v9, v8, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;->target:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    check-cast v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;

    iget-object v0, v9, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;->dataAscii:[C

    .line 315
    .local v0, "dataAscii":[C
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPayloadASCII:Landroid/widget/EditText;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v9, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPayloadHex:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcUtils;->printArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private selectView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 193
    const v5, 0x7f0b03e9

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 194
    .local v4, "viewTag":Landroid/view/View;
    const v5, 0x7f0b03f5

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, "viewPage":Landroid/view/View;
    const v5, 0x7f0b0400

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 198
    .local v3, "viewSector":Landroid/view/View;
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v5

    const-string v6, "nfc.software_stack.scan_complete"

    invoke-virtual {v5, v6}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;

    .line 201
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;
    if-nez v1, :cond_0

    .line 202
    const-string v5, "EM/nfc"

    const-string v6, "selectView(): Take NfcRespMap.KEY_SS_SCAN_COMPLETE is null"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->finish()V

    .line 231
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v5, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;->target:Ljava/lang/Object;

    check-cast v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;

    iget v0, v5, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->card_type:I

    .line 210
    .local v0, "cardType":I
    sparse-switch v0, :sswitch_data_0

    .line 227
    const-string v5, "EM/nfc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectView() garbage card_type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->finish()V

    goto :goto_0

    .line 212
    :sswitch_0
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const/4 v5, 0x2

    iput v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mCurrentTag:I

    goto :goto_0

    .line 217
    :sswitch_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const/4 v5, 0x3

    iput v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mCurrentTag:I

    goto :goto_0

    .line 222
    :sswitch_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const/4 v5, 0x1

    iput v5, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mCurrentTag:I

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private setCurrentMode(I)V
    .locals 5
    .param p1, "tagTypeVal"    # I

    .prologue
    const/4 v4, 0x1

    .line 321
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mTagTypeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 322
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int v2, v4, v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 331
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 112
    const-string v2, "EM/nfc"

    const-string v3, "NfcSoftwareStackScanReadNDEF onClick"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mBtn1KOK:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditPageAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0805e1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 133
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->readMC1K()I

    .line 122
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mBtn4KOK:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditBlock:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0    # "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mEditSector:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "ss":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0805e2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->readMC4K()I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->requestWindowFeature(I)Z

    .line 90
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackScanReadTag onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 94
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->initUI()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->mCurrentTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;->readNDEF()I

    .line 103
    :cond_0
    return-void
.end method
