.class Lcom/mediatek/engineermode/nfc/NfcEntry$1;
.super Ljava/lang/Object;
.source "NfcEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcEntry;->onDestroy()V
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
    .line 106
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcEntry$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 108
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->deinitNfcDriver()V

    .line 109
    return-void
.end method
