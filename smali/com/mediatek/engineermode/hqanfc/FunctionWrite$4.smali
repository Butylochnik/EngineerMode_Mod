.class Lcom/mediatek/engineermode/hqanfc/FunctionWrite$4;
.super Ljava/lang/Object;
.source "FunctionWrite.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/FunctionWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/FunctionWrite;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$4;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 112
    const-string v0, "EM/HQA/NFC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FunctionWrite]onCheckedChanged checkedId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/FunctionWrite$4;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionWrite;

    invoke-virtual {v0, p2}, Lcom/mediatek/engineermode/hqanfc/FunctionWrite;->checkedChange(I)V

    .line 114
    return-void
.end method
