.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;
.super Landroid/app/Activity;
.source "NfcSoftwareStackP2PInitDect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnRecv:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mEditRecv:Landroid/widget/EditText;

.field private mEditSend:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnSend:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnRecv:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditSend:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditRecv:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnSend:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 87
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackP2PInitDect mBtnSend"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnRecv:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 89
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackP2PInitDect mBtnRecv"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->setContentView(I)V

    .line 63
    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnSend:Landroid/widget/Button;

    .line 65
    const v0, 0x7f0b03d8

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnRecv:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0b03d6

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditSend:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0b03d5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditRecv:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mBtnRecv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditRecv:Landroid/widget/EditText;

    const-string v1, "ddd\nddd\nddd\nddd\nddd\nddd\nddd\nddd\nddd\n\nddd\nddd\nddd\nddd\n"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackP2PInitDect;->mEditSend:Landroid/widget/EditText;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
