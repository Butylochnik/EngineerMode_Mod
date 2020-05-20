.class public Lcom/mediatek/engineermode/MobileDataPreferred;
.super Landroid/preference/PreferenceActivity;
.source "MobileDataPreferred.java"


# static fields
.field private static final DATA_PREFER_KEY:Ljava/lang/String; = "data_prefer_key"

.field private static final MOBILE_DATA_PREF_DIALOG:I = 0xa

.field private static final PCH_CALL_PREFER:I = 0x1

.field private static final PCH_DATA_PREFER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM/CallDataPreferred"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mMobileDataPref:Landroid/preference/CheckBoxPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 66
    iput-object v0, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/MobileDataPreferred;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/MobileDataPreferred;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/MobileDataPreferred;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/MobileDataPreferred;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/MobileDataPreferred;->setGprsTransferType(I)V

    return-void
.end method

.method private setGprsTransferType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 137
    :try_start_0
    const-string v1, "EM/CallDataPreferred"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change Settings.System.GPRS_TRANSFER_SETTING to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/engineermode/MobileDataPreferred;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_transfer_setting"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v1, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 142
    iget-object v1, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EM/CallDataPreferred"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/MobileDataPreferred;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/engineermode/MobileDataPreferred;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 74
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "data_prefer_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/engineermode/MobileDataPreferred;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gprs_transfer_setting"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "pchFlag":I
    const-string v2, "EM/CallDataPreferred"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orgin value Settings.System.GPRS_TRANSFER_SETTING = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v4, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v2, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 83
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 89
    return-void

    .line 80
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 93
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/mediatek/engineermode/MobileDataPreferred$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/MobileDataPreferred$2;-><init>(Lcom/mediatek/engineermode/MobileDataPreferred;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/mediatek/engineermode/MobileDataPreferred$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/MobileDataPreferred$1;-><init>(Lcom/mediatek/engineermode/MobileDataPreferred;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/mediatek/engineermode/MobileDataPreferred;->mMobileDataPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/MobileDataPreferred;->showDialog(I)V

    .line 132
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/MobileDataPreferred;->setGprsTransferType(I)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
