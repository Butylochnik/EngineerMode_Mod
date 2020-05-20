.class Lcom/mediatek/engineermode/cfu/CfuActivity$1;
.super Landroid/os/Handler;
.source "CfuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cfu/CfuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    const-string v4, "CFU"

    const-string v5, "Receive msg from modem"

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 88
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 91
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 93
    .local v3, "receiveDate":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 94
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Warning: Received data is null!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :cond_0
    aget-object v4, v3, v7

    if-eqz v4, :cond_4

    aget-object v4, v3, v7

    const-string v5, "+ESSP:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    aget-object v4, v3, v7

    const-string v5, "+ESSP:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 99
    const-string v4, "\\s*|\t|\r|\n"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 100
    .local v2, "p":Ljava/util/regex/Pattern;
    aget-object v4, v3, v7

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 101
    .local v1, "m0":Ljava/util/regex/Matcher;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 102
    aget-object v4, v3, v7

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v4}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$000(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 104
    :cond_1
    aget-object v4, v3, v7

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v4}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$100(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 106
    :cond_2
    aget-object v4, v3, v7

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v4}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$200(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 113
    .end local v1    # "m0":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Warning: Invalid return"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 117
    .end local v3    # "receiveDate":[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Query Failed!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :pswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    .line 122
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Success!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 124
    :cond_6
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 129
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Success!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 131
    :cond_7
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_3
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 136
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const-string v5, "Success!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 138
    :cond_8
    iget-object v4, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
