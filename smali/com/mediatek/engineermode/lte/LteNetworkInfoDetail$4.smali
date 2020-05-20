.class Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$4;
.super Landroid/os/Handler;
.source "LteNetworkInfoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
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
    .line 296
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$4;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$4;->this$0:Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-static {v0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->access$800(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    .line 301
    :cond_0
    return-void
.end method
