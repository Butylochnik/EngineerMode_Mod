.class Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;->this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;->this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;->this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->access$000(Lcom/mediatek/engineermode/cameranew/CameraHolder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;->this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->access$100(Lcom/mediatek/engineermode/cameranew/CameraHolder;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/CameraHolder$MyHandler;->this$0:Lcom/mediatek/engineermode/cameranew/CameraHolder;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/CameraHolder;->access$200(Lcom/mediatek/engineermode/cameranew/CameraHolder;)V

    .line 91
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
