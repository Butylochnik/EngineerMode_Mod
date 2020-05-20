.class Lcom/mediatek/engineermode/nfc/NfcSettings$2;
.super Landroid/os/Handler;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 281
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSettings;->showDialog(I)V

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSettings;->dismissDialog(I)V

    goto :goto_0

    .line 289
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSettings;->showDialog(I)V

    goto :goto_0

    .line 297
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSettings;->showDialog(I)V

    goto :goto_0

    .line 300
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcSettings;->access$100(Lcom/mediatek/engineermode/nfc/NfcSettings;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    const-string v2, "com.mediatek.engineermode.nfc.NfcSettingsResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSettings$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSettings;

    invoke-virtual {v1, v0}, Lcom/mediatek/engineermode/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
