.class public Lcom/mediatek/engineermode/GPRS;
.super Landroid/app/Activity;
.source "GPRS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ATTACH_MODE_ALWAYS:I = 0x1

.field public static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field public static final ATTACH_MODE_WHEN_NEEDED:I = 0x0

.field private static final EVENT_GPRS_ATTACHED:I = 0x1

.field private static final EVENT_GPRS_ATTACH_TYPE:I = 0x9

.field private static final EVENT_GPRS_DETACHED:I = 0x2

.field private static final EVENT_GPRS_FD:I = 0x8

.field private static final EVENT_GPRS_INTERNAL_AT:I = 0x6

.field private static final EVENT_PDP_ACTIVATE:I = 0x3

.field private static final EVENT_PDP_DEACTIVATE:I = 0x4

.field private static final EVENT_SEND_DATA:I = 0x5

.field private static final EVENT_WRITE_IMEI:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "GPRS EN"

.field private static final PDP_CONTEXT_MAX:I = 0xf

.field public static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field public static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field public static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static final SCRI_DEFAULT_TIMEOUT:I = 0x14


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlive:Z

.field private mBtnActivate:Landroid/widget/Button;

.field private mBtnAttached:Landroid/widget/Button;

.field private mBtnAttachedContinue:Landroid/widget/Button;

.field private mBtnDeactivate:Landroid/widget/Button;

.field private mBtnDetached:Landroid/widget/Button;

.field private mBtnDetachedContinue:Landroid/widget/Button;

.field private mBtnDialUpCsd:Landroid/widget/Button;

.field private mBtnImei:Landroid/widget/Button;

.field private mBtnNotSpecify:Landroid/widget/Button;

.field private mBtnPdnReuseOff:Landroid/widget/Button;

.field private mBtnPdnReuseOn:Landroid/widget/Button;

.field private mBtnSendData:Landroid/widget/Button;

.field private mBtnSim1:Landroid/widget/Button;

.field private mBtnSim2:Landroid/widget/Button;

.field mContextCmdStringArray:[Ljava/lang/String;

.field private mCsdNum:Landroid/widget/EditText;

.field private mCsdSlot:Landroid/widget/EditText;

.field private mEditDataLen:Landroid/widget/EditText;

.field private mEditImeiValue:Landroid/widget/EditText;

.field private mFlag:Z

.field private mGprstAttachSelect:Landroid/widget/RadioGroup;

.field private mPDPContextIndex:I

.field private mPDPSelect:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRaBtnSIM1Enabled:Landroid/widget/RadioButton;

.field private mRaBtnSIM2Enabled:Landroid/widget/RadioButton;

.field private mRaGpDefSIMSelect:Landroid/widget/RadioGroup;

.field private mRaGpPDPSelect:Landroid/widget/RadioGroup;

.field private mRaGpUsageSelect:Landroid/widget/RadioGroup;

.field private mResponseHander:Landroid/os/Handler;

.field private mSPinnerPDPContext:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextDefSIMSelect:Landroid/widget/TextView;

.field private mUsageSelect:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v1, v0, v3

    const-string v1, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3,256,256,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3,128,128,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3,128,128,0,0,1,1500,\"1e6\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3,128,128,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3,256,256,0,0,1,1500,\"1e3\",\"4e3\",1,0,0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "3,512,512,0,0,1,1500,\"1e4\",\"1e5\",0,0,0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    .line 107
    iput-boolean v4, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 145
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    .line 146
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    .line 147
    iput v3, p0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    .line 151
    iput-boolean v3, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 648
    new-instance v0, Lcom/mediatek/engineermode/GPRS$6;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/GPRS$6;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/GPRS;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/GPRS;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/GPRS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/GPRS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/GPRS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/GPRS;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/GPRS;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    return p1
.end method

.method private rebootAlert()V
    .locals 4

    .prologue
    .line 775
    new-instance v1, Lcom/mediatek/engineermode/GPRS$7;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/GPRS$7;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    .line 792
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Reboot?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Warning"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 796
    return-void
.end method

.method private showDefaultSim()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 759
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 760
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    .line 763
    .local v0, "simId":I
    if-nez v0, :cond_1

    .line 764
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 765
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    if-ne v0, v2, :cond_0

    .line 767
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 768
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAttachModeMMI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 799
    const-string v2, "com.mtk.GPRS"

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/engineermode/GPRS;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 800
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v2, "ATTACH_MODE"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 803
    .local v0, "attachMode":I
    packed-switch v0, :pswitch_data_0

    .line 822
    :goto_0
    return-void

    .line 805
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 806
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 807
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 810
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 811
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 812
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 815
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 816
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 817
    iget-object v2, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 23
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 423
    const-string v19, "GPRS EN"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onClick:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 426
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+EGMR=1,"

    aput-object v20, v12, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v12, v19

    .line 428
    .local v12, "imeiString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v16

    .line 429
    .local v16, "simId":I
    if-nez v16, :cond_17

    .line 430
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+EGMR=1,7,\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v12, v19

    .line 441
    :cond_0
    :goto_0
    const-string v19, "GPRS EN"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IMEI String:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v12, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 446
    .end local v12    # "imeiString":[Ljava/lang/String;
    .end local v16    # "simId":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 448
    :try_start_0
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 450
    .local v10, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v10, :cond_2

    .line 451
    const-string v19, "GPRS EN"

    const-string v20, "clocwork worked..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 460
    const-string v19, "GPRS EN"

    const-string v20, "SIM 1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 463
    .local v11, "imei":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const-string v19, "GPRS EN"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IMEI 1: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v10    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v11    # "imei":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 474
    :try_start_1
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 476
    .restart local v10    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v10, :cond_4

    .line 477
    const-string v19, "GPRS EN"

    const-string v20, "clocwork worked..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 482
    const-string v19, "GPRS EN"

    const-string v20, "SIM 2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 485
    .restart local v11    # "imei":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const-string v19, "GPRS EN"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IMEI 2: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    .end local v10    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v11    # "imei":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 496
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+CGATT=1"

    aput-object v20, v4, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v4, v19

    .line 497
    .local v4, "attachedAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 501
    .end local v4    # "attachedAT":[Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 502
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+CGATT=0"

    aput-object v20, v7, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v7, v19

    .line 503
    .local v7, "detachedAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v7, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 507
    .end local v7    # "detachedAT":[Ljava/lang/String;
    :cond_7
    const-string v19, "com.mtk.GPRS"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/engineermode/GPRS;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 508
    .local v14, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 510
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 511
    const-string v19, "persist.radio.gprs.attach.type"

    const-string v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+EGTYPE=1,1"

    aput-object v20, v5, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v5, v19

    .line 513
    .local v5, "cmdStr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 516
    const-string v19, "ATTACH_MODE"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 528
    .end local v5    # "cmdStr":[Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v19, "ATTACH_MODE_SIM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/engineermode/GPRS;->updateAttachModeMMI()V

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 533
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 536
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+CGQMIN=1"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 537
    .local v3, "activateAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 539
    const/16 v19, 0x0

    const-string v20, "AT+CGQREQ=1"

    aput-object v20, v3, v19

    .line 540
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 543
    const/16 v19, 0x0

    const-string v20, "AT+CGDCONT=1,\"IP\",\"internet\",\"192.168.1.1\",0,0"

    aput-object v20, v3, v19

    .line 544
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 547
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+CGEQREQ=1,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    .line 549
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 552
    const/16 v19, 0x0

    const-string v20, "AT+ACTTEST=1,1"

    aput-object v20, v3, v19

    .line 553
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 557
    .end local v3    # "activateAT":[Ljava/lang/String;
    :cond_9
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 558
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+CGQMIN=2"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 559
    .restart local v3    # "activateAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 561
    const/16 v19, 0x0

    const-string v20, "AT+CGQREQ=2"

    aput-object v20, v3, v19

    .line 562
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 566
    const/16 v19, 0x0

    const-string v20, "AT+CGDCONT=2,\"IP\",\"internet\",\"192.168.1.1\",0,0"

    aput-object v20, v3, v19

    .line 568
    :cond_a
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mUsageSelect:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 569
    const/16 v19, 0x0

    const-string v20, "AT+CGDSCONT=2,1,0,0"

    aput-object v20, v3, v19

    .line 571
    :cond_b
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 574
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+CGEQREQ=2,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mContextCmdStringArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPContextIndex:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v3, v19

    .line 576
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 579
    const/16 v19, 0x0

    const-string v20, "AT+ACTTEST=1,2"

    aput-object v20, v3, v19

    .line 580
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v3, v19

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 587
    .end local v3    # "activateAT":[Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 588
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/engineermode/GPRS;->mFlag:Z

    .line 590
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    .line 591
    .local v6, "deactivateAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 592
    const/16 v19, 0x0

    const-string v20, "AT+ACTTEST=0,1"

    aput-object v20, v6, v19

    .line 594
    :cond_d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 595
    const/16 v19, 0x0

    const-string v20, "AT+ACTTEST=0,2"

    aput-object v20, v6, v19

    .line 597
    :cond_e
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v6, v19

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v6, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 603
    .end local v6    # "deactivateAT":[Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditDataLen:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 605
    .local v18, "strDataLength":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    .line 606
    .local v15, "sendDataAT":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 607
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+CGSDATA="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v15, v19

    .line 609
    :cond_10
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/engineermode/GPRS;->mPDPSelect:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 610
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+CGSDATA="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v15, v19

    .line 612
    :cond_11
    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v15, v19

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 617
    .end local v15    # "sendDataAT":[Ljava/lang/String;
    .end local v18    # "strDataLength":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 618
    const-string v19, "ril.pdn.reuse"

    const-string v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 627
    :cond_13
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDialUpCsd:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 628
    const-string v19, "GPRS EN"

    const-string v20, "DialCsd:"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mCsdNum:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "num":Ljava/lang/String;
    const/16 v17, 0x0

    .line 632
    .local v17, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mCsdSlot:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 633
    if-ltz v17, :cond_14

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    :cond_14
    const/16 v17, 0x0

    .line 636
    :cond_15
    :try_start_2
    const-string v19, "phone"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 639
    .restart local v10    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    move/from16 v0, v17

    invoke-interface {v10, v0, v13}, Lcom/android/internal/telephony/ITelephony;->dialUpCsd(ILjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 646
    .end local v10    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v13    # "num":Ljava/lang/String;
    .end local v17    # "slot":I
    :cond_16
    :goto_5
    return-void

    .line 432
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "preference":Landroid/content/SharedPreferences;
    .restart local v12    # "imeiString":[Ljava/lang/String;
    .restart local v16    # "simId":I
    :cond_17
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 433
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AT+EGMR=1,10,\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v12, v19

    goto/16 :goto_0

    .line 465
    .end local v12    # "imeiString":[Ljava/lang/String;
    .end local v16    # "simId":I
    :catch_0
    move-exception v8

    .line 466
    .local v8, "e":Landroid/os/RemoteException;
    const-string v19, "GPRS EN"

    const-string v20, "RemoteException in ITelephony.Stub.asInterface"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 488
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 489
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v19, "GPRS EN"

    const-string v20, "RemoteException in ITelephony.Stub.asInterface"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 517
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v14    # "preference":Landroid/content/SharedPreferences;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 518
    const-string v19, "persist.radio.gprs.attach.type"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "AT+EGTYPE=0,1"

    aput-object v20, v5, v19

    const/16 v19, 0x1

    const-string v20, ""

    aput-object v20, v5, v19

    .line 520
    .restart local v5    # "cmdStr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mResponseHander:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    const-string v19, "ATTACH_MODE"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 524
    .end local v5    # "cmdStr":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 525
    const-string v19, "ATTACH_MODE"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 621
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 622
    const-string v19, "ril.pdn.reuse"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 641
    .restart local v13    # "num":Ljava/lang/String;
    .restart local v17    # "slot":I
    :catch_2
    move-exception v8

    .line 642
    .restart local v8    # "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const v4, 0x7f03003d

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->setContentView(I)V

    .line 178
    const-string v4, "GPRS EN"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-boolean v7, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 184
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 186
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 188
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xf

    if-ge v2, v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDP Context "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const-string v5, "PDP Context 30"

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 192
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const-string v5, "PDP Context 31"

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 195
    const v4, 0x7f0b0192

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    .line 196
    const v4, 0x7f0b0193

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    .line 197
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim1:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSim2:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "imei":Ljava/lang/String;
    const-string v4, "GPRS EN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default IMEI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v4, 0x7f0b0194

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    .line 208
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v4, 0x7f0b0195

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    .line 211
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditImeiValue:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnImei:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    const v4, 0x7f0b019a

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    .line 273
    const v4, 0x7f0b019b

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    .line 274
    const v4, 0x7f0b019f

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    .line 275
    const v4, 0x7f0b01a0

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    .line 276
    const v4, 0x7f0b01a1

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    .line 278
    const v4, 0x7f0b01a2

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    .line 279
    const v4, 0x7f0b01a5

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    .line 280
    const v4, 0x7f0b01a8

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    .line 281
    const v4, 0x7f0b01a9

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    .line 282
    const v4, 0x7f0b01aa

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    .line 283
    const v4, 0x7f0b01ab

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mEditDataLen:Landroid/widget/EditText;

    .line 284
    const v4, 0x7f0b01ac

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    .line 286
    const v4, 0x7f0b01b1

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDialUpCsd:Landroid/widget/Button;

    .line 288
    const v4, 0x7f0b019c

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    .line 290
    const v4, 0x7f0b01ad

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    .line 291
    const v4, 0x7f0b01ae

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    .line 294
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttached:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetached:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnAttachedContinue:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDetachedContinue:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnNotSpecify:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/mediatek/engineermode/GPRS;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 300
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnActivate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDeactivate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnSendData:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mBtnDialUpCsd:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v4, 0x7f0b01af

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mCsdNum:Landroid/widget/EditText;

    .line 310
    const v4, 0x7f0b01b0

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/GPRS;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mCsdSlot:Landroid/widget/EditText;

    .line 311
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mCsdSlot:Landroid/widget/EditText;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mSPinnerPDPContext:Landroid/widget/Spinner;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$2;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$2;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 330
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$3;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$3;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 358
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$4;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$4;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 376
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpUsageSelect:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/mediatek/engineermode/GPRS$5;

    invoke-direct {v5, p0}, Lcom/mediatek/engineermode/GPRS$5;-><init>(Lcom/mediatek/engineermode/GPRS;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 389
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mRaGpPDPSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b01a3

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 391
    const-string v4, "persist.radio.gprs.attach.type"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "gprsAttachType":I
    if-ne v1, v7, :cond_1

    .line 395
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b019d

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 400
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/GPRS;->showDefaultSim()V

    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    .line 404
    iget-object v5, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    const-string v7, "OK"

    const/4 v4, 0x0

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 405
    return-void

    .line 397
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/GPRS;->mGprstAttachSelect:Landroid/widget/RadioGroup;

    const v5, 0x7f0b019e

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlive:Z

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 171
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 410
    invoke-direct {p0}, Lcom/mediatek/engineermode/GPRS;->updateAttachModeMMI()V

    .line 412
    const-string v0, "0"

    const-string v1, "ril.pdn.reuse"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS;->mBtnPdnReuseOff:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
