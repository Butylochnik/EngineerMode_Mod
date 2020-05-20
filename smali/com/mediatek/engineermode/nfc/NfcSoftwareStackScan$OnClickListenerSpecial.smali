.class Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;
.super Ljava/lang/Object;
.source "NfcSoftwareStackScan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerSpecial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;
    .param p2, "x1"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScan;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 322
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 323
    check-cast v0, Landroid/widget/CheckBox;

    .line 324
    .local v0, "chk":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 330
    .end local v0    # "chk":Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local v0    # "chk":Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
