.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_tx_alwayson_request"
.end annotation


# instance fields
.field public action:I

.field public bitrate:B

.field public modulation_type:B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
