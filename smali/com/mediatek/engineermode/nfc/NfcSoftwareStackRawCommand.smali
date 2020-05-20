.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;
.super Landroid/app/Activity;
.source "NfcSoftwareStackRawCommand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnExample:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mEditCommand:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0b03da

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnSend:Landroid/widget/Button;

    .line 74
    const v0, 0x7f0b03db

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnExample:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0b03d9

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mEditCommand:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnExample:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private onSend()Z
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mEditCommand:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "strCommand":Ljava/lang/String;
    const-string v1, "EM/nfc"

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackRawCommand onClick"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnSend:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->onSend()Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mBtnExample:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->mEditCommand:Landroid/widget/EditText;

    const-string v1, "00 A4 04 00 0E A0 00 00 00 18 30 80 05 00 65 63 68 6F 00 00"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f030074

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 67
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackRawCommand onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackRawCommand;->initUI()V

    .line 69
    return-void
.end method
