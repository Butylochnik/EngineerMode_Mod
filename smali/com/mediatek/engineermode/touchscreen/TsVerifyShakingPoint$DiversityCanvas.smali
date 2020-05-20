.class Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;
.super Landroid/view/SurfaceView;
.source "TsVerifyShakingPoint.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiversityCanvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;
    }
.end annotation


# instance fields
.field mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;

.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    .line 153
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 155
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 156
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 160
    const-string v0, "EM/TouchScreen/TsVerifyShakingPoint"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$002(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;Z)Z

    .line 165
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;-><init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;Landroid/view/SurfaceHolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;

    .line 166
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->mThread:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas$DiversityThread;->start()V

    .line 167
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;->this$0:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->access$002(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;Z)Z

    .line 171
    return-void
.end method
