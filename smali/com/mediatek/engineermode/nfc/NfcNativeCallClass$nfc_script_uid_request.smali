.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_script_uid_request"
.end annotation


# instance fields
.field public action:I

.field public data:[B

.field public type:I

.field public uid_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;->data:[B

    return-void
.end method
