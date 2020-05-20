.class Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;
.super Ljava/lang/Object;
.source "NfcSoftwareStackScanReadTag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerSpecial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;
    .param p2, "x1"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$1;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackScanReadTag;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 339
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 340
    check-cast v0, Landroid/widget/CheckBox;

    .line 341
    .local v0, "chk":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 347
    .end local v0    # "chk":Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v0    # "chk":Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
