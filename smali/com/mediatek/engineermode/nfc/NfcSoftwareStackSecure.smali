.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;
.super Landroid/app/Activity;
.source "NfcSoftwareStackSecure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$1;,
        Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;
    }
.end annotation


# static fields
.field private static final DIALOG_EXCEPTION:I = 0x0

.field public static final SE_MODE_NOTSUPPORT:I = 0x0

.field public static final SE_MODE_SE1:I = 0x1

.field public static final SE_MODE_SE2:I = 0x2

.field public static final SE_MODE_STATUS_OFF:I = 0x0

.field public static final SE_MODE_STATUS_VIRTUAL:I = 0x1

.field public static final SE_MODE_STATUS_WIRED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnSet:Landroid/widget/Button;

.field private mDisplayChkBoxArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyTag:Landroid/widget/CheckBox;

.field private mEleInfo:Landroid/widget/TextView;

.field private mGpSE1:Landroid/widget/RadioGroup;

.field private mGpSE2:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    .line 326
    return-void
.end method

.method private getSEIdx(I)I
    .locals 1
    .param p1, "radioId"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "idx":I
    packed-switch p1, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    return v0

    .line 220
    :pswitch_1
    const/4 v0, 0x0

    .line 221
    goto :goto_0

    .line 224
    :pswitch_2
    const/4 v0, 0x1

    .line 225
    goto :goto_0

    .line 228
    :pswitch_3
    const/4 v0, 0x2

    .line 229
    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0414
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 273
    const v3, 0x7f0b0412

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mEleInfo:Landroid/widget/TextView;

    .line 275
    const v3, 0x7f0b0411

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDummyTag:Landroid/widget/CheckBox;

    .line 277
    const v3, 0x7f0b041b

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mBtnSet:Landroid/widget/Button;

    .line 279
    const v3, 0x7f0b0413

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    .line 281
    const v3, 0x7f0b0417

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    .line 284
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b041c

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b041e

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v7}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b0420

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b041d

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b041f

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x4

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b0421

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$1;)V

    .line 315
    .local v2, "specListener":Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

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

    .line 316
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 318
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDummyTag:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDummyTag:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    return-void
.end method

.method private readSecureEleInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v1

    const-string v2, "nfc.software_stack.reg_notif"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;

    .line 100
    .local v0, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;
    if-nez v0, :cond_0

    .line 101
    const-string v1, "EM/nfc"

    const-string v2, "Take NfcRespMap.KEY_SS_REGISTER_NOTIF is null"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->finish()V

    .line 137
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v1, "EM/nfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "se "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " se_status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se:I

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805db

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->finish()V

    .line 124
    :cond_1
    :goto_1
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->length:I

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mEleInfo:Landroid/widget/TextView;

    const-string v2, "No Info."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_2
    const-string v1, "EM/nfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se_type:I

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setCurrentSEEventMask(I)V

    goto :goto_0

    .line 113
    :cond_2
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se:I

    if-ne v1, v4, :cond_3

    .line 115
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setRadioGpEnable(Landroid/widget/RadioGroup;)V

    .line 116
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se_status:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setSEIdx(Landroid/widget/RadioGroup;I)V

    goto :goto_1

    .line 117
    :cond_3
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setRadioGpEnable(Landroid/widget/RadioGroup;)V

    .line 121
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->se_status:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setSEIdx(Landroid/widget/RadioGroup;I)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->data:[B

    if-eqz v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mEleInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;->data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mEleInfo:Landroid/widget/TextView;

    const-string v2, "Broken Info."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setCurrentSEEventMask(I)V
    .locals 5
    .param p1, "eventVal"    # I

    .prologue
    const/4 v4, 0x1

    .line 342
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mDisplayChkBoxArray:Ljava/util/ArrayList;

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

    .line 343
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int v2, v4, v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 352
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_2
    return-void
.end method

.method private setRadioGpEnable(Landroid/widget/RadioGroup;)V
    .locals 10
    .param p1, "gp"    # Landroid/widget/RadioGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 141
    const v6, 0x7f0b0414

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 143
    .local v0, "gp11":Landroid/widget/RadioButton;
    const v6, 0x7f0b0415

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 145
    .local v1, "gp12":Landroid/widget/RadioButton;
    const v6, 0x7f0b0416

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 147
    .local v2, "gp13":Landroid/widget/RadioButton;
    const v6, 0x7f0b0418

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 149
    .local v3, "gp21":Landroid/widget/RadioButton;
    const v6, 0x7f0b0419

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 151
    .local v4, "gp22":Landroid/widget/RadioButton;
    const v6, 0x7f0b041a

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 154
    .local v5, "gp23":Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 155
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 156
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 157
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 158
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 159
    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 160
    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 162
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 163
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 164
    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 165
    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 166
    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 167
    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setSEIdx(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "gp"    # Landroid/widget/RadioGroup;
    .param p2, "status"    # I

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 238
    packed-switch p2, :pswitch_data_0

    .line 250
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 270
    :goto_0
    return-void

    .line 240
    :pswitch_0
    const v0, 0x7f0b0414

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 243
    :pswitch_1
    const v0, 0x7f0b0415

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 247
    :pswitch_2
    const v0, 0x7f0b0416

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 254
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 266
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    goto :goto_0

    .line 256
    :pswitch_3
    const v0, 0x7f0b0418

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 259
    :pswitch_4
    const v0, 0x7f0b0419

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 263
    :pswitch_5
    const v0, 0x7f0b041a

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSEOption(I)I
    .locals 3
    .param p1, "seIdx"    # I

    .prologue
    .line 200
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;-><init>()V

    .line 202
    .local v0, "req":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;
    iput p1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;->set_SEtype:I

    .line 205
    invoke-static {v0}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->setSEOption(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;

    move-result-object v1

    .line 206
    .local v1, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;
    if-nez v1, :cond_0

    .line 207
    const/4 v2, 0x1

    .line 211
    :goto_0
    return v2

    .line 208
    :cond_0
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;->status:I

    if-nez v2, :cond_1

    .line 209
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    :cond_1
    iget v2, v1, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;->status:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mBtnSet:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "seIdx":I
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE1:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getSEIdx(I)I

    move-result v0

    .line 182
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setSEOption(I)I

    move-result v1

    .line 183
    .local v1, "setSeResult":I
    if-nez v1, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104000a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 197
    .end local v0    # "seIdx":I
    .end local v1    # "setSeResult":I
    :cond_0
    :goto_1
    return-void

    .line 177
    .restart local v0    # "seIdx":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mGpSE2:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getSEIdx(I)I

    move-result v0

    goto :goto_0

    .line 187
    .restart local v1    # "setSeResult":I
    :cond_2
    if-ne v5, v1, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Response is null."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 82
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackSecure onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->initUI()V

    .line 85
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->mBtnSet:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 369
    :goto_0
    return-object v1

    .line 360
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0805d1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0805d7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 365
    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;->readSecureEleInfo()V

    .line 93
    return-void
.end method
