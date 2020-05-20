.class public Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;
.super Landroid/app/Activity;
.source "WfdPowerSaving.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final POWER_SAVING_PREF_NAME:Ljava/lang/String; = "em_wfd_power_saving"

.field private static final PREF_KEY_ENABLE_EXT_DISPLAY:Ljava/lang/String; = "enable_ext_display"

.field private static final SETTING_BASE_EXT:I = 0xa

.field private static final SETTING_BASE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM/WFD_POWER_SAV"


# instance fields
.field private mBtDone:Landroid/widget/Button;

.field private mDisplayTime:I

.field private mEtDisplayTime:Landroid/widget/EditText;

.field private mRgPower:Landroid/widget/RadioGroup;

.field private mSettingBase:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    .line 65
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    .line 66
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    .line 68
    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 69
    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    .line 70
    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    return-void
.end method

.method private getState()I
    .locals 5

    .prologue
    .line 164
    const v3, 0x7f0b0534

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 165
    .local v0, "checkExtDisplay":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 166
    .local v1, "checked":Z
    if-nez v1, :cond_1

    .line 167
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    .line 171
    :goto_0
    const/4 v2, 0x0

    .line 172
    .local v2, "state":I
    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0b052e

    if-ne v3, v4, :cond_2

    .line 173
    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    add-int/lit8 v2, v3, 0x0

    .line 181
    :cond_0
    :goto_1
    return v2

    .line 169
    .end local v2    # "state":I
    :cond_1
    const/16 v3, 0xa

    iput v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    goto :goto_0

    .line 174
    .restart local v2    # "state":I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0b052f

    if-ne v3, v4, :cond_3

    .line 175
    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0b0530

    if-ne v3, v4, :cond_4

    .line 177
    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    add-int/lit8 v2, v3, 0x2

    goto :goto_1

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0b0531

    if-ne v3, v4, :cond_0

    .line 179
    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    add-int/lit8 v2, v3, 0x2

    goto :goto_1
.end method

.method private initFromPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    const-string v3, "em_wfd_power_saving"

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 117
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "enable_ext_display"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    .local v1, "enableExtDisplay":Z
    if-nez v1, :cond_0

    .line 119
    iput v4, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    .line 123
    :goto_0
    const v3, 0x7f0b0534

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 124
    .local v0, "checkExtDisplay":Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    return-void

    .line 121
    .end local v0    # "checkExtDisplay":Landroid/widget/CheckBox;
    :cond_0
    const/16 v3, 0xa

    iput v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    goto :goto_0
.end method

.method private onClickBtnDone()V
    .locals 3

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getState()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_power_saving_option"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_power_saving_delay"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last solution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private saveToPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    const-string v4, "em_wfd_power_saving"

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 103
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 104
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const v4, 0x7f0b0534

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    .local v0, "checkExtDisplay":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 106
    .local v1, "checked":Z
    const-string v4, "enable_ext_display"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    if-nez v1, :cond_0

    .line 108
    iput v5, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    .line 112
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void

    .line 110
    :cond_0
    const/16 v4, 0xa

    iput v4, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    goto :goto_0
.end method

.method private setInitState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v1, 0xa

    const/4 v4, 0x1

    .line 136
    if-lt p1, v1, :cond_0

    .line 137
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    .line 138
    const v1, 0x7f0b0534

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 139
    .local v0, "checkExtDisplay":Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    .end local v0    # "checkExtDisplay":Landroid/widget/CheckBox;
    :goto_0
    const-string v1, "EM/WFD_POWER_SAV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInitState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSettingBase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    if-lt p1, v1, :cond_1

    .line 146
    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    sub-int/2addr p1, v1

    .line 150
    :goto_1
    if-nez p1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v2, 0x7f0b052e

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 161
    :goto_2
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    goto :goto_0

    .line 148
    :cond_1
    const-string v1, "EM/WFD_POWER_SAV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSettingBase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mSettingBase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_2
    if-ne p1, v4, :cond_3

    .line 153
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v2, 0x7f0b052f

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 154
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0531

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 159
    :cond_4
    const-string v1, "EM/WFD_POWER_SAV"

    const-string v2, "Wrong input resolution info"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    const-string v0, "EM/WFD_POWER_SAV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->onClickBtnDone()V

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->finish()V

    .line 134
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f0300a8

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->setContentView(I)V

    .line 77
    const v1, 0x7f0b052d

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mRgPower:Landroid/widget/RadioGroup;

    .line 78
    const v1, 0x7f0b0533

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    .line 80
    const v1, 0x7f0b0530

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 81
    .local v0, "tempButton":Landroid/widget/RadioButton;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 83
    const v1, 0x7f0b0535

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_power_saving_option"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    .line 88
    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mState:I

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->setInitState(I)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_power_saving_delay"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    .line 90
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mEtDisplayTime:Landroid/widget/EditText;

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->mDisplayTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/mediatek/engineermode/ChipSupport;->isCurrentChipEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const v0, 0x7f0b0534

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/wfdsettings/WfdPowerSaving;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method
