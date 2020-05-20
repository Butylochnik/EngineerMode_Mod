.class public Lcom/mediatek/engineermode/PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PrefsFragment.java"


# static fields
.field private static final FRAGMENT_RES:[I

.field private static final INNER_LOAD_INDICATOR_FILE:Ljava/lang/String; = "/system/etc/system_update/address.xml"

.field private static final MTK_NFC_CHIP_TYPE_MSR3110:I = 0x1

.field private static final MTK_NFC_CHIP_TYPE_MT6605:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/PrefsFragment"


# instance fields
.field private mXmlResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/PrefsFragment;->FRAGMENT_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04000c
        0x7f040001
        0x7f040003
        0x7f040005
        0x7f040006
        0x7f040009
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 77
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVoiceCapable()Z
    .locals 5

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 364
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 366
    .local v0, "bVoiceCapable":Z
    :goto_0
    const-string v2, "EM/PrefsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIsVoiceCapable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v0

    .line 364
    .end local v0    # "bVoiceCapable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 373
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 374
    .local v0, "bWifiOnly":Z
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 378
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 375
    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "prefId"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-virtual {p0, p2}, Lcom/mediatek/engineermode/PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 356
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v5, Lcom/mediatek/engineermode/PrefsFragment;->FRAGMENT_RES:[I

    iget v6, p0, Lcom/mediatek/engineermode/PrefsFragment;->mXmlResId:I

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/PrefsFragment;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 98
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const-string v5, "dualtalk_network_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 99
    const-string v5, "dualtalk_bandmode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 103
    const-string v5, "digital_standard"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 105
    const-string v5, "rat_mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 109
    :cond_0
    const-string v5, "dualtalk_network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nfc_controller_code"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 121
    .local v4, "versionCode":I
    sget-object v5, Lcom/mediatek/engineermode/PrefsFragment;->FRAGMENT_RES:[I

    iget v6, p0, Lcom/mediatek/engineermode/PrefsFragment;->mXmlResId:I

    aget v5, v5, v6

    const v6, 0x7f040001

    if-ne v5, v6, :cond_1

    .line 122
    packed-switch v4, :pswitch_data_0

    .line 132
    const-string v5, "EM/PrefsFragment"

    const-string v6, "no nfc chip support"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v5, "hqanfc"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 134
    const-string v5, "nfc"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 139
    :cond_1
    :goto_0
    const-string v5, "nfc_dta"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 147
    const-string v5, "ext_md_logger"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 158
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 159
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 160
    const-string v5, "fm_transmitter"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 168
    :cond_2
    :goto_1
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v8}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 170
    :cond_3
    const-string v5, "location_basedservice"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 173
    :cond_4
    invoke-static {v8}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 174
    const-string v5, "ygps"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 175
    const-string v5, "cw_test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 179
    :cond_5
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 180
    const-string v5, "matv"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 184
    :cond_6
    const/4 v5, 0x6

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 185
    const-string v5, "bluetooth"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 189
    :cond_7
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isFeatureSupported(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 190
    const-string v5, "wifi"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isVoiceCapable()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isWifiOnly()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 194
    :cond_9
    const-string v5, "auto_answer"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 195
    const-string v5, "repeat_call_test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 196
    const-string v5, "video_telephony"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 203
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/engineermode/PrefsFragment;->isWifiOnly()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 204
    const-string v5, "GPRS"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 205
    const-string v5, "Modem"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 206
    const-string v5, "NetworkInfo"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 207
    const-string v5, "Baseband"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 208
    const-string v5, "SIMMeLock"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 209
    const-string v5, "BandMode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 210
    const-string v5, "RAT Mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 211
    const-string v5, "SWLA"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 212
    const-string v5, "ModemTest"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 224
    :cond_b
    const-string v5, "simme_lock1"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 231
    const-string v5, "EM/PrefsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChipSupport.getChip(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v5, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v6

    if-le v5, v6, :cond_13

    .line 233
    const-string v5, "de_sense"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 234
    const-string v5, "camera89"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 240
    :goto_2
    const-string v5, "fast_dormancy"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/etc/system_update/address.xml"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "innerLoadIndicator":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    .line 245
    const-string v5, "system_update"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 247
    :cond_c
    sget-object v5, Lcom/mediatek/engineermode/ChipSupport;->CHIP_657X_SERIES_NEW:[I

    invoke-static {v5}, Lcom/mediatek/engineermode/ChipSupport;->isChipInSet([I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 248
    const-string v5, "deep_idle"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 249
    const-string v5, "sleep_mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 250
    const-string v5, "dcm"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 251
    const-string v5, "pll_cg"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 252
    const-string v5, "cpu_dvfs"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 253
    const-string v5, "mcdi_setting"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 260
    :cond_d
    const-string v5, "cmas"

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 261
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/PrefsFragment;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 262
    const-string v5, "cmas"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 266
    :cond_e
    const-string v5, "world_phone"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 270
    const-string v5, "saber"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 273
    const-string v5, "ro.operator.optr"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "mOptr":Ljava/lang/String;
    const-string v5, "OP01"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 275
    const-string v5, "ConfigureCheck2_Send_Test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 276
    const-string v5, "ConfigureCheck2_Self_Test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 279
    :cond_f
    const-string v5, "OP09"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 280
    const-string v5, "network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 281
    const-string v5, "dualtalk_network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 287
    :goto_3
    const-string v5, "device_register"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 295
    const-string v5, "lte_config"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 298
    const-string v5, "lte_network_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 300
    const-string v5, "lte_network_mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/mediatek/engineermode/cip/CipUtil;->isCipSupported()Z

    move-result v5

    if-nez v5, :cond_10

    .line 303
    const-string v5, "cip"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 306
    :cond_10
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 308
    const-string v5, "bandmode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 309
    const-string v5, "te_dev_tool"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 310
    const-string v5, "cds_information"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 311
    const-string v5, "cfu"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 312
    const-string v5, "fast_dormancy"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 313
    const-string v5, "gprs"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 314
    const-string v5, "hspa_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 315
    const-string v5, "mobile_data_prefer"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 316
    const-string v5, "modem_test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 317
    const-string v5, "modem_warning"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 318
    const-string v5, "network_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 319
    const-string v5, "dualtalk_network_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 320
    const-string v5, "network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 321
    const-string v5, "cdma_network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 322
    const-string v5, "dualtalk_network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 323
    const-string v5, "rat_mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 324
    const-string v5, "rf_desense_test"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 325
    const-string v5, "swla"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 326
    const-string v5, "simme_lock1"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 327
    const-string v5, "simme_lock2"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 328
    const-string v5, "world_phone"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 329
    const-string v5, "lte_config"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 330
    const-string v5, "lte_network_mode"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 331
    const-string v5, "lte_network_info"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 332
    const-string v5, "lte_tool"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 336
    :cond_11
    const-string v5, "dfo"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 338
    return-void

    .line 124
    .end local v0    # "innerLoadIndicator":Ljava/io/File;
    .end local v1    # "mOptr":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :pswitch_0
    const-string v5, "EM/PrefsFragment"

    const-string v6, "MSR3110 nfc chip, call nfc"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v5, "hqanfc"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :pswitch_1
    const-string v5, "EM/PrefsFragment"

    const-string v6, "MT6605 nfc chip, call hqanfc"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v5, "nfc"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_12
    const-string v5, "fm_receiver"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 164
    const-string v5, "fm_transmitter"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 236
    :cond_13
    const-string v5, "camera"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    .restart local v0    # "innerLoadIndicator":Ljava/io/File;
    .restart local v1    # "mOptr":Ljava/lang/String;
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_14
    const-string v5, "cdma_network_select"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/PrefsFragment;->removePreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/engineermode/PrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 344
    .local v4, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 345
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 346
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 347
    .local v3, "pre":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 349
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/PrefsFragment;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 345
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v3    # "pre":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public setResource(I)V
    .locals 0
    .param p1, "resIndex"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/mediatek/engineermode/PrefsFragment;->mXmlResId:I

    .line 87
    return-void
.end method
