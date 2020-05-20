.class public Lcom/mediatek/engineermode/lte/CommandToolEdit;
.super Landroid/app/Activity;
.source "CommandToolEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tool"


# instance fields
.field private mButtonSend:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultInteval:I

.field private mEditorCommands:Landroid/widget/EditText;

.field private mEditorInterval:Landroid/widget/EditText;

.field private mInterval:I

.field private mService:Lcom/mediatek/engineermode/lte/CommandToolService;

.field private mTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mCommands:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mDefaultInteval:I

    .line 36
    iput v1, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mInterval:I

    return-void
.end method

.method private parseEditors()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    iget-object v6, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorCommands:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "text":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v4

    .line 84
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "commands":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lt v6, v5, :cond_0

    .line 89
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 91
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mCommands:Ljava/util/ArrayList;

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v4, v5

    .line 102
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mDefaultInteval:I

    iput v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mInterval:I

    .line 100
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    iget v6, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mDefaultInteval:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 145
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mToast:Landroid/widget/Toast;

    .line 146
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonSend:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->parseEditors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mCommands:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mInterval:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/engineermode/lte/CommandToolService;->startTest(Ljava/util/List;I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonStop:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->stopTest()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v4, 0x7f030058

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->setContentView(I)V

    .line 43
    const v4, 0x7f0b02e4

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorCommands:Landroid/widget/EditText;

    .line 44
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorCommands:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 45
    const v4, 0x7f0b02e5

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    .line 46
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 47
    const v4, 0x7f0b02e8

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mTextView:Landroid/widget/TextView;

    .line 48
    const v4, 0x7f0b02e6

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonSend:Landroid/widget/Button;

    .line 49
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonSend:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonSend:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    const v4, 0x7f0b02e7

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonStop:Landroid/widget/Button;

    .line 52
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    iget v5, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mDefaultInteval:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const-string v3, ""

    .line 59
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "commands"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    .local v1, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v4, "\n"

    goto :goto_1

    .line 65
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorCommands:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 119
    const-string v0, "Tool"

    const-string v1, "Enter onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    check-cast p2, Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/mediatek/engineermode/lte/CommandToolService$CommandToolServiceBinder;->getService()Lcom/mediatek/engineermode/lte/CommandToolService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    .line 121
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v0, p0}, Lcom/mediatek/engineermode/lte/CommandToolService;->setOnUpdateResultListener(Lcom/mediatek/engineermode/lte/CommandToolService$OnUpdateResultListener;)V

    .line 122
    const-string v0, "Tool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/lte/CommandToolService;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->onUpdateResult()V

    .line 124
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    const-string v0, "Tool"

    const-string v1, "Enter onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    .line 130
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p0}, Lcom/mediatek/engineermode/lte/CommandToolEdit;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 115
    return-void
.end method

.method public onUpdateResult()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/lte/CommandToolService;->getOutput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonSend:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mButtonStop:Landroid/widget/Button;

    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/lte/CommandToolService;->isRunning()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorCommands:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/lte/CommandToolService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mEditorInterval:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/lte/CommandToolEdit;->mService:Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-virtual {v3}, Lcom/mediatek/engineermode/lte/CommandToolService;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 139
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v0, v2

    .line 137
    goto :goto_1

    :cond_2
    move v1, v2

    .line 138
    goto :goto_2
.end method
