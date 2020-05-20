.class Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    .line 1009
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1010
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1017
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/mediatek/engineermode/cameranew/Util;->roundOrientation(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 1023
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$5900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 1024
    .local v0, "orientationCompensation":I
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 1026
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MyOrientationEventListener;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$6100(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    goto :goto_0
.end method
