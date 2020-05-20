.class Lcom/mediatek/engineermode/ratmode/RadioInfo$2;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 187
    iput-object p1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    const v8, 0x7f08046f

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    const-string v1, "EM/RATMode_RadioInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$000(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$000(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 305
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, p3}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$002(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)I

    .line 195
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$300(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, "msg":Landroid/os/Message;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 200
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_1
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "GSM/WCDMA(auto) 3"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "WCDMA Preferred 0"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 216
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v4}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$400(Lcom/mediatek/engineermode/ratmode/RadioInfo;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 242
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$100(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 245
    :cond_3
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "WCDMA only 2"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 248
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 255
    :pswitch_3
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "GSM only 1"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 264
    :pswitch_4
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "LTE only 11"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 267
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 273
    :pswitch_5
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "LTE/GSM/WCDMA 9"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 282
    :pswitch_6
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "LTE/WCDMA 12"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 285
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 291
    :pswitch_7
    const-string v1, "EM/RATMode_RadioInfo"

    const-string v2, "LTE/GSM 34"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    .line 294
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    invoke-static {v1}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$200(Lcom/mediatek/engineermode/ratmode/RadioInfo;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 300
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/engineermode/ratmode/RadioInfo$2;->this$0:Lcom/mediatek/engineermode/ratmode/RadioInfo;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/ratmode/RadioInfo;->access$500(Lcom/mediatek/engineermode/ratmode/RadioInfo;I)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/RATMode_RadioInfo"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
