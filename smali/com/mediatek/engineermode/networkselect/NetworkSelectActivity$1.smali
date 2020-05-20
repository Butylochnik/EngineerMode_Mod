.class Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;
.super Ljava/lang/Object;
.source "NetworkSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 128
    iput-object p1, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 130
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$000(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$100(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v3

    if-nez v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 140
    .local v2, "settingsNetworkMode":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$200(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)[I

    move-result-object v3

    aget v1, v3, p3

    .line 142
    .local v1, "selectNetworkMode":I
    if-eq v2, v1, :cond_0

    .line 143
    const-string v3, "EM/NetworkMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectNetworkMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$300(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-static {v4}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->access$100(Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;)I

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 150
    :cond_0
    return-void

    .line 137
    .end local v1    # "selectNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/networkselect/NetworkSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode_2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2    # "settingsNetworkMode":I
    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 154
    return-void
.end method
