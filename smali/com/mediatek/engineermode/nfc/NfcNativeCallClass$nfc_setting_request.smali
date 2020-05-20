.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_setting_request"
.end annotation


# instance fields
.field public debug_enable:I

.field public get_capabilities:I

.field public nfc_enable:I

.field public sw_protocol:I

.field public test1:[S

.field public test2:[[S


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test1:[S

    .line 165
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test2:[[S

    .line 168
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test1:[S

    const/16 v1, 0x3e7

    aput-short v1, v0, v3

    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test1:[S

    const/16 v1, 0xf

    const/16 v2, 0x378

    aput-short v2, v0, v1

    .line 170
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test2:[[S

    aget-object v0, v0, v3

    const/16 v1, 0x6f

    aput-short v1, v0, v3

    .line 171
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test2:[[S

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xde

    aput-short v1, v0, v3

    .line 172
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;->test2:[[S

    aget-object v0, v0, v4

    const/16 v1, 0x14d

    aput-short v1, v0, v4

    .line 173
    return-void
.end method
