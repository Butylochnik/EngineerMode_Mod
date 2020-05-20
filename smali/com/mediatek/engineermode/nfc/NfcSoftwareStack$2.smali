.class Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;
.super Landroid/os/Handler;
.source "NfcSoftwareStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 410
    :goto_0
    :pswitch_0
    return-void

    .line 389
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->showDialog(I)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->dismissDialog(I)V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->showDialog(I)V

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->showDialog(I)V

    goto :goto_0

    .line 405
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStack;->showDialog(I)V

    goto :goto_0

    .line 387
    nop

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
