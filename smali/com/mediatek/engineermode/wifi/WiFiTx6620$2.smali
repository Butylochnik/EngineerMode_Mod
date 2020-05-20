.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;
.super Ljava/lang/Object;
.source "WiFiTx6620.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 293
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->showDialog(I)V

    goto :goto_0
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
    .line 300
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method
