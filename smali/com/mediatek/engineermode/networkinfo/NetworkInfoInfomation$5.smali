.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$5;
.super Landroid/os/Handler;
.source "NetworkInfoInfomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$5;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$5;->this$0:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;

    invoke-static {v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->access$700(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    .line 326
    :cond_0
    return-void
.end method
