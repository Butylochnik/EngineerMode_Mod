.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;
.super Landroid/os/Handler;
.source "WiFiTx6620.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    .line 755
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 756
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 759
    sget-boolean v7, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v7, :cond_1

    .line 760
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->showDialog(I)V

    .line 964
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 763
    :cond_1
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "new msg"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v7, 0x1

    new-array v6, v7, [J

    .line 767
    .local v6, "u4Value":[J
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 769
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 773
    :pswitch_2
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 774
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mPreambleIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-wide/16 v7, 0x4

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 778
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 781
    const-wide/16 v7, 0x6

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 786
    const-wide/16 v7, 0x7

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 789
    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 796
    const-wide/16 v7, 0x9

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 798
    const-wide/16 v7, 0xa

    const-wide/32 v9, 0x20000

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 801
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2100()[J

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 802
    const-wide/16 v7, 0xc

    invoke-static {}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2100()[J

    move-result-object v9

    aget-wide v9, v9, v1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 806
    :cond_2
    const-wide/16 v7, 0xd

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 808
    const-wide/16 v7, 0xe

    const-wide/16 v9, 0x2

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 809
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mGuardIntervalIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const-wide/16 v7, 0x10

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 813
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mBandwidthIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-wide/16 v7, 0xf

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 816
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v7

    iget v5, v7, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 817
    .local v5, "rateIndex":I
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 818
    add-int/lit8 v5, v5, -0xc

    .line 819
    const/4 v7, 0x7

    if-le v5, v7, :cond_3

    .line 820
    const/16 v5, 0x20

    .line 822
    :cond_3
    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    .line 825
    :cond_4
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "TXX rate index = 0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-wide/16 v7, 0x3

    int-to-long v9, v5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 828
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v2

    .line 829
    .local v2, "number":I
    int-to-long v7, v2

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 830
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target channel freq ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_5

    .line 835
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 837
    :cond_5
    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 847
    .end local v1    # "i":I
    .end local v2    # "number":I
    .end local v5    # "rateIndex":I
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v7

    iget v5, v7, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 848
    .restart local v5    # "rateIndex":I
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 849
    add-int/lit8 v5, v5, -0xc

    .line 850
    const/4 v7, 0x7

    if-le v5, v7, :cond_6

    .line 851
    const/16 v5, 0x20

    .line 853
    :cond_6
    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    .line 855
    :cond_7
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "Tx rate index = 0x%08x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-wide/16 v7, 0x3

    int-to-long v9, v5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 858
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 859
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The mPreambleIndex is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-wide/16 v7, 0x4

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 861
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 863
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x4

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 865
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 873
    .end local v5    # "rateIndex":I
    :pswitch_4
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 874
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 876
    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 877
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x6

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 879
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 882
    :cond_8
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 883
    const-wide/16 v7, 0x41

    const-wide/16 v9, 0x5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 889
    :goto_2
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0xa

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 891
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 886
    :cond_9
    const-wide/16 v7, 0x41

    const-wide/16 v9, 0x2

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    goto :goto_2

    .line 900
    :pswitch_5
    const-wide/16 v7, 0x2

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 901
    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 903
    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x5

    invoke-static {v7, v8, v9, v10}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v7

    if-nez v7, :cond_0

    .line 905
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    goto/16 :goto_0

    .line 918
    :pswitch_6
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "The Handle event is : HANDLER_EVENT_STOP"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 920
    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v6, v7

    .line 922
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 928
    :cond_a
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 929
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 931
    :cond_b
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 934
    :pswitch_7
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 935
    const-wide/16 v3, 0x0

    .line 936
    .local v3, "pktCnt":J
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "The Handle event is : HANDLER_EVENT_TIMER"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 946
    const-wide/16 v7, 0x20

    invoke-static {v7, v8, v6}, Lcom/mediatek/engineermode/wifi/EMWifi;->getATParam(J[J)I

    move-result v7

    if-nez v7, :cond_c

    .line 948
    const-string v7, "EM/WiFi_Tx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query Transmitted packet count succeed, count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " target count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v7, 0x0

    aget-wide v7, v6, v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_d

    .line 952
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->removeMessages(I)V

    .line 953
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const-string v8, "invalid input value"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 957
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    const-string v7, "EM/WiFi_Tx"

    const-string v8, "query Transmitted packet count failed"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_d
    const/4 v7, 0x3

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 769
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
