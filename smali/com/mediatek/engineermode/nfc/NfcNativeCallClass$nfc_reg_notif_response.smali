.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_reg_notif_response"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public se:I

.field public se_status:I

.field public se_type:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
