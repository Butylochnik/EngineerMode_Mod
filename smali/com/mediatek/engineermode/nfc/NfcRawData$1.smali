.class Lcom/mediatek/engineermode/nfc/NfcRawData$1;
.super Ljava/lang/Object;
.source "NfcRawData.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/nfc/NfcRawData;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/nfc/NfcRawData;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSelectionId(I)I
    .locals 6
    .param p1, "radioId"    # I

    .prologue
    const/16 v3, 0x8

    .line 181
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 186
    .local v2, "idxs":[I
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 192
    .local v1, "ids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 193
    aget v3, v2, v0

    if-ne v3, p1, :cond_0

    .line 194
    aget v3, v1, v0

    .line 198
    :goto_1
    return v3

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v3, "EM/nfc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ghost RadioGroup checkId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v3, 0x3e9

    goto :goto_1

    .line 181
    nop

    :array_0
    .array-data 4
        0x7f0b0391
        0x7f0b0392
        0x7f0b0393
        0x7f0b0394
        0x7f0b0395
        0x7f0b0396
        0x7f0b0397
        0x7f0b0398
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x3e9
        0x3ea
        0x3eb
        0x3ec
        0x3ed
        0x3ee
        0x3ef
        0x3f0
    .end array-data
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 175
    const-string v0, "EM/nfc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadioGpMode checked Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/nfc/NfcRawData$1;->getSelectionId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$002(Lcom/mediatek/engineermode/nfc/NfcRawData;I)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    iget-object v1, p0, Lcom/mediatek/engineermode/nfc/NfcRawData$1;->this$0:Lcom/mediatek/engineermode/nfc/NfcRawData;

    invoke-static {v1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$000(Lcom/mediatek/engineermode/nfc/NfcRawData;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/nfc/NfcRawData;->access$100(Lcom/mediatek/engineermode/nfc/NfcRawData;I)V

    .line 178
    return-void
.end method
