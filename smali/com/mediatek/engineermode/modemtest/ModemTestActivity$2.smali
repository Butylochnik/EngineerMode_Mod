.class Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;
.super Ljava/lang/Object;
.source "ModemTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "1,0"

    invoke-static {v0, v1, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 275
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 282
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-virtual {v0, v4}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->showDialog(I)V

    goto :goto_0

    .line 290
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-virtual {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->showDialog(I)V

    goto :goto_0

    .line 293
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 304
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$100(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$600(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    .line 306
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$800(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$700(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v1, "5"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$300(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$400(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$2;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$500(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;I)V

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0312
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
