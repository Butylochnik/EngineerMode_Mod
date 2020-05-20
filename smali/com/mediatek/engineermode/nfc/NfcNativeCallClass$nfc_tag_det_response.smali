.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "nfc_tag_det_response"
.end annotation


# instance fields
.field public appdata:I

.field public atag:I

.field public card_type:I

.field public maxdatarate:I

.field public sak:I

.field public tag_type:I

.field public uid:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printMember()V
    .locals 6

    .prologue
    .line 286
    const-string v1, "tag_type %d, card_type %d, uid %s, sak %d, atag %d, appdata %d, maxdatarate %d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->tag_type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->card_type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->uid:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->sak:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->atag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->appdata:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;->maxdatarate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "nfc"

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method
