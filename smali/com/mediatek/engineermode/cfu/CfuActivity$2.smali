.class Lcom/mediatek/engineermode/cfu/CfuActivity$2;
.super Ljava/lang/Object;
.source "CfuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cfu/CfuActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 171
    iput-object p1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 174
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$000(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$600(Lcom/mediatek/engineermode/cfu/CfuActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v1, v3}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$500(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 176
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : default"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$200(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$600(Lcom/mediatek/engineermode/cfu/CfuActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v1, v4}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$500(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 180
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : on"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$100(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$600(Lcom/mediatek/engineermode/cfu/CfuActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v1, v5}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    invoke-static {v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$500(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 184
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : off"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity$2;->this$0:Lcom/mediatek/engineermode/cfu/CfuActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V

    .line 188
    const-string v0, "CFU"

    const-string v1, "Set Query CFU Status : off"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
