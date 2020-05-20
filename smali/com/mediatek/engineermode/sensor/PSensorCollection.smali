.class public Lcom/mediatek/engineermode/sensor/PSensorCollection;
.super Landroid/app/Activity;
.source "PSensorCollection.java"


# static fields
.field private static final COUNT:I = 0x16

.field public static final TAG:Ljava/lang/String; = "PSensorCollectionLog"

.field private static final data:[F


# instance fields
.field private dis:[I

.field private mClearButton:Landroid/widget/Button;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentIndex:I

.field private mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

.field private mDataText:[Landroid/widget/TextView;

.field private mGetButton:Landroid/widget/Button;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mText:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x16

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->data:[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40a00000    # 5.0f
        0x40b00000    # 5.5f
        0x40c00000    # 6.0f
        0x40d00000    # 6.5f
        0x40e00000    # 7.0f
        0x40f00000    # 7.5f
        0x41000000    # 8.0f
        0x41080000    # 8.5f
        0x41100000    # 9.0f
        0x41180000    # 9.5f
        0x41200000    # 10.0f
        0x41280000    # 10.5f
        0x41300000    # 11.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    .line 63
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    .line 64
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    .line 65
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    .line 68
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 71
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iput-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    .line 73
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCollection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection$1;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 117
    new-instance v0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;-><init>(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/sensor/PSensorCollection;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/sensor/PSensorCollection;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->clearData()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sensor/PSensorCollection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/sensor/PSensorCollection;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/sensor/PSensorCollection;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/sensor/PSensorCollection;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->getData()V

    return-void
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "PSensorCollectionLog"

    const-string v1, "Clear psensor data: "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget-object v0, v0, v1

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 144
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->postInvalidate()V

    goto :goto_0
.end method

.method private getData()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    .line 149
    const-string v0, "PSensorCollectionLog"

    const-string v1, "Get psensor data: "

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    if-ne v0, v4, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    invoke-static {}, Lcom/mediatek/engineermode/sensor/EmSensor;->getPsensorData()I

    move-result v2

    aput v2, v0, v1

    .line 156
    const-string v0, "PSensorCollectionLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    iget v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I

    if-ne v0, v4, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->dis:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x16

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v3, 0x7f030090

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->setContentView(I)V

    .line 89
    const v3, 0x7f0b04ca

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    .line 90
    const v3, 0x7f0b04c8

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    .line 91
    const v3, 0x7f0b04c9

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    .line 92
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 98
    .local v2, "tx_id":[I
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    .line 102
    .local v0, "data_tx_id":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 103
    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 104
    iget-object v4, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 108
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mediatek/engineermode/sensor/PSensorCollection;->data:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_2

    .line 112
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mDataText:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const-string v4, "    "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurveView:Lcom/mediatek/engineermode/sensor/CollectionCurveView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/sensor/CollectionCurveView;->setDistance([I)V

    .line 115
    iget-object v3, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    return-void

    .line 95
    :array_0
    .array-data 4
        0x7f0b049c
        0x7f0b049d
        0x7f0b049e
        0x7f0b049f
        0x7f0b04a0
        0x7f0b04a1
        0x7f0b04a2
        0x7f0b04a3
        0x7f0b04a4
        0x7f0b04a5
        0x7f0b04a6
        0x7f0b04b2
        0x7f0b04b3
        0x7f0b04b4
        0x7f0b04b5
        0x7f0b04b6
        0x7f0b04b7
        0x7f0b04b8
        0x7f0b04b9
        0x7f0b04ba
        0x7f0b04bb
        0x7f0b04bc
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x7f0b04a7
        0x7f0b04a8
        0x7f0b04a9
        0x7f0b04aa
        0x7f0b04ab
        0x7f0b04ac
        0x7f0b04ad
        0x7f0b04ae
        0x7f0b04af
        0x7f0b04b0
        0x7f0b04b1
        0x7f0b04bd
        0x7f0b04be
        0x7f0b04bf
        0x7f0b04c0
        0x7f0b04c1
        0x7f0b04c2
        0x7f0b04c3
        0x7f0b04c4
        0x7f0b04c5
        0x7f0b04c6
        0x7f0b04c7
    .end array-data
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 178
    return-void
.end method
