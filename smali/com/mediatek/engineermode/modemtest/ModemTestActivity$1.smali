.class Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;
.super Landroid/os/Handler;
.source "ModemTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/modemtest/ModemTestActivity;
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
    .line 125
    iput-object p1, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "rebootFlag":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 244
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 245
    const-string v4, "ModemTest"

    const-string v5, "disableAllButton."

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v4}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$200(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;)V

    .line 248
    :cond_1
    return-void

    .line 132
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 133
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_NONE AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 137
    const/4 v2, 0x1

    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_NONE AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 147
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_INTEGRITY_OFF AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_INTEGRITY_OFF AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 159
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 160
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_FTA AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 163
    const/4 v2, 0x1

    goto :goto_0

    .line 165
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_FTA AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 171
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 173
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_IOT AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 176
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 178
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_IOT AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 184
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 185
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    .line 186
    const-string v4, "ModemTest"

    const-string v5, "Query success."

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 188
    .local v1, "data":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v4, v1}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$000(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v1    # "data":[Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "Query failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 197
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_OPERATOR AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 200
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_OPERATOR AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 209
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 210
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_FACTORY AT cmd success."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    :cond_8
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    const-string v5, "MODEM_FACTORY AT cmd failed."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 221
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 223
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v8

    .line 224
    .local v3, "type":I
    const-string v4, "ModemTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Preferred Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-nez v3, :cond_9

    .line 226
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v4, v7}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$102(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)Z

    goto/16 :goto_0

    .line 228
    :cond_9
    iget-object v4, p0, Lcom/mediatek/engineermode/modemtest/ModemTestActivity$1;->this$0:Lcom/mediatek/engineermode/modemtest/ModemTestActivity;

    invoke-static {v4, v8}, Lcom/mediatek/engineermode/modemtest/ModemTestActivity;->access$102(Lcom/mediatek/engineermode/modemtest/ModemTestActivity;Z)Z

    goto/16 :goto_0

    .line 233
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "type":I
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 238
    const-string v4, "ModemTest"

    const-string v5, "Turn off WCDMA Preferred Fail"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_8
    .end sparse-switch
.end method
