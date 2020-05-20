.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;
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
    .line 345
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0, p2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2202(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 349
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2400()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$4;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v2}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    return-void
.end method
