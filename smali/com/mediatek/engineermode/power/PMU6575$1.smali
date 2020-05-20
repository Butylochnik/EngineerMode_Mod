.class Lcom/mediatek/engineermode/power/PMU6575$1;
.super Ljava/lang/Object;
.source "PMU6575.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/power/PMU6575;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/power/PMU6575;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/power/PMU6575;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/engineermode/power/PMU6575$1;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 135
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/power/PMU6575$1;->this$0:Lcom/mediatek/engineermode/power/PMU6575;

    invoke-static {v0, p3}, Lcom/mediatek/engineermode/power/PMU6575;->access$002(Lcom/mediatek/engineermode/power/PMU6575;I)I

    .line 136
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
