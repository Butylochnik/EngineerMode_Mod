.class Lcom/mediatek/engineermode/GPRS$5;
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
    .line 377
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$5;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a6

    if-ne v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$5;->this$0:Lcom/mediatek/engineermode/GPRS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/GPRS;->access$502(Lcom/mediatek/engineermode/GPRS;I)I

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0b01a7

    if-ne v0, v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/mediatek/engineermode/GPRS$5;->this$0:Lcom/mediatek/engineermode/GPRS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/GPRS;->access$502(Lcom/mediatek/engineermode/GPRS;I)I

    .line 385
    :cond_1
    return-void
.end method
