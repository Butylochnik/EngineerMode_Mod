.class Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;
.super Landroid/database/ContentObserver;
.source "WfdLatency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdLatency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    .line 256
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 261
    const-string v0, "EM/WFD_LATENCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdLatency;

    invoke-static {v0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->access$300(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V

    .line 265
    return-void
.end method
