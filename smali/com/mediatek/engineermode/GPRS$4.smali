.class Lcom/mediatek/engineermode/GPRS$4;
.super Ljava/lang/Object;
.source "GPRS.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/GPRS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a3

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/GPRS;->access$302(Lcom/mediatek/engineermode/GPRS;I)I

    .line 363
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 364
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a4

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/GPRS;->access$302(Lcom/mediatek/engineermode/GPRS;I)I

    .line 369
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 370
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$4;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-static {v0}, Lcom/mediatek/engineermode/GPRS;->access$400(Lcom/mediatek/engineermode/GPRS;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 373
    :cond_1
    return-void
.end method
