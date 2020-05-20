.class Lcom/mediatek/engineermode/nfc/NfcEntry$2;
.super Ljava/lang/Object;
.source "NfcEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcEntry;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcEntry;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcEntry;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcEntry$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry$2;->this$0:Lcom/mediatek/engineermode/nfc/NfcEntry;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->finish()V

    .line 238
    return-void
.end method
