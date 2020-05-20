.class public Lcom/mediatek/engineermode/nfc/NfcSettingsResult;
.super Landroid/app/Activity;
.source "NfcSettingsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nfc/NfcSettingsResult$1;,
        Lcom/mediatek/engineermode/nfc/NfcSettingsResult$OnClickListenerSpecial;
    }
.end annotation


# static fields
.field private static final NUMER_3:I = 0x3

.field private static final NUMER_4:I = 0x4

.field private static final NUMER_5:I = 0x5

.field private static final NUMER_6:I = 0x6

.field private static final NUMER_7:I = 0x7

.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mCardModeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mReaderModeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/nfc/ModeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTextFWVersion:Landroid/widget/TextView;

.field private mTextHWVersion:Landroid/widget/TextView;

.field private mTextSWVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextFWVersion:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextHWVersion:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextSWVersion:Landroid/widget/TextView;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    .line 204
    return-void
.end method

.method private initUI()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 104
    const v3, 0x7f0b03ac

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextFWVersion:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f0b03ad

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextHWVersion:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f0b03ae

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextSWVersion:Landroid/widget/TextView;

    .line 111
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b1

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v7}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b3

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v8}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b5

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v9}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b7

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v10}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b9

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v11}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03bb

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03bd

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x6

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03bf

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x7

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b2

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v7}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b4

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v8}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b6

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v9}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03b8

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v10}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03ba

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-direct {v5, v3, v11}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03bc

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03be

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x6

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/mediatek/engineermode/nfc/ModeMap;

    const v3, 0x7f0b03c0

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v6, 0x7

    invoke-direct {v5, v3, v6}, Lcom/mediatek/engineermode/nfc/ModeMap;-><init>(Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lcom/mediatek/engineermode/nfc/NfcSettingsResult$OnClickListenerSpecial;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSettingsResult;Lcom/mediatek/engineermode/nfc/NfcSettingsResult$1;)V

    .line 174
    .local v2, "specListener":Lcom/mediatek/engineermode/nfc/NfcSettingsResult$OnClickListenerSpecial;
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

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

    .line 175
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 177
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 178
    .restart local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget-object v3, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 181
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_1
    return-void
.end method

.method private setCurrentMode(II)V
    .locals 5
    .param p1, "readerModeVal"    # I
    .param p2, "cardModeVal"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 184
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mReaderModeArray:Ljava/util/ArrayList;

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

    .line 185
    .local v1, "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int v2, v3, v2

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 186
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 193
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mCardModeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/nfc/ModeMap;

    .line 194
    .restart local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    iget v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    shl-int v2, v3, v2

    and-int/2addr v2, p2

    if-nez v2, :cond_4

    .line 195
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, v1, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 202
    .end local v1    # "m":Lcom/mediatek/engineermode/nfc/ModeMap;
    :cond_5
    return-void
.end method

.method private setDisplayUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;

    move-result-object v1

    const-string v2, "nfc.settings"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcRespMap;->take(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;

    .line 90
    .local v0, "resp":Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;
    if-nez v0, :cond_0

    .line 91
    const-string v1, "EM/nfc"

    const-string v2, "Take NfcRespMap.KEY_SETTINGS is null"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextFWVersion:Landroid/widget/TextView;

    const-string v2, "0x%X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->fw_ver:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextHWVersion:Landroid/widget/TextView;

    const-string v2, "0x%X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->hw_ver:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->mTextSWVersion:Landroid/widget/TextView;

    const-string v2, "0x%X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->sw_ver:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget v1, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->reader_mode:I

    iget v2, v0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;->card_mode:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->setCurrentMode(II)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->requestWindowFeature(I)Z

    .line 72
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 75
    const-string v0, "EM/nfc"

    const-string v1, "NfcSettingsResult onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->initUI()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSettingsResult;->setDisplayUI()V

    .line 83
    return-void
.end method
