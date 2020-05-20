.class Lcom/mediatek/engineermode/ratmode/RadioInfo$1;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/ratmode/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/ratmode/RadioInfo;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 127
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 131
    const/16 v1, 0x8

    .line 132
    .local v1, "pos":I
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 133
    .local v2, "type":I
    const-string v3, "EM/RATMode_RadioInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Preferred Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 136
    :sswitch_0
    const/4 v1, 0x1

    .line 162
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v3, v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$002(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I

    .line 163
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 139
    :sswitch_1
    const/4 v1, 0x4

    .line 140
    goto :goto_1

    .line 142
    :sswitch_2
    const/4 v1, 0x3

    .line 143
    goto :goto_1

    .line 145
    :sswitch_3
    const/4 v1, 0x0

    .line 146
    goto :goto_1

    .line 148
    :sswitch_4
    const/4 v1, 0x2

    .line 149
    goto :goto_1

    .line 151
    :sswitch_5
    const/4 v1, 0x5

    .line 152
    goto :goto_1

    .line 154
    :sswitch_6
    const/4 v1, 0x6

    .line 155
    goto :goto_1

    .line 157
    :sswitch_7
    const/4 v1, 0x7

    .line 158
    goto :goto_1

    .line 165
    .end local v1    # "pos":I
    .end local v2    # "type":I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const v4, 0x7f08046e

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 171
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/ratmode/RadioInfo$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 134
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
.end method
