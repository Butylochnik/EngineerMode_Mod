.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_card_emulation_request"
.end annotation


# instance fields
.field public action:I

.field public protocols:S

.field public technology:S

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
