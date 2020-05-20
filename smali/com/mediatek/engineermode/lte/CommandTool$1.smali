.class Lcom/mediatek/engineermode/lte/CommandTool$1;
.super Ljava/lang/Object;
.source "CommandTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/lte/CommandTool;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/lte/CommandTool;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/lte/CommandTool;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->this$0:Lcom/mediatek/engineermode/lte/CommandTool;

    iput-object p2, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->this$0:Lcom/mediatek/engineermode/lte/CommandTool;

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/lte/CommandTool;->access$002(Lcom/mediatek/engineermode/lte/CommandTool;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->this$0:Lcom/mediatek/engineermode/lte/CommandTool;

    const-string v2, "command_tool"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/engineermode/lte/CommandTool;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config_file"

    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->this$0:Lcom/mediatek/engineermode/lte/CommandTool;

    invoke-static {v3}, Lcom/mediatek/engineermode/lte/CommandTool;->access$000(Lcom/mediatek/engineermode/lte/CommandTool;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool$1;->this$0:Lcom/mediatek/engineermode/lte/CommandTool;

    invoke-static {v1}, Lcom/mediatek/engineermode/lte/CommandTool;->access$100(Lcom/mediatek/engineermode/lte/CommandTool;)V

    .line 102
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
