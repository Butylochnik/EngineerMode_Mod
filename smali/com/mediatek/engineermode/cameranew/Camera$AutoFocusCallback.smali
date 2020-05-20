.class final Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/cameranew/Camera;
    .param p2, "x1"    # Lcom/mediatek/engineermode/cameranew/Camera$1;

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x1

    .line 781
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5300(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5202(Lcom/mediatek/engineermode/cameranew/Camera;J)J

    .line 786
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5200(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", camera State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1200(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->doSnap()V

    .line 792
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$AutoFocusCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->onAutoFocus(Z)V

    .line 793
    invoke-static {v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5402(Z)Z

    goto :goto_0
.end method
