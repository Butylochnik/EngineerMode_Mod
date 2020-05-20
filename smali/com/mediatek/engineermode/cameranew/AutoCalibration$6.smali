.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->inintComponents()V
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
    .line 485
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 488
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$6;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/AutoCalibration"

    const-string v1, "select nothing."

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method
