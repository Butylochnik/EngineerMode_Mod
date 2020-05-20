.class Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/cameranew/Camera;
    .param p2, "x1"    # Lcom/mediatek/engineermode/cameranew/Camera$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;-><init>(Lcom/mediatek/engineermode/cameranew/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const-wide/16 v8, 0x64

    const/16 v7, 0x66

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 509
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 298
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 301
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$500(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 304
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$600(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 305
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$700(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 307
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$800(Lcom/mediatek/engineermode/cameranew/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 312
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$900(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 315
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1200(Lcom/mediatek/engineermode/cameranew/Camera;I)V

    .line 318
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$900(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 319
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/cameranew/FocusManager;->capture()V

    .line 320
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    .line 321
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto :goto_0

    .line 326
    :sswitch_6
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1502(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 328
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1602(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 331
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 332
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2000(Lcom/mediatek/engineermode/cameranew/Camera;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2100(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2102(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 334
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mFocusManager:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-virtual {v1, v5}, Lcom/mediatek/engineermode/cameranew/FocusManager;->setAeAwbLock(Z)V

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1300(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 337
    const-string v1, "test/camera"

    const-string v2, "Enabled mCaptureBtn"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :sswitch_7
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1400(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    const-string v1, "test/camera"

    const-string v2, "Disabled mCaptureBtn"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2200(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto/16 :goto_0

    .line 345
    :sswitch_8
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CAPTURE_ACTION af mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eq v1, v10, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    :cond_3
    const-string v1, "test/camera"

    const-string v2, "EVENT_CAPTURE_ACTION return1"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2300(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 352
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const-string v2, "storage space is not enough or unavailable"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    const-string v1, "test/camera"

    const-string v2, "[FOR_NATA_CAMERA_NO_AVAILABLE_STORAGE]"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_5
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnableShutterDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2400(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mShutterDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2400(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-lez v1, :cond_6

    .line 359
    const/16 v1, 0x12e

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 363
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, v2, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2602(Lcom/mediatek/engineermode/cameranew/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 364
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_c

    .line 365
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-eqz v1, :cond_b

    .line 366
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 367
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 368
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getBestFocusStep()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 369
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxFocusStep()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 370
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinFocusStep()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 371
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bracket max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bracket min "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bracket best "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 375
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 376
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 378
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 379
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 380
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 382
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 386
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3100(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v4}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 387
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3200(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 388
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 392
    :cond_a
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bracket position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 394
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 396
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 403
    :cond_c
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v10, :cond_e

    .line 404
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-nez v1, :cond_16

    .line 405
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 406
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxFocusStep()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 407
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinFocusStep()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 408
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "through max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " through min "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3300(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-nez v1, :cond_f

    .line 410
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 411
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 472
    :cond_d
    :goto_2
    const-string v1, "test/camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "through position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusEngStep(I)V

    .line 474
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2600(Lcom/mediatek/engineermode/cameranew/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 476
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 481
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1508(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 483
    :cond_e
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4000(Lcom/mediatek/engineermode/cameranew/Camera;)V

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 412
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_f
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3300(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    if-ne v1, v6, :cond_10

    .line 413
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 414
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    goto :goto_2

    .line 416
    :cond_10
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_13

    .line 417
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 418
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_11

    .line 419
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 425
    :goto_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_12

    .line 426
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2802(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    goto/16 :goto_2

    .line 421
    :cond_11
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 422
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080507

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto :goto_4

    .line 428
    :cond_12
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080508

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto/16 :goto_2

    .line 431
    :cond_13
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_d

    .line 432
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1802(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 433
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-gt v1, v2, :cond_14

    .line 434
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3400(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 440
    :goto_5
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-lt v1, v2, :cond_15

    .line 441
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3500(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2902(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    goto/16 :goto_2

    .line 436
    :cond_14
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 437
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080507

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto :goto_5

    .line 443
    :cond_15
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    const v2, 0x7f080508

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3600(Lcom/mediatek/engineermode/cameranew/Camera;II)V

    goto/16 :goto_2

    .line 449
    :cond_16
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1708(Lcom/mediatek/engineermode/cameranew/Camera;)I

    .line 450
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1800(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 452
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_17

    .line 453
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 454
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 456
    :cond_17
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-le v1, v2, :cond_d

    .line 457
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 462
    :cond_18
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3700(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3800(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_19

    .line 463
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v3}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3002(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 464
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3702(Lcom/mediatek/engineermode/cameranew/Camera;I)I

    .line 466
    :cond_19
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$3000(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2900(Lcom/mediatek/engineermode/cameranew/Camera;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 467
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget-object v1, v1, Lcom/mediatek/engineermode/cameranew/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 477
    :catch_1
    move-exception v0

    .line 478
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 486
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :sswitch_9
    const-string v1, "test/camera"

    const-string v2, "EVENT_PREVIEW_RAW_DUMP"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-virtual {v1, v6}, Lcom/mediatek/engineermode/cameranew/Camera;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 495
    :sswitch_a
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$4100(Lcom/mediatek/engineermode/cameranew/Camera;)V

    .line 497
    const/16 v1, 0x12d

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 501
    :sswitch_b
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/Camera;->access$1000(Lcom/mediatek/engineermode/cameranew/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cameranew/Camera;->access$2402(Lcom/mediatek/engineermode/cameranew/Camera;Z)Z

    .line 503
    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/cameranew/Camera$MainHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0xc9 -> :sswitch_0
        0x12d -> :sswitch_a
        0x12e -> :sswitch_b
    .end sparse-switch
.end method
