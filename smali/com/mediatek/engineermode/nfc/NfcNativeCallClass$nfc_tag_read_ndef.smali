.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_tag_read_ndef"
.end annotation


# instance fields
.field public dataAscii:[C

.field public dataHex:[S

.field public length:I

.field public ndef_type:I

.field public recordFlage:I

.field public recordId:I

.field public recordInfo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
