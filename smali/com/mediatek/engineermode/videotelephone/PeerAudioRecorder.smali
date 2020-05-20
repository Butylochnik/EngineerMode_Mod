.class public Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;
.super Landroid/app/Activity;
.source "PeerAudioRecorder.java"


# instance fields
.field private mAudioSuptFormat:Landroid/widget/Spinner;

.field mFormat:Ljava/lang/String;

.field private mPeerAudioRecorServ:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mPeerAudioRecorServ:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private initStatus()V
    .locals 6

    .prologue
    .line 116
    :try_start_0
    const-string v3, "engineermode_vt_preferences"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 119
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mPeerAudioRecorServ:Landroid/widget/CheckBox;

    const-string v4, "peer_audio_recoder_service"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    const-string v3, "peer_audio_recoder_format"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "format":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mAudioSuptFormat:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "EM/VideoTelephony"

    const-string v4, "init status failed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f03007a

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->setContentView(I)V

    .line 65
    const v2, 0x7f0b0425

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, "confirmButton":Landroid/widget/Button;
    new-instance v2, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$1;-><init>(Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080344

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080346

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080347

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080348

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 92
    const v2, 0x7f0b0424

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mAudioSuptFormat:Landroid/widget/Spinner;

    .line 94
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mAudioSuptFormat:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mAudioSuptFormat:Landroid/widget/Spinner;

    new-instance v3, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder$2;-><init>(Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 108
    const v2, 0x7f0b0423

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->mPeerAudioRecorServ:Landroid/widget/CheckBox;

    .line 110
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;->initStatus()V

    .line 112
    return-void
.end method
