.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;
.super Ljava/lang/Object;
.source "SDLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/engineermode/sdtest/SDLogActivity;
    .param p2, "x1"    # Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z

    .line 265
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$400(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->start()V

    .line 269
    :cond_0
    const-string v0, "SD Log"

    const-string v1, "mSDLogToggleButton is checked"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 276
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-static {v0, v2}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z

    .line 272
    const-string v0, "SD Log"

    const-string v1, "mSDLogToggleButton is unchecked"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
