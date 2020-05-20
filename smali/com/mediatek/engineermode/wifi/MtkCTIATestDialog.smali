.class public Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;
.super Landroid/app/AlertDialog;
.source "MtkCTIATestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final CTIA_PREF:Ljava/lang/String; = "CTIA_PREF"

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final NOTIF_ID_ENABLE_CTIA:I = 0xa

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final PREF_CTIA_DUMP_BEACON:Ljava/lang/String; = "CTIA_DUMP_1"

.field private static final PREF_CTIA_DUMP_COUNTER:Ljava/lang/String; = "CTIA_DUMP_2"

.field private static final PREF_CTIA_DUMP_INTERVAL:Ljava/lang/String; = "CTIA_DUMP_3"

.field private static final PREF_CTIA_ENABLE:Ljava/lang/String; = "CTIA_ENABLE"

.field private static final PREF_CTIA_POWER:Ljava/lang/String; = "CTIA_POWER_MODE"

.field private static final PREF_CTIA_RATE:Ljava/lang/String; = "CTIA_RATE"

.field private static final TAG:Ljava/lang/String; = "EM/CTIATestDialog"


# instance fields
.field private mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDumpBeaconCheckbox:Landroid/widget/CheckBox;

.field private mDumpCounterCheckbox:Landroid/widget/CheckBox;

.field private mGetBtn:Landroid/widget/Button;

.field private mIdEditText:Landroid/widget/EditText;

.field private mIntervalEditText:Landroid/widget/EditText;

.field private mPowerMode:I

.field private mRate:[Ljava/lang/String;

.field private mRateSpinner:Landroid/widget/Spinner;

.field private mRateVal:I

.field private mSetBtn:Landroid/widget/Button;

.field private mValEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 129
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    .line 130
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    .line 131
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    .line 134
    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Automatic"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "1M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2M"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "5_5M"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "11M"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "9M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12M"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "18M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "24M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "36M"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "48M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "54M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "20MCS0800"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "20MCS01800"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "20MCS2800"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "20MCS3800"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "20MCS4800"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "20MCS5800"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "20MCS6800"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20MCS7800"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "20MCS0400"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "20MCS1400"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "20MCS2400"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "20MCS3400"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "20MCS4400"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "20MCS5400"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "20MCS6400"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "20MCS7400"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "40MCS0800"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "40MCS1800"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "40MCS2800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "40MCS3800"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "40MCS4800"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "40MCS5800"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "40MCS6800"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "40MCS7800"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "40MCS32800"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "40MCS0400"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "40MCS1400"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "40MCS2400"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "40MCS3400"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "40MCS4400"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "40MCS5400"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "40MCS6400"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "40MCS7400"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "40MCS32400"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRate:[Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 150
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    .line 152
    iput v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    .line 153
    iput v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mPowerMode:I

    .line 154
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    .line 155
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    .line 156
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    .line 157
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    .line 160
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    .line 163
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    .line 164
    iput-object v3, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    .line 202
    new-instance v0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog$1;-><init>(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    .line 169
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public static dismissCtiaEnabledNotify(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 508
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 509
    return-void
.end method

.method static emitNotif(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v7, 0x0

    .line 513
    new-instance v2, Landroid/app/Notification;

    const v4, 0x108009b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v4, p2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 515
    .local v2, "notif":Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 519
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, p2, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 520
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 521
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 522
    return-void
.end method

.method private getRateFromSpinner()I
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 376
    .local v0, "position":I
    return v0
.end method

.method private handlePsChange(I)V
    .locals 0
    .param p1, "psMode"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mPowerMode:I

    .line 372
    return-void
.end method

.method private handleRateChange(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    .line 367
    return-void
.end method

.method public static initWifiCtiaOnEnabled(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 459
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v9, "CTIA_PREF"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 461
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "CTIA_ENABLE"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 462
    .local v0, "enableCtia":Z
    const-string v9, "CTIA_RATE"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 464
    .local v6, "rate":I
    const-string v9, "CTIA_DUMP_1"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 466
    .local v1, "enableDumpBeacon":Z
    const-string v9, "CTIA_DUMP_2"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 469
    .local v2, "enableDumpCounter":Z
    const-string v9, "CTIA_DUMP_3"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 471
    .local v4, "interval":I
    if-eqz v0, :cond_0

    .line 472
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->doCtiaTestOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestRate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    const/4 v3, 0x0

    .line 479
    .local v3, "id":I
    const/4 v7, 0x0

    .line 481
    .local v7, "val":I
    const-string v9, "10020000"

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v3, v9

    .line 482
    if-eqz v1, :cond_1

    const/4 v7, 0x1

    .line 483
    :goto_1
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestSet: id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " val: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v11, v3

    int-to-long v13, v7

    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v9, "10020001"

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v3, v9

    .line 487
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_2

    const-string v9, "01"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v7, v9

    .line 490
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestSet: id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " val: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    int-to-long v11, v3

    int-to-long v13, v7

    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 475
    .end local v3    # "id":I
    .end local v7    # "val":I
    :cond_0
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestOff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->doCtiaTestOff()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v9, "EM/CTIATestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doCTIATestRate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    .restart local v3    # "id":I
    .restart local v7    # "val":I
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 487
    :cond_2
    const-string v9, "00"

    goto/16 :goto_2
.end method

.method public static isWifiCtiaEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "enabled":Z
    const-string v2, "CTIA_PREF"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "CTIA_ENABLE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 498
    return v0
.end method

.method public static notifyCtiaEnabled(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    const/16 v0, 0xa

    const-string v1, "WIFI CTIA is Enabled"

    const-string v2, "click here to switch CTIA mode"

    const-class v3, Lcom/mediatek/engineermode/wifi/WifiTestSetting;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->emitNotif(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 504
    return-void
.end method

.method private onFill()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method private onLayout()V
    .locals 4

    .prologue
    .line 190
    const v3, 0x7f030022

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setLayout(I)V

    .line 191
    const v2, 0x7f0801e3

    .line 192
    .local v2, "positiveButtonResId":I
    const v0, 0x7f080240

    .line 193
    .local v0, "negativeButtonResId":I
    const/4 v1, 0x0

    .line 194
    .local v1, "neutralButtonResId":I
    invoke-direct {p0, v2, v0, v1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setButtons(III)V

    .line 195
    return-void
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 312
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    .line 314
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRate:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V

    .line 317
    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    .line 318
    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    .line 320
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mSetBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mGetBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 325
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    .line 327
    const v0, 0x7f0b00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIdEditText:Landroid/widget/EditText;

    .line 328
    const v0, 0x7f0b00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mValEditText:Landroid/widget/EditText;

    .line 329
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    .line 333
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    .line 335
    const v0, 0x7f0b00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    .line 338
    return-void
.end method

.method private restorePrefs()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 286
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    const-string v7, "CTIA_PREF"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 288
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v6, "CTIA_ENABLE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 289
    .local v3, "prefEnableCtia":Z
    const-string v6, "CTIA_RATE"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 291
    .local v4, "prefRate":I
    const-string v6, "CTIA_DUMP_1"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 293
    .local v1, "prefDumpBeacon":Z
    const-string v6, "CTIA_DUMP_2"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 296
    .local v2, "prefDumpCounter":Z
    const-string v6, "CTIA_DUMP_3"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, "interval":I
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 304
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 305
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method private savePrefs()V
    .locals 7

    .prologue
    .line 258
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mContext:Landroid/content/Context;

    const-string v5, "CTIA_PREF"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 260
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 261
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "CTIA_ENABLE"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 262
    const-string v4, "CTIA_RATE"

    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getRateFromSpinner()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v4, "CTIA_DUMP_1"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v4, "CTIA_DUMP_2"

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    const/4 v3, 0x0

    .line 271
    .local v3, "tmpInterval":I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 276
    :goto_0
    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 277
    const/16 v3, 0xff

    .line 281
    :cond_0
    :goto_1
    const-string v4, "CTIA_DUMP_3"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 279
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setButtons(III)V
    .locals 2
    .param p1, "positiveResId"    # I
    .param p2, "negativeResId"    # I
    .param p3, "neutralResId"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    .local v0, "context":Landroid/content/Context;
    if-lez p1, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 356
    :cond_0
    if-lez p2, :cond_1

    .line 357
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 359
    :cond_1
    if-lez p3, :cond_2

    .line 360
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 362
    :cond_2
    return-void
.end method

.method private setLayout(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->setView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->onReferenceViews(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method private setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "items"    # [Ljava/lang/String;

    .prologue
    .line 341
    if-eqz p2, :cond_0

    .line 342
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 344
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 348
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 396
    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    .line 397
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->savePrefs()V

    .line 398
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestOn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->doCtiaTestOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestRate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    iget v9, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 405
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 406
    .local v2, "state":I
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->notifyCtiaEnabled(Landroid/content/Context;)V

    .line 418
    .end local v2    # "state":I
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 419
    .local v1, "id":I
    const/4 v4, 0x0

    .line 420
    .local v4, "val":I
    const-string v6, "10020000"

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 421
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpBeaconCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 422
    :goto_1
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestSet: id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " val: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v8, v1

    int-to-long v10, v4

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v3, 0x0

    .line 427
    .local v3, "tmpInterval":I
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 433
    :goto_2
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    .line 434
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v7, "255"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const/16 v3, 0xff

    .line 441
    :cond_1
    :goto_3
    const-string v6, "10020001"

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mDumpCounterCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "01"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    .line 445
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestSet: id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " val: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v8, v1

    int-to-long v10, v4

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/engineermode/wifi/EMWifi;->doCTIATestSet(JJ)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->dismiss()V

    .line 452
    .end local v1    # "id":I
    .end local v3    # "tmpInterval":I
    .end local v4    # "val":I
    :cond_2
    :goto_5
    return-void

    .line 411
    :cond_3
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestOff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->doCtiaTestOff()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v6, "EM/CTIATestDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doCTIATestRate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mWm:Landroid/net/wifi/WifiManager;

    iget v9, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateVal:I

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->doCtiaTestRate(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->dismissCtiaEnabledNotify(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 421
    .restart local v1    # "id":I
    .restart local v4    # "val":I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 429
    .restart local v3    # "tmpInterval":I
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    .line 431
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 436
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v6, 0x1

    if-ge v3, v6, :cond_1

    .line 437
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mIntervalEditText:Landroid/widget/EditText;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 442
    :cond_6
    const-string v6, "00"

    goto/16 :goto_4

    .line 448
    .end local v1    # "id":I
    .end local v3    # "tmpInterval":I
    .end local v4    # "val":I
    :cond_7
    const/4 v6, -0x2

    if-ne p2, v6, :cond_2

    .line 449
    const-string v6, "EM/CTIATestDialog"

    const-string v7, "cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->dismiss()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->onLayout()V

    .line 179
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->restorePrefs()V

    .line 180
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->mRateSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->getRateFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wifi/MtkCTIATestDialog;->handleRateChange(I)V

    .line 393
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 249
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 254
    return-void
.end method
