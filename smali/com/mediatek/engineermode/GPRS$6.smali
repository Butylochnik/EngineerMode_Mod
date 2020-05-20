.class Lcom/mediatek/engineermode/GPRS$6;
.super Landroid/os/Handler;
.source "GPRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/GPRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$600(Lcom/mediatek/engineermode/GPRS;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 661
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 663
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 664
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 669
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attache failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 675
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 676
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 677
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 681
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 687
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 688
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 689
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy command succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 693
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy command failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 699
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 700
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$800(Lcom/mediatek/engineermode/GPRS;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 701
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 705
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 711
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 712
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 713
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 717
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 723
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 724
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 725
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 729
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 735
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 736
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/GPRS;->access$802(Lcom/mediatek/engineermode/GPRS;Z)Z

    goto/16 :goto_0

    .line 741
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 742
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    .line 743
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "IMEI WRITE"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "The IMEI is writen successfully."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 747
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "IMEI WRITE"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Fail to write IMEI due to radio unavailable or something else."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method
