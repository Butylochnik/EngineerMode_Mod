.class public Lcom/mediatek/engineermode/lte/LteNetworkInfo;
.super Landroid/app/Activity;
.source "LteNetworkInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/LteNetworkInfo"


# instance fields
.field private mCheckBoxes:[Landroid/widget/CheckBox;

.field private mChecked:[I

.field private mSimType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v4, 0x7f030056

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "mSimType"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mSimType:I

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "infoLabels":[Ljava/lang/String;
    array-length v4, v1

    new-array v4, v4, [Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    .line 72
    array-length v4, v1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mChecked:[I

    .line 73
    const v4, 0x7f0b015b

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 74
    .local v3, "list":Landroid/view/ViewGroup;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/CheckBox;

    invoke-direct {v5, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v0

    .line 77
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    const v0, 0x7f080475

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 85
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "aMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 92
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 93
    .local v2, "isAnyChechked":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    if-nez v3, :cond_0

    .line 93
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mCheckBoxes:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mChecked:[I

    aput v4, v3, v0

    .line 99
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mChecked:[I

    aput v5, v3, v0

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    const v3, 0x7f080476

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "mChecked"

    iget-object v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mChecked:[I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 110
    const-string v3, "mSimType"

    iget v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->mSimType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/lte/LteNetworkInfo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
