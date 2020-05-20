.class Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;
.super Ljava/lang/Thread;
.source "ChargeBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/power/ChargeBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FunctionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/ChargeBattery;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/ChargeBattery;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v1}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$100(Lcom/mediatek/engineermode/power/ChargeBattery;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v3}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v3}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v6, "SEP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "- - - - - - - - -\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v6}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$300(Lcom/mediatek/engineermode/power/ChargeBattery;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v6}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v6}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    aget-object v6, v6, v4

    const-string v7, "mA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v6, v3}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$400(Lcom/mediatek/engineermode/power/ChargeBattery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v11, 0x7fffffff

    cmp-long v6, v9, v11

    if-lez v6, :cond_1

    const-wide v11, 0x100000000L

    sub-long/2addr v9, v11

    :cond_1
    long-to-float v6, v9

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v6, v11

    move v0, v6

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read file error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v10}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v2

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EM-PMU"

    invoke-static {v10, v9}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    aget-object v8, v8, v5

    aput-object v8, v6, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v5, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v5}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    aget-object v4, v5, v4

    aput-object v4, v6, v7

    const-string v4, "%1$-28s:[ %2$-6s ]%3$s\n"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v8}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    aget-object v8, v8, v5

    aput-object v8, v6, v5

    iget-object v5, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v5, v3}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$400(Lcom/mediatek/engineermode/power/ChargeBattery;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v5, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    invoke-static {v5}, Lcom/mediatek/engineermode/power/ChargeBattery;->access$200(Lcom/mediatek/engineermode/power/ChargeBattery;)[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    aget-object v4, v5, v4

    aput-object v4, v6, v7

    const-string v4, "%1$-28s: [ %2$-6s ]%3$s\n"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "INFO"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->this$0:Lcom/mediatek/engineermode/power/ChargeBattery;

    iget-object v4, v4, Lcom/mediatek/engineermode/power/ChargeBattery;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Lcom/mediatek/engineermode/power/ChargeBattery$FunctionThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    const-string v5, "EM_BATTERY_CHARGE"

    const-string v6, "Catch InterruptedException"

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    goto/16 :goto_0

    :cond_4
    return-void
.end method
