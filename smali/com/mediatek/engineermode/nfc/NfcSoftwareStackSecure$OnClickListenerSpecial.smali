.class Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;
.super Ljava/lang/Object;
.source "NfcSoftwareStackSecure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerSpecial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;->this$0:Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;
    .param p2, "x1"    # Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure$OnClickListenerSpecial;-><init>(Lcom/mediatek/engineermode/nfc/NfcSoftwareStackSecure;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 330
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 331
    check-cast v0, Landroid/widget/CheckBox;

    .line 332
    .local v0, "chk":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    .end local v0    # "chk":Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0    # "chk":Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
