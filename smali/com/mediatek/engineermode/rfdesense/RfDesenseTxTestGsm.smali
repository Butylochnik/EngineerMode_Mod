.class public Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;
.super Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;
.source "RfDesenseTxTestGsm.java"


# static fields
.field public static final KEY_AFC:Ljava/lang/String; = "AFC_2G"

.field public static final KEY_BAND:Ljava/lang/String; = "Band_2G"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "Channel_2G"

.field public static final KEY_MODULATION:Ljava/lang/String; = "Bodulation_2G"

.field public static final KEY_PATTERN:Ljava/lang/String; = "Pattern_2G"

.field public static final KEY_POWER:Ljava/lang/String; = "Power_2G"

.field public static final KEY_STATE:Ljava/lang/String; = "Started_2G"

.field public static final KEY_TSC:Ljava/lang/String; = "TSC_2G"

.field private static final TAG:Ljava/lang/String; = "TxTestGsm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    const/4 v6, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v3, 0x7f060070

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 105
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 106
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 108
    const v3, 0x7f06007a

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 110
    .local v1, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    const-string v3, "tx_test"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 115
    .local v2, "pref":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    const-string v4, "Band_2G"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mCurrentBand:I

    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->updateLimits()V

    .line 119
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mCurrentBand:I

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v4, "Channel_2G"

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v4, "Power_2G"

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v4, "AFC_2G"

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v4, "TSC_2G"

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->defaultValue:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->setText(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPattern:Landroid/widget/Spinner;

    const-string v4, "Pattern_2G"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    const-string v3, "Started_2G"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mState:I

    .line 127
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 81
    invoke-super {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onPause()V

    .line 82
    const-string v1, "tx_test"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, "pref":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mState:I

    if-eq v1, v2, :cond_0

    .line 84
    const-string v1, "Band_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "Channel_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "Power_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "AFC_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "TSC_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "Pattern_2G"

    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "Started_2G"

    iget v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mState:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void

    .line 93
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected updateLimits()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 166
    .local v6, "band":I
    invoke-virtual {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "limits":[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    aget-object v3, v7, v8

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const/4 v1, 0x5

    aget-object v1, v7, v1

    const/4 v2, 0x6

    aget-object v2, v7, v2

    const/4 v3, 0x7

    aget-object v3, v7, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    iput v8, v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->step:I

    .line 174
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v1, "4100"

    const-string v2, "0"

    const-string v3, "8191"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "7"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
