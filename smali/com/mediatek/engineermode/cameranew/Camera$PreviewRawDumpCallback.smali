.class final Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewRawDumpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewRawDumpCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/cameranew/Camera;
    .param p2, "x1"    # Lcom/mediatek/engineermode/cameranew/Camera$1;

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public onNotify(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x0

    .line 799
    const-string v0, "test/camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRawDumpFlag(Z)V

    .line 801
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 802
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->capture()V

    .line 803
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v0, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    .line 804
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 805
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$PreviewRawDumpCallback;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 806
    return-void
.end method
