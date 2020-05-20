.class public Lcom/mediatek/engineermode/nfc/ModeMap;
.super Ljava/lang/Object;
.source "ModeMap.java"


# instance fields
.field mBit:I

.field mChkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;I)V
    .locals 0
    .param p1, "c"    # Landroid/widget/CheckBox;
    .param p2, "b"    # I

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/ModeMap;->mChkBox:Landroid/widget/CheckBox;

    .line 8
    iput p2, p0, Lcom/mediatek/engineermode/nfc/ModeMap;->mBit:I

    .line 9
    return-void
.end method
