.class public Lcom/mediatek/engineermode/ratmode/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# static fields
.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final GSM_ONLY_INDEX:I = 0x4

.field private static final GSM_ONLY_VALUE:I = 0x1

.field private static final GSM_WCDMA_AUTO_INDEX:I = 0x0

.field private static final GSM_WCDMA_AUTO_VALUE:I = 0x3

.field private static final LTE_GSM_INDEX:I = 0x7

.field private static final LTE_GSM_VALUE:I = 0x22

.field private static final LTE_GSM_WCDMA_INDEX:I = 0x5

.field private static final LTE_GSM_WCDMA_VALUE:I = 0x9

.field private static final LTE_ONLY_INDEX:I = 0x2

.field private static final LTE_ONLY_VALUE:I = 0xb

.field private static final LTE_WCDMA_INDEX:I = 0x6

.field private static final LTE_WCDMA_VALUE:I = 0xc

.field private static final MODEM_MASK_TDSCDMA:I = 0x8

.field private static final MODEM_MASK_WCDMA:I = 0x4

.field private static final NOT_SPECIFIED_INDEX:I = 0x8

.field private static final NOT_SPECIFIED_VALUE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "EM/RATMode_RadioInfo"

.field private static final WCDMA_ONLY_INDEX:I = 0x3

.field private static final WCDMA_ONLY_VALUE:I = 0x2

.field private static final WCDMA_PREFERRED_INDEX:I = 0x1

.field private static final WCDMA_PREFERRED_VALUE:I


# instance fields
.field private mCurrentSelected:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mIsTddType:Z

.field private mModeType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkType:Landroid/widget/Spinner;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSimId:I

.field private mStatusEfRat:I

.field private mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    .line 113
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 115
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mFilter:Landroid/content/IntentFilter;

    .line 116
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    const/16 v0, 0x200

    iput v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    .line 118
    iput v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mSimId:I

    .line 119
    iput v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mIsTddType:Z

    .line 121
    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 122
    iput v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I

    .line 124
    new-instance v0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;-><init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;-><init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mCurrentSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->writePreferred(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/ratmode/RadioInfo;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    return p1
.end method

.method private getPreferred()I
    .locals 3

    .prologue
    .line 467
    const-string v1, "RATMode"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "sh":Landroid/content/SharedPreferences;
    const-string v1, "ModeType"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private writePreferred(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 455
    const-string v2, "RATMode"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 457
    .local v1, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 458
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 463
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    return-void

    .line 461
    :cond_0
    const-string v2, "ModeType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x1090009

    const v5, 0x1090008

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 316
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    const v1, 0x7f030083

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->setContentView(I)V

    .line 318
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mIsTddType:Z

    .line 320
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 324
    const v1, 0x7f0b045b

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    .line 325
    iget-boolean v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mIsTddType:Z

    if-eqz v1, :cond_2

    .line 326
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 329
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 340
    invoke-direct {p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->getPreferred()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 341
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v4, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 350
    :goto_2
    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 352
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isRatMenuControlledBySIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_EF_RAT_CONTENT_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mFilter:Landroid/content/IntentFilter;

    .line 355
    new-instance v1, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;-><init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    :cond_0
    return-void

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    move v1, v2

    .line 318
    goto :goto_0

    .line 332
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 335
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 336
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 419
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 405
    const-string v0, "EM/RATMode_RadioInfo"

    const-string v1, "Enter onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    .line 411
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isRatMenuControlledBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->updateUi()V

    .line 414
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 380
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isRatMenuControlledBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    .line 383
    const/4 v0, -0x1

    iget v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    if-ne v0, v1, :cond_1

    .line 384
    const-string v0, "EM/RATMode_RadioInfo"

    const-string v1, "3G off!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    :cond_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEfRatBalancing()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    .line 387
    const-string v0, "EM/RATMode_RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gemini support, statusEfRat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modetype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isRatMenuControlledBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 426
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 427
    return-void
.end method

.method protected updateUi()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 433
    iget v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    if-ne v5, v2, :cond_1

    const/4 v0, 0x1

    .line 434
    .local v0, "status":Z
    :goto_0
    const-string v2, "EM/RATMode_RadioInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update UI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 437
    iget v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mStatusEfRat:I

    if-ne v5, v2, :cond_3

    const v2, 0x7f080472

    :goto_2
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 441
    if-eqz v0, :cond_0

    .line 442
    const/4 v2, -0x1

    iget v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mModeType:I

    if-ne v2, v3, :cond_0

    .line 443
    const v2, 0x7f08046f

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 445
    iget-object v2, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 448
    :cond_0
    return-void

    .end local v0    # "status":Z
    :cond_1
    move v0, v1

    .line 433
    goto :goto_0

    .line 435
    .restart local v0    # "status":Z
    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    .line 437
    :cond_3
    const v2, 0x7f080473

    goto :goto_2
.end method
