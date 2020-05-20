.class public Lcom/mediatek/engineermode/worldphone/ModemSwitch;
.super Landroid/app/Activity;
.source "ModemSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/ModemSwitch"


# instance fields
.field private mButtonSet:Landroid/widget/Button;

.field private mButtonSetTimer:Landroid/widget/Button;

.field private mRadioAuto:Landroid/widget/RadioButton;

.field private mRadioFdd:Landroid/widget/RadioButton;

.field private mRadioTdd:Landroid/widget/RadioButton;

.field private mText:Landroid/widget/TextView;

.field private mTimer:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 121
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSetTimer:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "timer":I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mTimer:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "world_phone_fdd_modem_timer"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    const-string v4, "Set timer succeed."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 191
    .end local v3    # "timer":I
    :cond_0
    :goto_1
    return-void

    .line 125
    .restart local v3    # "timer":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "EM/ModemSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mTimer:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "timer":I
    :cond_1
    const/4 v2, 0x0

    .line 136
    .local v2, "result":Z
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    const-string v4, "EM/ModemSwitch"

    const-string v5, "Set modem type: 3"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v4, v6}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 145
    invoke-static {v8}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 147
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 148
    const/4 v2, 0x1

    .line 177
    :cond_3
    :goto_2
    const-string v4, "EM/ModemSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set modem type result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v2, :cond_7

    .line 179
    const-string v4, "Switch succeed."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    .line 185
    .local v1, "modemType":I
    const-string v4, "EM/ModemSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get modem type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-ne v1, v8, :cond_8

    .line 187
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v5, 0x7f080686

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 150
    .end local v1    # "modemType":I
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const-string v4, "EM/ModemSwitch"

    const-string v5, "Set modem type: 4"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v4, v6}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 159
    invoke-static {v9}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 161
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 162
    const/4 v2, 0x1

    goto :goto_2

    .line 164
    :cond_6
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "EM/ModemSwitch"

    const-string v5, "Set modem type: auto"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v4, v7}, Lcom/mediatek/common/telephony/IWorldPhone;->setNetworkSelectionMode(I)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 181
    :cond_7
    const-string v4, "Switch failed."

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 188
    .restart local v1    # "modemType":I
    :cond_8
    if-ne v1, v9, :cond_0

    .line 189
    iget-object v4, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v5, 0x7f080687

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->setContentView(I)V

    .line 77
    const v0, 0x7f0b030b

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    .line 78
    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    .line 79
    const v0, 0x7f0b030d

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    .line 80
    const v0, 0x7f0b0309

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0b030f

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mTimer:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0b030e

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSet:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0b0310

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSetTimer:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mButtonSetTimer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    const-string v2, "EM/ModemSwitch"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    .line 94
    .local v0, "modemType":I
    const-string v2, "EM/ModemSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get modem type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v3, 0x7f080686

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 109
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioFdd:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioAuto:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_fdd_modem_timer"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "timer":I
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mTimer:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void

    .line 99
    .end local v1    # "timer":I
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v3, 0x7f080687

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mRadioTdd:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/worldphone/ModemSwitch;->mText:Landroid/widget/TextView;

    const v3, 0x7f080685

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query Modem type failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
