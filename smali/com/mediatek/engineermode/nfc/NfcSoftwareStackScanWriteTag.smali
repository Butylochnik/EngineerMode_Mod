.class public Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;
.super Landroid/app/Activity;
.source "NfcSoftwareStackScanWriteTag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mBtnOK:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->mBtnOK:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 76
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackScanReadNDEF onClick"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 64
    const-string v0, "EM/nfc"

    const-string v1, "NfcSoftwareStackScanWriteNDEF onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v0, 0x7f0b0410

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanWriteTag;->mBtnOK:Landroid/widget/Button;

    .line 66
    return-void
.end method
