.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v3, 0x7f0804fd

    .line 357
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;ILjava/lang/String;)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->removeDialog(I)V

    .line 363
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const v1, 0x7f08052d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$5;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;ILjava/lang/String;)V

    goto :goto_0
.end method
