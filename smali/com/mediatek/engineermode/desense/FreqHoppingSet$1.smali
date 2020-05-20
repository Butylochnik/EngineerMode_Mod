.class Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;
.super Ljava/lang/Object;
.source "FreqHoppingSet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/desense/FreqHoppingSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    invoke-static {v0, p3}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->access$000(Lcom/mediatek/engineermode/desense/FreqHoppingSet;I)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;->this$0:Lcom/mediatek/engineermode/desense/FreqHoppingSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->showDialog(I)V

    .line 63
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
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
