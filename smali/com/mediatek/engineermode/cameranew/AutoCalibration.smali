.class public Lcom/mediatek/engineermode/cameranew/AutoCalibration;
.super Landroid/app/Activity;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;
    }
.end annotation


# static fields
.field private static final DIALOG_ISO_SPEED:I = 0x5

.field private static final HDR_KEY:Ljava/lang/String; = "mediatek.hdr.debug"

.field static final ID_EV_CALIBRATION_ACTION:I = 0x1

.field static final ID_EV_CALIBRATION_NONE:I = 0x0

.field private static final ISO_STRS_ARRAY:[Ljava/lang/String;

.field public static final PREFERENCE_KEY:Ljava/lang/String; = "camera_inter_settings"

.field private static final TAG:Ljava/lang/String; = "EM/AutoCalibration"


# instance fields
.field private mAfAuto:Landroid/widget/RadioButton;

.field private mAfBracket:Landroid/widget/RadioButton;

.field private mAfBracketInterval:Landroid/widget/Spinner;

.field private mAfBracketLayout:Landroid/widget/LinearLayout;

.field private mAfBracketRange:Landroid/widget/EditText;

.field private mAfContinuous:Landroid/widget/RadioButton;

.field private mAfFullScan:Landroid/widget/RadioButton;

.field private mAfFullScanFrameInterval:Landroid/widget/EditText;

.field private mAfFullScanSetLayout:Landroid/widget/LinearLayout;

.field private mAfMode:I

.field private mAfModeStatus:Z

.field private mAfSpecialIso:I

.field private mAfThrough:Landroid/widget/RadioButton;

.field private mAfThroughDirec:Landroid/widget/Spinner;

.field private mAfThroughInterval:Landroid/widget/EditText;

.field private mAfThroughLayout:Landroid/widget/LinearLayout;

.field private mAfThroughRepeat:Landroid/widget/Spinner;

.field private mAvailCameraNumber:I

.field private mCameraId:I

.field private mCaptureListView:Landroid/widget/ListView;

.field private mCaptureMode:I

.field private mCommonOptionLv:Landroid/widget/ListView;

.field private mFlickerSpinner:Landroid/widget/Spinner;

.field private mHdrSpinner:Landroid/widget/Spinner;

.field private mIsInitialized:Z

.field private mIsoListView:Landroid/widget/ListView;

.field private mIsoValueStr:Ljava/lang/String;

.field private mMaxFullScanFrameInterval:I

.field private mMinFullScanFrameInterval:I

.field private mMulFrameCaptureNum:Landroid/widget/Spinner;

.field private mMulFrameLayout:Landroid/widget/LinearLayout;

.field private mMulFrameMode:Landroid/widget/RadioButton;

.field private mMulISOFlags:[Z

.field private mNormalCaptureLayout:Landroid/widget/LinearLayout;

.field private mNormalCaptureNum:Landroid/widget/Spinner;

.field private mNormalCaptureSize:Landroid/widget/Spinner;

.field private mNormalCaptureType:Landroid/widget/Spinner;

.field private mNormalMode:Landroid/widget/RadioButton;

.field private mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSensorSpinner:Landroid/widget/Spinner;

.field private mStrobeModeLayout:Landroid/widget/LinearLayout;

.field private mStrobeModeSpinner:Landroid/widget/Spinner;

.field private mThroughFocsuEndPos:Landroid/widget/EditText;

.field private mThroughFocsuStartPos:Landroid/widget/EditText;

.field private mThroughFocusEnd:Landroid/widget/LinearLayout;

.field private mThroughFocusStart:Landroid/widget/LinearLayout;

.field private mVideoClipLayout:Landroid/widget/LinearLayout;

.field private mVideoClipResolution:Landroid/widget/Spinner;

.field private mVideoCliplMode:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "150"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "300"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "600"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "800"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1200"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "1600"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "2400"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3200"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->ISO_STRS_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z

    .line 127
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAvailCameraNumber:I

    .line 130
    const/16 v0, 0xe

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z

    .line 133
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfSpecialIso:I

    .line 135
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    .line 136
    iput v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    .line 140
    new-instance v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 651
    return-void

    .line 130
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
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

.method static synthetic access$000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[I[Landroid/widget/RadioButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [Landroid/widget/RadioButton;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCaptureLayout([I[Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setAfModeAccessble(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # [Landroid/view/View;
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # [Landroid/widget/RadioButton;
    .param p2, "x2"    # Landroid/widget/RadioButton;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->statusChangesByAf(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanSetLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->initByCameraDeviceCapability(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfSpecialIso:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfSpecialIso:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoValueStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoValueStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->ISO_STRS_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # [Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getArrayValue([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putStrInPreference(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusStart:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusEnd:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;

    return-object v0
.end method

.method private collectCustomParams()Ljava/lang/String;
    .locals 6

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 437
    .local v1, "editIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 438
    aget v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 434
    :array_0
    .array-data 4
        0x7f0b0354
        0x7f0b0355
        0x7f0b0356
    .end array-data
.end method

.method private getArrayValue([Z)Ljava/lang/String;
    .locals 5
    .param p1, "array"    # [Z

    .prologue
    .line 839
    const-string v1, ""

    .line 840
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 841
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->ISO_STRS_ARRAY:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 846
    const v2, 0x7f08051f

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 847
    const-string v1, "0,"

    .line 849
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private getIntegerFromEdit(Landroid/widget/EditText;IZIZ)I
    .locals 6
    .param p1, "edit"    # Landroid/widget/EditText;
    .param p2, "from"    # I
    .param p3, "includeFrom"    # Z
    .param p4, "end"    # I
    .param p5, "includeEnd"    # Z

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "editStr":Ljava/lang/String;
    const/4 v2, -0x1

    .line 823
    .local v2, "value":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 828
    :goto_0
    if-lt v2, p2, :cond_0

    if-le v2, p4, :cond_2

    .line 829
    :cond_0
    const/4 v2, -0x1

    .line 835
    :cond_1
    :goto_1
    return v2

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "EM/AutoCalibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntegerFromEdit() NumberFormatException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 830
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    if-nez p3, :cond_3

    if-ne v2, p2, :cond_3

    .line 831
    const/4 v2, -0x1

    goto :goto_1

    .line 832
    :cond_3
    if-nez p5, :cond_1

    if-ne v2, p4, :cond_1

    .line 833
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getOutputSdblkFromUi()I
    .locals 4

    .prologue
    .line 744
    const/4 v2, 0x0

    .line 746
    .local v2, "val":I
    const v3, 0x7f0b033b

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 747
    .local v0, "spOutputSdblk":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "strVal":Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const/4 v2, 0x1

    .line 751
    :cond_0
    return v2
.end method

.method private getShadingTableFromUi()I
    .locals 3

    .prologue
    .line 738
    const v2, 0x7f0b0339

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 739
    .local v1, "spShadingTable":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 740
    .local v0, "selectedIdx":I
    return v0
.end method

.method private getShutterDelayFromUi()I
    .locals 8

    .prologue
    .line 721
    const v5, 0x7f0b0337

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 722
    .local v2, "spShutterDelay":Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "strVal":Ljava/lang/String;
    const-string v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 724
    .local v1, "endPos":I
    if-lez v1, :cond_0

    .line 725
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 727
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 728
    const/4 v4, 0x0

    .line 730
    .local v4, "val":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 734
    :goto_0
    return v4

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "EM/AutoCalibration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " strVal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inintComponents()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x1090003

    .line 450
    const v1, 0x7f0b0326

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;

    .line 451
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 452
    const v1, 0x7f0b032b

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;

    .line 453
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 454
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 457
    const v1, 0x7f0b032e

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;

    .line 458
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 459
    const v1, 0x7f0b0327

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureLayout:Landroid/widget/LinearLayout;

    .line 460
    const v1, 0x7f0b0328

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;

    .line 461
    const v1, 0x7f0b0329

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureType:Landroid/widget/Spinner;

    .line 462
    const v1, 0x7f0b032a

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureNum:Landroid/widget/Spinner;

    .line 463
    const v1, 0x7f0b032c

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameLayout:Landroid/widget/LinearLayout;

    .line 464
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    const v1, 0x7f0b032d

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameCaptureNum:Landroid/widget/Spinner;

    .line 467
    const v1, 0x7f0b032f

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoClipLayout:Landroid/widget/LinearLayout;

    .line 468
    const v1, 0x7f0b0330

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoClipResolution:Landroid/widget/Spinner;

    .line 470
    const v1, 0x7f0b033e

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;

    .line 471
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    const v1, 0x7f0b0345

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;

    .line 473
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 474
    const v1, 0x7f0b0340

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;

    .line 475
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 476
    const v1, 0x7f0b0349

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;

    .line 477
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    const v1, 0x7f0b0341

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketLayout:Landroid/widget/LinearLayout;

    .line 479
    const v1, 0x7f0b0343

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketInterval:Landroid/widget/Spinner;

    .line 480
    const v1, 0x7f0b0342

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketRange:Landroid/widget/EditText;

    .line 481
    const v1, 0x7f0b034a

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughLayout:Landroid/widget/LinearLayout;

    .line 482
    const v1, 0x7f0b034c

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughDirec:Landroid/widget/Spinner;

    .line 485
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughDirec:Landroid/widget/Spinner;

    new-instance v2, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 502
    const v1, 0x7f0b034b

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughInterval:Landroid/widget/EditText;

    .line 504
    const v1, 0x7f0b034d

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusStart:Landroid/widget/LinearLayout;

    .line 505
    const v1, 0x7f0b034f

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusEnd:Landroid/widget/LinearLayout;

    .line 506
    const v1, 0x7f0b034e

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuStartPos:Landroid/widget/EditText;

    .line 507
    const v1, 0x7f0b0350

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuEndPos:Landroid/widget/EditText;

    .line 509
    const v1, 0x7f0b0331

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoListView:Landroid/widget/ListView;

    .line 510
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f080512

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 512
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoListView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setLvHeight(Landroid/widget/ListView;)V

    .line 514
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 518
    const v1, 0x7f0b0332

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mFlickerSpinner:Landroid/widget/Spinner;

    .line 519
    const v1, 0x7f0b0334

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeSpinner:Landroid/widget/Spinner;

    .line 521
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 523
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x7f0b0357

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureListView:Landroid/widget/ListView;

    .line 524
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 525
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureListView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setLvHeight(Landroid/widget/ListView;)V

    .line 526
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 528
    const v1, 0x7f0b0335

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mHdrSpinner:Landroid/widget/Spinner;

    .line 529
    const-string v1, "1"

    const-string v2, "mediatek.hdr.debug"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mHdrSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 534
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mHdrSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/mediatek/engineermode/cameranew/AutoCalibration$7;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$7;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 546
    const v1, 0x7f0b0353

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;

    .line 547
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mRadioListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 548
    const v1, 0x7f0b0351

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughRepeat:Landroid/widget/Spinner;

    .line 549
    const v1, 0x7f0b0346

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanSetLayout:Landroid/widget/LinearLayout;

    .line 550
    const v1, 0x7f0b0347

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanFrameInterval:Landroid/widget/EditText;

    .line 552
    const v1, 0x7f0b0333

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeLayout:Landroid/widget/LinearLayout;

    .line 553
    const v1, 0x7f0b0325

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mSensorSpinner:Landroid/widget/Spinner;

    .line 555
    const v1, 0x7f0b033c

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCommonOptionLv:Landroid/widget/ListView;

    .line 556
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 558
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCommonOptionLv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 559
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCommonOptionLv:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 560
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mHdrSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private initByCameraDeviceCapability(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->initSupportedUi(Landroid/hardware/Camera$Parameters;)V

    .line 647
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getEngFocusFullScanFrameIntervalMax()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMaxFullScanFrameInterval:I

    .line 648
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getEngFocusFullScanFrameIntervalMin()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMinFullScanFrameInterval:I

    .line 649
    return-void
.end method

.method private initSupportedUi(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const v10, 0x7f0b033f

    const v7, 0x7f0b033d

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 564
    .local v0, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "auto"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 565
    invoke-virtual {p0, v7}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 569
    :goto_0
    const-string v5, "fullscan"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 570
    const v5, 0x7f0b0344

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :goto_1
    const-string v5, "manual"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 575
    invoke-virtual {p0, v10}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 576
    const v5, 0x7f0b0348

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :goto_2
    const-string v5, "continuous-picture"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 582
    const v5, 0x7f0b0352

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :goto_3
    invoke-static {p1}, Lcom/mediatek/engineermode/cameranew/Camera;->isStrobeSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 588
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    :goto_4
    iget-boolean v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z

    if-nez v5, :cond_8

    .line 594
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v4, "sensorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAvailCameraNumber:I

    if-ge v1, v5, :cond_7

    .line 596
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 597
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 598
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_5

    invoke-static {v8, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->isRawSensor(ILandroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 600
    const v5, 0x7f08053e

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 567
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v4    # "sensorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0, v7}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_1
    const v5, 0x7f0b0344

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 578
    :cond_2
    invoke-virtual {p0, v10}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 579
    const v5, 0x7f0b0348

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 584
    :cond_3
    const v5, 0x7f0b0352

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 590
    :cond_4
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 601
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v4    # "sensorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v9, :cond_6

    invoke-static {v9, p1}, Lcom/mediatek/engineermode/cameranew/Camera;->isRawSensor(ILandroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 603
    const v5, 0x7f08053f

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 605
    :cond_6
    const-string v5, "EM/AutoCalibration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add raw sensor; Invalid facing info from CameraInfo.facing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 608
    .end local v2    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 609
    const-string v5, "no available raw sensor"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 610
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->finish()V

    .line 642
    .end local v1    # "i":I
    .end local v4    # "sensorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_7
    return-void

    .line 613
    .restart local v1    # "i":I
    .restart local v4    # "sensorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 615
    .local v3, "sensorAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 616
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mSensorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 617
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mSensorSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;

    invoke-direct {v6, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$8;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_7
.end method

.method private putInPreference(II)V
    .locals 7
    .param p1, "keyId"    # I
    .param p2, "value"    # I

    .prologue
    .line 879
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "key":Ljava/lang/String;
    const-string v4, "EM/AutoCalibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putInPreference key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :try_start_0
    const-string v4, "camera_inter_settings"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 884
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 885
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v2

    .line 888
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "EM/AutoCalibration"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putStrInPreference(ILjava/lang/String;)V
    .locals 7
    .param p1, "keyId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "key":Ljava/lang/String;
    const-string v4, "EM/AutoCalibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putInPreference key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :try_start_0
    const-string v4, "camera_inter_settings"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 898
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 899
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 900
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v2

    .line 902
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string v4, "EM/AutoCalibration"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putValuesToPreference()Z
    .locals 15

    .prologue
    const v5, 0x7f0804fb

    const/16 v4, 0x1ff

    const/4 v14, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 755
    const-string v0, "camera_inter_settings"

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 756
    .local v11, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 757
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const v0, 0x7f0804f8

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 758
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    if-nez v0, :cond_0

    .line 759
    const v0, 0x7f0804f9

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 760
    const v0, 0x7f0804fa

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureNum:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 770
    :goto_0
    const v0, 0x7f0804fe

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mFlickerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 771
    const v0, 0x7f0804ff

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 776
    const v0, 0x7f080502

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 777
    const v0, 0x7f080504

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketInterval:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 780
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketRange:Landroid/widget/EditText;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getIntegerFromEdit(Landroid/widget/EditText;IZIZ)I

    move-result v13

    .line 781
    .local v13, "value":I
    if-ne v13, v14, :cond_2

    .line 782
    const v0, 0x7f08051b

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 816
    :goto_1
    return v2

    .line 763
    .end local v13    # "value":I
    :cond_0
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    if-ne v0, v3, :cond_1

    .line 764
    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameCaptureNum:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 767
    :cond_1
    const v0, 0x7f0804fc

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoClipResolution:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 785
    .restart local v13    # "value":I
    :cond_2
    const v0, 0x7f080503

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 786
    const v0, 0x7f080505

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughDirec:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 787
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughDirec:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 788
    const v0, 0x7f080507

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuStartPos:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 790
    const v0, 0x7f080508

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuEndPos:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughInterval:Landroid/widget/EditText;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getIntegerFromEdit(Landroid/widget/EditText;IZIZ)I

    move-result v13

    .line 794
    if-ne v13, v14, :cond_4

    .line 795
    const v0, 0x7f08051c

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 798
    :cond_4
    const v0, 0x7f080506

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 800
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanFrameInterval:Landroid/widget/EditText;

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMinFullScanFrameInterval:I

    iget v8, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMaxFullScanFrameInterval:I

    move-object v4, p0

    move v7, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getIntegerFromEdit(Landroid/widget/EditText;IZIZ)I

    move-result v13

    .line 801
    if-ne v13, v14, :cond_5

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame inverval range is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMinFullScanFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMaxFullScanFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 807
    :cond_5
    const v0, 0x7f080534

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 808
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughRepeat:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 809
    .local v12, "strRepeat":Ljava/lang/String;
    const v0, 0x7f080535

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 810
    const v0, 0x7f08053b

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->collectCustomParams()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 811
    const v0, 0x7f080540

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 812
    const v0, 0x7f080542

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getShutterDelayFromUi()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 813
    const v0, 0x7f080544

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getShadingTableFromUi()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 814
    const v0, 0x7f080546

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getOutputSdblkFromUi()I

    move-result v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 815
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v3

    .line 816
    goto/16 :goto_1
.end method

.method private setAfLayout([I[Landroid/widget/RadioButton;)V
    .locals 7
    .param p1, "visis"    # [I
    .param p2, "buttons"    # [Landroid/widget/RadioButton;

    .prologue
    const/4 v6, 0x0

    .line 387
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketLayout:Landroid/widget/LinearLayout;

    aget v5, p1, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    move-object v0, p2

    .local v0, "arr$":[Landroid/widget/RadioButton;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 390
    .local v3, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method

.method private setAfModeAccessble(Z)V
    .locals 7
    .param p1, "access"    # Z

    .prologue
    .line 426
    const/4 v5, 0x4

    new-array v1, v5, [Landroid/widget/RadioButton;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;

    aput-object v6, v1, v5

    .line 427
    .local v1, "buttons":[Landroid/widget/RadioButton;
    move-object v0, v1

    .local v0, "arr$":[Landroid/widget/RadioButton;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 428
    .local v4, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v4, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v4    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method

.method private setCaptureLayout([I[Landroid/widget/RadioButton;)V
    .locals 7
    .param p1, "visis"    # [I
    .param p2, "buttons"    # [Landroid/widget/RadioButton;

    .prologue
    const/4 v6, 0x0

    .line 378
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureLayout:Landroid/widget/LinearLayout;

    aget v5, p1, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoClipLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    move-object v0, p2

    .local v0, "arr$":[Landroid/widget/RadioButton;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 382
    .local v3, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method

.method private setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 5
    .param p1, "allRadios"    # [Landroid/widget/RadioButton;
    .param p2, "checkedRadio"    # Landroid/widget/RadioButton;

    .prologue
    .line 416
    move-object v0, p1

    .local v0, "arr$":[Landroid/widget/RadioButton;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 417
    .local v3, "radio":Landroid/widget/RadioButton;
    if-ne v3, p2, :cond_0

    .line 418
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 416
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 423
    .end local v3    # "radio":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method

.method private setLvHeight(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 907
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 908
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 909
    const-string v5, "EM/AutoCalibration"

    const-string v6, "no data in ListView"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_0
    return-void

    .line 912
    :cond_0
    const/4 v4, 0x0

    .line 913
    .local v4, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 914
    const/4 v5, 0x0

    invoke-interface {v0, v1, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 915
    .local v2, "itemView":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 916
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 918
    .end local v2    # "itemView":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 919
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 920
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setStatusTodefault()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 670
    const-string v5, "EM/AutoCalibration"

    const-string v6, "setStatusTodefault()"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iput v7, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    .line 672
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 673
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v8, v5, v7

    .line 674
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v7, v5, v8

    .line 675
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    const/4 v6, 0x2

    aput-boolean v8, v5, v6

    .line 676
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 677
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v7, v5, v2

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :cond_0
    iput v7, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    .line 680
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 681
    iput-boolean v8, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z

    .line 682
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketRange:Landroid/widget/EditText;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughInterval:Landroid/widget/EditText;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const-string v5, "camera_inter_settings"

    invoke-virtual {p0, v5, v7}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 685
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 686
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const v5, 0x7f0804f8

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 687
    const v5, 0x7f0804f9

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 688
    const v5, 0x7f0804fa

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 689
    const v5, 0x7f0804fb

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 690
    const v5, 0x7f0804fe

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 691
    const v5, 0x7f0804ff

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 692
    const v5, 0x7f080500

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 693
    const v5, 0x7f080501

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 694
    const v5, 0x7f0804fd

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getArrayValue([Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 695
    const v5, 0x7f080502

    invoke-virtual {p0, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 697
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuStartPos:Landroid/widget/EditText;

    const v6, 0x7f080507

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocsuEndPos:Landroid/widget/EditText;

    const v6, 0x7f080508

    invoke-virtual {p0, v6}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3ff

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusStart:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mThroughFocusEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v4, "throughRepeatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_1

    .line 706
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 708
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 710
    .local v0, "afThroughRepeatAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 711
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughRepeat:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 713
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanFrameInterval:Landroid/widget/EditText;

    iget v6, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMinFullScanFrameInterval:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 717
    iget-object v5, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureType:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 718
    return-void
.end method

.method private setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    .locals 11
    .param p1, "allLayouts"    # [Landroid/view/View;
    .param p2, "visibleLayouts"    # [Landroid/view/View;

    .prologue
    const/16 v10, 0x8

    .line 395
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/view/View;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v7, v0, v3

    .line 396
    .local v7, "view":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 397
    const/4 v4, 0x0

    .line 398
    .local v4, "inVisible":Z
    move-object v1, p2

    .local v1, "arr$":[Landroid/view/View;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v8, v1, v2

    .line 399
    .local v8, "visiLayout":Landroid/view/View;
    if-ne v8, v7, :cond_1

    .line 400
    const/4 v4, 0x1

    .line 404
    .end local v8    # "visiLayout":Landroid/view/View;
    :cond_0
    if-eqz v4, :cond_2

    .line 405
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .end local v1    # "arr$":[Landroid/view/View;
    .end local v2    # "i$":I
    .end local v4    # "inVisible":Z
    .end local v6    # "len$":I
    :goto_2
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 398
    .end local v3    # "i$":I
    .restart local v1    # "arr$":[Landroid/view/View;
    .restart local v2    # "i$":I
    .restart local v4    # "inVisible":Z
    .restart local v6    # "len$":I
    .restart local v8    # "visiLayout":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    .end local v8    # "visiLayout":Landroid/view/View;
    :cond_2
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 410
    .end local v1    # "arr$":[Landroid/view/View;
    .end local v2    # "i$":I
    .end local v4    # "inVisible":Z
    .end local v6    # "len$":I
    .restart local v3    # "i$":I
    :cond_3
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 413
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private statusChangesByAf(Z)V
    .locals 6
    .param p1, "afStatus"    # Z

    .prologue
    const v5, 0x7f0804fd

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 855
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 856
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mStrobeModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 857
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 858
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 859
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureNum:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 860
    iget v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 863
    :cond_0
    if-eqz p1, :cond_2

    .line 864
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v3, v1, v2

    .line 865
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v2, v1, v3

    .line 866
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v3, v1, v4

    .line 867
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    aput-boolean v2, v1, v0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getArrayValue([Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putStrInPreference(ILjava/lang/String;)V

    .line 876
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 872
    :cond_2
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfSpecialIso:I

    .line 873
    const-string v1, "0"

    iput-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoValueStr:Ljava/lang/String;

    .line 874
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoValueStr:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putStrInPreference(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const-string v0, "EM/AutoCalibration"

    const-string v1, "onCreate."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z

    .line 245
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setContentView(I)V

    .line 246
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAvailCameraNumber:I

    .line 247
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAvailCameraNumber:I

    if-gtz v0, :cond_0

    .line 248
    const-string v0, "No available Camera"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->finish()V

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->inintComponents()V

    .line 253
    iput v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I

    .line 254
    iget v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCameraId:I

    new-instance v1, Lcom/mediatek/engineermode/cameranew/AutoCalibration$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$2;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->safeUseCameraDevice(ILcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;)I

    .line 260
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setStatusTodefault()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsInitialized:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 298
    const-string v2, "EM/AutoCalibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AF mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 301
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x5

    if-ne v2, p1, :cond_0

    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0804f6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 304
    iget v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I

    if-nez v2, :cond_2

    .line 305
    const v2, 0x7f060055

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z

    new-instance v4, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    :cond_0
    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 374
    :cond_1
    return-object v1

    .line 344
    :cond_2
    const v2, 0x7f060056

    iget v3, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfSpecialIso:I

    new-instance v4, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;

    invoke-direct {v4, p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;-><init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "EM/AutoCalibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mIsoListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 268
    if-nez p3, :cond_0

    .line 269
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->showDialog(I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    const v3, 0x7f0b033c

    if-ne v2, v3, :cond_2

    .line 272
    if-nez p3, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putValuesToPreference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "EM/AutoCalibration"

    const-string v3, "Start EV Calibration"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, "previewIntent":Landroid/content/Intent;
    const v2, 0x7f080548

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    .end local v1    # "previewIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    const v3, 0x7f0b0357

    if-ne v2, v3, :cond_3

    .line 282
    if-nez p3, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->putValuesToPreference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, "captureIntent":Landroid/content/Intent;
    const-class v2, Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->startActivity(Landroid/content/Intent;)V

    .line 289
    const-string v2, "EM/AutoCalibration"

    const-string v3, "Start captureIntent!"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0    # "captureIntent":Landroid/content/Intent;
    :cond_3
    const-string v2, "EM/AutoCalibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN Parent ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method safeUseCameraDevice(ILcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "user"    # Lcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;

    .prologue
    const/4 v2, 0x0

    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, "cameraDevice":Landroid/hardware/Camera;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 664
    invoke-interface {p2, v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration$CameraSafeUser;->useCamera(Landroid/hardware/Camera;)V

    .line 665
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 666
    :goto_0
    return v2

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EM/AutoCalibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open Camera fail; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v3, "fail to open camera"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 662
    const/4 v2, -0x1

    goto :goto_0
.end method
