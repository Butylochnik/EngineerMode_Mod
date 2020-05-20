.class Lcom/mediatek/engineermode/power/PMU6575$2;
.super Ljava/lang/Object;
.source "PMU6575.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/power/PMU6575;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/PMU6575;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/engineermode/power/PMU6575$2;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575$2;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    const v3, 0x7f0800bf

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/power/PMU6575;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "pmuInfoText":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575$2;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/power/PMU6575;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "pmuReg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575$2;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-static {v2}, Lcom/mediatek/engineermode/power/PMU6575;->access$100(Lcom/mediatek/engineermode/power/PMU6575;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/mediatek/engineermode/power/PMU6575$2;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-static {v2}, Lcom/mediatek/engineermode/power/PMU6575;->access$200(Lcom/mediatek/engineermode/power/PMU6575;)V

    goto :goto_0
.end method
