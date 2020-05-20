.class Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;
.super Landroid/os/Handler;
.source "NetworkSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 160
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 163
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 164
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v6

    .line 165
    .local v1, "type":I
    const-string v2, "EM/NetworkMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Preferred Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$400(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 167
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 169
    :sswitch_0
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 175
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 178
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 181
    :sswitch_4
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v9, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 184
    :sswitch_5
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 187
    :sswitch_6
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 190
    :sswitch_7
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 196
    :cond_1
    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_0

    .line 199
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 202
    :sswitch_9
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 205
    :sswitch_a
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 208
    :sswitch_b
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 211
    :sswitch_c
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 214
    :sswitch_d
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v9, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 217
    :sswitch_e
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 220
    :sswitch_f
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$500(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0

    .line 227
    .end local v1    # "type":I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    const v3, 0x7f08048d

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 231
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$100(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x9 -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_6
        0x22 -> :sswitch_7
    .end sparse-switch

    .line 196
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_9
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x9 -> :sswitch_d
        0xb -> :sswitch_c
        0xc -> :sswitch_e
        0x22 -> :sswitch_f
    .end sparse-switch
.end method
