.class public Lcom/mediatek/engineermode/modemdebug/ModemDebug;
.super Landroid/app/Activity;
.source "ModemDebug.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_MODEM_RESET:Ljava/lang/String; = "mediatek.debug.md.reset.wait"

.field private static final TAG:Ljava/lang/String; = "EM/MODEM_DEBUG"


# instance fields
.field private mBtDone:Landroid/widget/Button;

.field private mDelayTime:I

.field private mEtResetTime:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    .line 58
    iput-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mBtDone:Landroid/widget/Button;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mDelayTime:I

    return-void
.end method

.method private checkInputValue()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    const v2, 0x7f08070c

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 89
    const/4 v1, 0x0

    .line 91
    :cond_1
    return v1
.end method

.method private onClickBtnDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mDelayTime:I

    .line 96
    const-string v1, "mediatek.debug.md.reset.wait"

    iget-object v2, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "EM/MODEM_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set modem debug delay time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mDelayTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v1, 0x7f08070d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "EM/MODEM_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v1, 0x7f08070c

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    const-string v0, "EM/MODEM_DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->checkInputValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->onClickBtnDone()V

    .line 83
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->setContentView(I)V

    .line 66
    const v0, 0x7f0b0306

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mBtDone:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v0, "mediatek.debug.md.reset.wait"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mDelayTime:I

    .line 72
    iget-object v0, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mEtResetTime:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/engineermode/modemdebug/ModemDebug;->mDelayTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method
