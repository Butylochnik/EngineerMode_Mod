.class Lcom/mediatek/engineermode/hqanfc/SwpTest$3;
.super Ljava/lang/Object;
.source "SwpTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/SwpTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/SwpTest;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v1, "EM/HQA/NFC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SwpTest]onClick button view is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->access$300(Lcom/mediatek/engineermode/hqanfc/SwpTest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->showDialog(I)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->access$300(Lcom/mediatek/engineermode/hqanfc/SwpTest;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    const v3, 0x7f0804af

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->access$500(Lcom/mediatek/engineermode/hqanfc/SwpTest;Ljava/lang/Boolean;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    invoke-static {v0}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->access$600(Lcom/mediatek/engineermode/hqanfc/SwpTest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/SwpTest$3;->this$0:Lcom/mediatek/engineermode/hqanfc/SwpTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/hqanfc/SwpTest;->onBackPressed()V

    goto :goto_0
.end method
