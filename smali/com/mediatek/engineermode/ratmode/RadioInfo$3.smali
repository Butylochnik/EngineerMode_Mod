.class Lcom/mediatek/engineermode/ratmode/RadioInfo$3;
.super Landroid/content/BroadcastReceiver;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/ratmode/RadioInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 359
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "onReceive, receive event"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const-string v2, "ef_rat_status"

    const/16 v3, 0x200

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$602(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I

    .line 363
    const-string v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 364
    .local v0, "sim":I
    if-ne v4, v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->updateUi()V

    .line 366
    const-string v1, "EM/RATMode_RadioInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusEfRat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$3;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$600(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v1, "EM/RATMode_RadioInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id not equal, simId: -1 receive sim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
