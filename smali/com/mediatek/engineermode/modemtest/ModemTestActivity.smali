.class public Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
.super Landroid/app/Activity;
.source "ModemTestActivity.java"


# static fields
.field private static final ATTACH_MODE_ALWAYS:I = 0x1

.field private static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field private static final CMD_LENGTH:I = 0x6

.field private static final DOCOMO_OPTION:I = 0x80

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final IPO_DISABLE:I = 0x0

.field private static final IPO_ENABLE:I = 0x1

.field private static final MODEM_CTA:I = 0x1

.field private static final MODEM_FACTORY:I = 0x6

.field private static final MODEM_FTA:I = 0x2

.field private static final MODEM_IOT:I = 0x3

.field private static final MODEM_NONE:I = 0x0

.field private static final MODEM_OPERATOR:I = 0x5

.field private static final MODEM_QUERY:I = 0x4

.field private static final MODE_LENGTH:I = 0x3

.field private static final NETWORK_TYPE:I = 0x3

.field private static final PCH_CALL_PREFER:I = 0x1

.field private static final PCH_DATA_PREFER:I = 0x0

.field private static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field private static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field private static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field private static final REBOOT_DIALOG:I = 0x7d0

.field private static final SOFTBANK_OPTION:I = 0x100

.field public static final TAG:Ljava/lang/String; = "ModemTest"


# instance fields
.field private final mATCmdHander:Landroid/os/Handler;

.field private mCtaBtn:Landroid/widget/Button;

.field private mCtaOption:I

.field private mCtaOptionsArray:[Ljava/lang/String;

.field private mCurrentMode:I

.field private mFactoryBtn:Landroid/widget/Button;

.field private mFactoryOption:I

.field private mFtaBtn:Landroid/widget/Button;

.field private mFtaOption:I

.field private mFtaOptionsArray:[Ljava/lang/String;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mIotBtn:Landroid/widget/Button;

.field private mIotOption:I

.field private mIotOptionsArray:[Ljava/lang/String;

.field private mModemFlag:Z

.field private mNoneBtn:Landroid/widget/Button;

.field private mOperatorBtn:Landroid/widget/Button;

.field private mOperatorOption:I

.field private mOperatorOptionsArray:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    iput-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 105
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    .line 106
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    .line 107
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    .line 108
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    .line 109
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryOption:I

    .line 123
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    .line 125
    new-instance v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->handleQuery([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mModemFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->enableIPO(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->attachOrDetachGprs()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->disableAllButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->sendATCommad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setGprsTransferType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->writePreferred(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    return p1
.end method

.method private attachOrDetachGprs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 698
    iget v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    iget v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 699
    :cond_0
    const-string v3, "ModemTest"

    const-string v4, "Attach GPRS for DoCoMo/Softband"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v3, "persist.radio.gprs.attach.type"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "AT+EGTYPE=1,1"

    aput-object v3, v0, v5

    const-string v3, ""

    aput-object v3, v0, v6

    .line 703
    .local v0, "cmdStr":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 705
    const-string v3, "com.mtk.GPRS"

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 706
    .local v2, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 707
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ATTACH_MODE"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 719
    :goto_0
    return-void

    .line 709
    .end local v0    # "cmdStr":[Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "ModemTest"

    const-string v4, "Dettach GPRS for DoCoMo/Softband"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v3, "persist.radio.gprs.attach.type"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "AT+EGTYPE=0,1"

    aput-object v3, v0, v5

    const-string v3, ""

    aput-object v3, v0, v6

    .line 713
    .restart local v0    # "cmdStr":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 715
    const-string v3, "com.mtk.GPRS"

    invoke-virtual {p0, v3, v5}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 716
    .restart local v2    # "preference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 717
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ATTACH_MODE"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private checkNetworkType()V
    .locals 3

    .prologue
    .line 371
    const-string v0, "ModemTest"

    const-string v1, "TcheckNetworkType"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 374
    return-void
.end method

.method private disableAllButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 501
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->showDialog(I)V

    .line 502
    return-void
.end method

.method private enableIPO(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 722
    const-string v1, "ModemTest"

    if-eqz p1, :cond_0

    const-string v0, "enableIOP(true)"

    :goto_0
    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ipo_setting"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    return-void

    .line 722
    :cond_0
    const-string v0, "enableIPO(false)"

    goto :goto_0

    .line 723
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleQuery([Ljava/lang/String;)V
    .locals 21
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 385
    if-nez p1, :cond_1

    .line 386
    const-string v18, "The returned data is wrong."

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data length is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v6, 0x0

    .line 393
    .local v6, "i":I
    move-object/from16 v3, p1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v13, v3, v7

    .line 394
    .local v13, "str":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 395
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "data["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 400
    .end local v13    # "str":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 401
    const/16 v18, 0x0

    aget-object v18, p1, v18

    const/16 v19, 0x7

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 402
    .local v11, "mode":Ljava/lang/String;
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 404
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 405
    .local v15, "subMode":Ljava/lang/String;
    const/16 v18, 0x2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, "subCtaMode":Ljava/lang/String;
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "subMode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "subCtaMode is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCurrentMode:I

    .line 409
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is none"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 411
    :cond_4
    const-string v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Integrity Off"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 413
    :cond_5
    const-string v18, "2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is FTA:"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v5, v0

    .line 417
    .local v5, "ftaLength":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ftaLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 419
    .local v17, "val":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v16, "The current mode is FTA: "

    .line 421
    .local v16, "text":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v5, :cond_7

    .line 422
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_6

    .line 426
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 421
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 430
    :cond_7
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 432
    .end local v5    # "ftaLength":I
    .end local v9    # "j":I
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "val":I
    :catch_0
    move-exception v4

    .line 433
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 434
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subFtaMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v18, "3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is IOT:"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    .line 440
    .local v8, "iotLength":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "iotLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 442
    .restart local v17    # "val":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v16, "The current mode is IOT: "

    .line 444
    .restart local v16    # "text":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_a

    .line 445
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_9

    .line 449
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 444
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 453
    :cond_a
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 455
    .end local v8    # "iotLength":I
    .end local v9    # "j":I
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "val":I
    :catch_1
    move-exception v4

    .line 456
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 457
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subIotMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string v18, "4"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Operator."

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    .line 463
    .local v12, "operatorLength":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "operatorLength is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 465
    .restart local v17    # "val":I
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "val is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v16, "The current mode is Operator: "

    .line 467
    .restart local v16    # "text":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    if-ge v9, v12, :cond_d

    .line 468
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "j ==== "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(val & (1 << j)) is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    shl-int v20, v20, v9

    and-int v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/16 v18, 0x1

    shl-int v18, v18, v9

    and-int v18, v18, v17

    if-eqz v18, :cond_c

    .line 472
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 467
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 477
    :cond_d
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 479
    .end local v9    # "j":I
    .end local v12    # "operatorLength":I
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "val":I
    :catch_2
    move-exception v4

    .line 480
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 481
    const-string v18, "ModemTest"

    const-string v19, "Exception when transfer subFtaMode"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v18, "5"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "The current mode is Factory."

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 487
    .end local v14    # "subCtaMode":Ljava/lang/String;
    .end local v15    # "subMode":Ljava/lang/String;
    :cond_f
    const-string v18, "ModemTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mode len is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    .end local v11    # "mode":Ljava/lang/String;
    :cond_10
    const-string v18, "ModemTest"

    const-string v19, "The data returned is not right."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendATCommad(Ljava/lang/String;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "message"    # I

    .prologue
    .line 377
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 378
    .local v0, "cmd":[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EPCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 380
    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 382
    return-void
.end method

.method private setGprsTransferType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 729
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 730
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_transfer_setting"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 732
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 734
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModemTest"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writePreferred(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 690
    const-string v2, "RATMode"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 692
    .local v1, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 693
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ModeType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 694
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 695
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    const v2, 0x7f030061

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->setContentView(I)V

    .line 256
    new-instance v1, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    .line 322
    .local v1, "listener":Landroid/view/View$OnClickListener;
    const v2, 0x7f0b0311

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    .line 323
    const v2, 0x7f0b0312

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    .line 324
    const v2, 0x7f0b0317

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    .line 325
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v2, 0x7f0b0313

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    .line 327
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v2, 0x7f0b0314

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    .line 330
    const v2, 0x7f0b0315

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    .line 331
    const v2, 0x7f0b0316

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    .line 332
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mNoneBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mTextView:Landroid/widget/TextView;

    const-string v3, "The current mode is unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOptionsArray:[Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOptionsArray:[Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOptionsArray:[Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOptionsArray:[Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 348
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 352
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 353
    .local v0, "cmd":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "AT+EPCT?"

    aput-object v3, v0, v2

    .line 354
    const/4 v2, 0x1

    const-string v3, "+EPCT:"

    aput-object v3, v0, v2

    .line 355
    iget-object v2, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mATCmdHander:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 357
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x9

    .line 506
    sparse-switch p1, :sswitch_data_0

    .line 686
    :goto_0
    return-object v0

    .line 508
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "MODEM TEST"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please reboot the phone!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 512
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001a

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$5;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$4;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$3;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 553
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001b

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$8;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$8;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$7;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$7;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$6;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 596
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001c

    new-array v2, v2, [Z

    fill-array-data v2, :array_2

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$11;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$11;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$10;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$10;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$9;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$9;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 639
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MODEM TEST"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001e

    const/16 v2, 0xd

    new-array v2, v2, [Z

    fill-array-data v2, :array_3

    new-instance v3, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$14;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$13;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$12;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$12;-><init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7d0 -> :sswitch_0
    .end sparse-switch

    .line 512
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 553
    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 596
    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 639
    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 362
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mCtaOption:I

    .line 363
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mIotOption:I

    .line 364
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFtaOption:I

    .line 365
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mOperatorOption:I

    .line 366
    iput v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->mFactoryOption:I

    .line 367
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->checkNetworkType()V

    .line 368
    return-void
.end method
