.class public Lcom/mediatek/engineermode/lte/LteConfiguration;
.super Landroid/app/Activity;
.source "LteConfiguration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final MSG_GET_PARAMETER:I = 0x1

.field private static final MSG_GET_SEARCH_TIMER:I = 0x2

.field private static final MSG_SET_COMMAND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LteConfiguration"


# instance fields
.field private final mAtCmdHander:Landroid/os/Handler;

.field private mCheckBoxPsdm:Landroid/widget/CheckBox;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSearchTimerEditors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mSlot:I

.field private mSpinnerRelation:Landroid/widget/Spinner;

.field private mSpinnerRsrp:Landroid/widget/Spinner;

.field private mSpinnerRsrq:Landroid/widget/Spinner;

.field private mThresholdEditors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMax:[I

.field private mTimerEditors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    .line 95
    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSlot:I

    .line 200
    new-instance v0, Lcom/mediatek/engineermode/lte/LteConfiguration$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/LteConfiguration$1;-><init>(Lcom/mediatek/engineermode/lte/LteConfiguration;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mAtCmdHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/lte/LteConfiguration;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteConfiguration;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/lte/LteConfiguration;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/lte/LteConfiguration;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteConfiguration;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->parseParameters([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/lte/LteConfiguration;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteConfiguration;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->parseSearchTimer([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSearchTimer(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "editors":Ljava/util/List;, "Ljava/util/List<Landroid/widget/EditText;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 354
    .local v0, "edit":Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 359
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 360
    const/4 v2, 0x0

    .line 362
    .end local v0    # "edit":Landroid/widget/EditText;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 357
    .restart local v0    # "edit":Landroid/widget/EditText;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private checkThreshold()Z
    .locals 3

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "value":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdMax:[I

    aget v2, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v2, :cond_0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "value":I
    :catch_0
    move-exception v2

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 332
    const/4 v2, 0x0

    .line 334
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkTimer(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "editors":Ljava/util/List;, "Ljava/util/List<Landroid/widget/EditText;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 340
    .local v0, "edit":Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 345
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 346
    const/4 v2, 0x0

    .line 348
    .end local v0    # "edit":Landroid/widget/EditText;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 343
    .restart local v0    # "edit":Landroid/widget/EditText;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initComponents()V
    .locals 7

    .prologue
    const v6, 0x1090009

    const v5, 0x1090008

    const/4 v4, 0x0

    .line 254
    const v3, 0x7f0b02d8

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrp:Landroid/widget/Spinner;

    .line 255
    const v3, 0x7f0b02d9

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrq:Landroid/widget/Spinner;

    .line 256
    const v3, 0x7f0b02da

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRelation:Landroid/widget/Spinner;

    .line 258
    const v3, 0x7f060082

    invoke-static {p0, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 260
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 261
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrp:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrq:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 264
    const v3, 0x7f060083

    invoke-static {p0, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 266
    .local v1, "adapter2":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 267
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRelation:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 269
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrp:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 270
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrq:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 271
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRelation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 273
    const v3, 0x7f0b02d6

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mCheckBoxPsdm:Landroid/widget/CheckBox;

    .line 274
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mCheckBoxPsdm:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 276
    const v3, 0x7f0b02d3

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 277
    .local v2, "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v3, 0x7f0b02d5

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 279
    .restart local v2    # "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v3, 0x7f0b02d7

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 281
    .restart local v2    # "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v3, 0x7f0b02db

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 283
    .restart local v2    # "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v3, 0x7f0b02de

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 285
    .restart local v2    # "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v3, 0x7f0b02df

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "button":Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 287
    .restart local v2    # "button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v3, 0x7f0b02d2

    const v4, 0x7f060084

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/lte/LteConfiguration;->initEditorTable(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    .line 290
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdMax:[I

    .line 291
    const v3, 0x7f0b02d4

    const v4, 0x7f060086

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/lte/LteConfiguration;->initEditorTable(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mTimerEditors:Ljava/util/List;

    .line 292
    const v3, 0x7f0b02dc

    const v4, 0x7f060087

    invoke-direct {p0, v3, v4}, Lcom/mediatek/engineermode/lte/LteConfiguration;->initEditorTable(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    .line 293
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    const v4, 0x7f0b02dd

    const v5, 0x7f060088

    invoke-direct {p0, v4, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->initEditorTable(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    return-void
.end method

.method private initEditorTable(II)Ljava/util/List;
    .locals 12
    .param p1, "layoutResId"    # I
    .param p2, "arrayResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x2

    .line 297
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    .line 298
    .local v7, "root":Landroid/widget/TableLayout;
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteConfiguration;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "labels":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    array-length v10, v4

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/widget/EditText;>;"
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v11, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 302
    .local v6, "para":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v4

    if-ge v1, v10, :cond_0

    .line 303
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "editor":Landroid/widget/EditText;
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 305
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "editor":Landroid/widget/EditText;
    :cond_0
    array-length v9, v4

    .line 309
    .local v9, "rows":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_2

    .line 310
    new-instance v8, Landroid/widget/TableRow;

    invoke-direct {v8, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 311
    .local v8, "row":Landroid/widget/TableRow;
    move v2, v1

    .local v2, "j":I
    :goto_2
    array-length v10, v4

    if-ge v2, v10, :cond_1

    .line 312
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 313
    .local v3, "label":Landroid/widget/TextView;
    aget-object v10, v4, v2

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v8, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 315
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 311
    add-int/2addr v2, v9

    goto :goto_2

    .line 317
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v7, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    .end local v2    # "j":I
    .end local v8    # "row":Landroid/widget/TableRow;
    :cond_2
    return-object v5
.end method

.method private parseParameters([Ljava/lang/String;)Z
    .locals 17
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 370
    const-string v11, "+EMPC:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    .line 371
    .local v5, "len":I
    if-eqz p1, :cond_0

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v5, :cond_1

    .line 372
    :cond_0
    const-string v11, "LteConfiguration"

    const-string v12, "Got invalid threshold values"

    invoke-static {v11, v12}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v11, 0x0

    .line 408
    :goto_0
    return v11

    .line 376
    :cond_1
    const/4 v11, 0x0

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "str":Ljava/lang/String;
    const-string v11, "LteConfiguration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got threshold values: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "rawValues":[Ljava/lang/String;
    array-length v11, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mTimerEditors:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x4

    if-ge v11, v12, :cond_2

    .line 380
    const/4 v11, 0x0

    goto :goto_0

    .line 383
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    array-length v11, v6

    if-ge v3, v11, :cond_4

    .line 386
    aget-object v11, v6, v3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 387
    .local v8, "value":J
    const/4 v11, 0x3

    if-ge v3, v11, :cond_3

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-eqz v11, :cond_3

    const-wide/16 v11, 0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_3

    .line 388
    const/4 v11, 0x0

    goto :goto_0

    .line 390
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 392
    .end local v8    # "value":J
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_0

    .line 396
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrp:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v11, v13, v15

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrq:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v11, v13, v15

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRelation:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v11, v13, v15

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 400
    .local v2, "edit":Landroid/widget/EditText;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 396
    .end local v2    # "edit":Landroid/widget/EditText;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 397
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 398
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 402
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mTimerEditors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 403
    .restart local v2    # "edit":Landroid/widget/EditText;
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 405
    .end local v2    # "edit":Landroid/widget/EditText;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mCheckBoxPsdm:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mCheckBoxPsdm:Landroid/widget/CheckBox;

    const-wide/16 v13, 0x1

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_a

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mCheckBoxPsdm:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 408
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 406
    :cond_a
    const/4 v11, 0x0

    goto :goto_7
.end method

.method private parseSearchTimer([Ljava/lang/String;)Z
    .locals 8
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 414
    const-string v5, "+ERSCFG:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 415
    .local v1, "len":I
    if-eqz p1, :cond_0

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v1, :cond_2

    .line 416
    :cond_0
    const-string v5, "LteConfiguration"

    const-string v6, "Got invalid timer values"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_1
    :goto_0
    return v4

    .line 420
    :cond_2
    aget-object v5, p1, v4

    aget-object v6, p1, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "rawValue":Ljava/lang/String;
    const-string v5, "LteConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got timer values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "values":[Ljava/lang/String;
    array-length v5, v3

    iget-object v6, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private sendATCommand(Ljava/lang/String;I)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "message"    # I

    .prologue
    .line 434
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    return-void
.end method

.method private sendATCommand(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "message"    # I

    .prologue
    .line 438
    const-string v1, "LteConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendATCommand() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 440
    .local v0, "cmd":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 441
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 443
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mAtCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSlot:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 447
    invoke-virtual {p0, p3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->removeDialog(I)V

    .line 448
    invoke-virtual {p0, p3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->showDialog(I)V

    .line 449
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 463
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    .line 464
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 465
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 455
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    .line 456
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b02d6

    if-ne v1, v2, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+EMPC=3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "cmd":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    .line 174
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    return-void

    .line 171
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteConfiguration;->checkThreshold()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const-string v0, "AT+EMPC=1"

    .line 120
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mThresholdEditors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 121
    .local v1, "editor":Landroid/widget/EditText;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    .end local v1    # "editor":Landroid/widget/EditText;
    :cond_0
    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    goto :goto_0

    .line 125
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const v3, 0x7f0806f8

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->showToast(I)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mTimerEditors:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->checkTimer(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    const-string v0, "AT+EMPC=2"

    .line 131
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mTimerEditors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 132
    .restart local v1    # "editor":Landroid/widget/EditText;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 134
    .end local v1    # "editor":Landroid/widget/EditText;
    :cond_2
    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 136
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const v3, 0x7f0806f9

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->showToast(I)V

    goto/16 :goto_0

    .line 140
    :pswitch_3
    const-string v3, "AT+EBGS"

    invoke-direct {p0, v3, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+EMPC=0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrp:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRsrq:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSpinnerRelation:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 149
    :pswitch_5
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->checkSearchTimer(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    const-string v0, "AT+ERSCFG="

    .line 151
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mSearchTimerEditors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 152
    .restart local v1    # "editor":Landroid/widget/EditText;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 154
    .end local v1    # "editor":Landroid/widget/EditText;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const v3, 0x7f0806fa

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/lte/LteConfiguration;->showToast(I)V

    goto/16 :goto_0

    .line 161
    :pswitch_6
    const-string v3, "AT+ERSCFG?"

    const-string v4, "+ERSCFG"

    const/4 v5, 0x2

    invoke-direct {p0, v3, v4, v5}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f0b02d3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/lte/LteConfiguration;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteConfiguration;->initComponents()V

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 110
    const-string v0, "AT+EMPC?"

    const-string v1, "+EMPC:"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/lte/LteConfiguration;->sendATCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const v1, 0x7f0806f7

    const/4 v2, 0x0

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    .line 181
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0806f6

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 190
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/lte/LteConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteConfiguration;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
