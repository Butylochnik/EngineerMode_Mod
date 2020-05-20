.class Lcom/mediatek/engineermode/wfdsettings/WfdLatency$2;
.super Landroid/os/Handler;
.source "WfdLatency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdLatency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 219
    return-void
.end method
