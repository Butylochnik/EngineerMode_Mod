.class Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$1;
.super Ljava/util/TimerTask;
.source "LteNetworkInfoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$1;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$1;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$000(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method
