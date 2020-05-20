.class public Lcom/mediatek/engineermode/lte/CommandToolService;
.super Landroid/app/Service;
.source "CommandToolService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;,
        Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;
    }
.end annotation


# static fields
.field private static final MSG_AT_COMMAND:I = 0x2

.field private static final MSG_SEND_NEXT_COMMAND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EM/CommandToolService"


# instance fields
.field private final mAtCmdHander:Landroid/os/Handler;

.field private final mBinder:Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;

.field private mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHander:Landroid/os/Handler;

.field private mInterval:I

.field private mOnUpdateResultListener:Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;

.field private mOutput:Ljava/lang/String;

.field private mSending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mCommands:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mInterval:I

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOutput:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    .line 36
    new-instance v0, Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;-><init>(Lcom/mediatek/engineermode/lte/CommandToolService;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mBinder:Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;

    .line 76
    new-instance v0, Lcom/mediatek/engineermode/lte/CommandToolService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/CommandToolService$1;-><init>(Lcom/mediatek/engineermode/lte/CommandToolService;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mHander:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/mediatek/engineermode/lte/CommandToolService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/CommandToolService$2;-><init>(Lcom/mediatek/engineermode/lte/CommandToolService;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mAtCmdHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/lte/CommandToolService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/lte/CommandToolService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/lte/CommandToolService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/lte/CommandToolService;->sendAtCommand(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/lte/CommandToolService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;

    .prologue
    .line 25
    iget v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mInterval:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/lte/CommandToolService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/lte/CommandToolService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandToolService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/lte/CommandToolService;->updateResult(Ljava/lang/String;)V

    return-void
.end method

.method private sendAtCommand(Ljava/lang/String;I)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "message"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    const-string v2, "EM/CommandToolService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAtCommand() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/lte/CommandToolService;->updateResult(Ljava/lang/String;)V

    .line 100
    new-array v0, v7, [Ljava/lang/String;

    .line 101
    .local v0, "cmd":[Ljava/lang/String;
    aput-object p1, v0, v5

    .line 102
    const-string v2, ""

    aput-object v2, v0, v6

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 107
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 108
    .local v1, "mGeminiPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mAtCmdHander:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 114
    return-void
.end method

.method private updateResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOutput:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOnUpdateResultListener:Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOnUpdateResultListener:Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;

    invoke-interface {v0}, Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;->onUpdateResult()V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOutput:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mBinder:Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 55
    const-string v0, "EM/CommandToolService"

    const-string v1, "Enter onStartCommand"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public setOnUpdateResultListener(Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOnUpdateResultListener:Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;

    .line 162
    return-void
.end method

.method public startTest(Ljava/util/List;I)V
    .locals 3
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 60
    const-string v0, "EM/CommandToolService"

    const-string v1, "startTest"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mCommands:Ljava/util/List;

    .line 62
    iput p2, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mInterval:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mOutput:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method

.method public stopTest()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "EM/CommandToolService"

    const-string v1, "stopTest"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/lte/CommandToolService;->mSending:Z

    .line 72
    const-string v0, "Stopped\n"

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->updateResult(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
