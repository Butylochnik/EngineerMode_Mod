.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_setting_response"
.end annotation


# instance fields
.field public card_mode:I

.field public debug_enable:I

.field public fw_ver:I

.field public get_capabilities:I

.field public hw_ver:I

.field public nfc_enable:I

.field public reader_mode:I

.field public status:I

.field public sw_protocol:I

.field public sw_ver:I

.field public test1:[S

.field public test2:[[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
