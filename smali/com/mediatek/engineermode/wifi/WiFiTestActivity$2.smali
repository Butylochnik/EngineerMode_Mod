.class Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;
.super Ljava/lang/Object;
.source "WiFiTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->access$000(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->disableWiFi()V

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->finish()V

    .line 163
    return-void
.end method
