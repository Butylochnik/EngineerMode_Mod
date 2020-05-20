.class public Lcom/mediatek/engineermode/nfc/NfcEntry;
.super Landroid/app/Activity;
.source "NfcEntry.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIA_INIT_NFC_DRIVER:I = 0x0

.field private static final DIA_START_ACTIVITY:I = 0x1

.field public static final ENTRY_RAWDATA:Ljava/lang/String; = "Raw Data"

.field public static final ENTRY_SETTING:Ljava/lang/String; = "Settings"

.field public static final ENTRY_SOFTWARESTACK:Ljava/lang/String; = "Software Stack"

.field public static final TAG:Ljava/lang/String; = "EM/nfc"


# instance fields
.field private mInitNfcDriverRet:I

.field private mInitNfcDrvOK:Z

.field private final mItemString:[Ljava/lang/String;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mMenuListView:Landroid/widget/ListView;

    .line 73
    iput-boolean v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mInitNfcDrvOK:Z

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Settings"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Raw Data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Software Stack"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    return-void
.end method

.method private closeNFCServiceAtStart()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 142
    .local v0, "adp":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service set off."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service set off Fail."

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    const-string v1, "EM/nfc"

    const-string v2, "Nfc service is off"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "NfcSettings"

    invoke-virtual {p0, v3, v6}, Lcom/mediatek/engineermode/nfc/NfcEntry;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 184
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    aget-object v4, v4, v6

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-object v1
.end method

.method private resetUIData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 167
    const-string v2, "NfcSettings"

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/engineermode/nfc/NfcEntry;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mItemString:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->setContentView(I)V

    .line 82
    const v0, 0x7f0b038f

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mMenuListView:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    const-string v0, "EM/nfc"

    const-string v1, "NfcEntry onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->resetUIData()V

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v2, 0x7f0805d1

    const v5, 0x104000a

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    return-object v1

    .line 231
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0805d2

    iget v4, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mInitNfcDriverRet:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/mediatek/engineermode/nfc/NfcEntry$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/nfc/NfcEntry$2;-><init>(Lcom/mediatek/engineermode/nfc/NfcEntry;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 241
    goto :goto_0

    .line 243
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0805d3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 248
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "EM/nfc"

    const-string v1, "NfcEntry onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mInitNfcDrvOK:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/nfc/NfcEntry$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/nfc/NfcEntry$1;-><init>(Lcom/mediatek/engineermode/nfc/NfcEntry;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    const-string v0, "EM/nfc"

    const-string v1, "NfcEntry onDestroy done"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 207
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mListData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "com.mediatek.engineermode.nfc.NfcSettings"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/nfc/NfcEntry;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 211
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mListData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Raw Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const-string v2, "com.mediatek.engineermode.nfc.NfcRawData"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/nfc/NfcEntry;->showDialog(I)V

    goto :goto_1

    .line 214
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mListData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Software Stack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "com.mediatek.engineermode.nfc.NfcSoftwareStack"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    const-string v2, "EM/nfc"

    const-string v3, "NfcEntry onResume"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->closeNFCServiceAtStart()V

    .line 124
    invoke-static {}, Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;->initNfcDriver()I

    move-result v1

    .line 125
    .local v1, "ret":I
    if-nez v1, :cond_0

    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mInitNfcDrvOK:Z

    .line 127
    const-string v2, "EM/nfc"

    const-string v3, "NfcEntry initNfcDriver OK"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/nfc/NfcEntry;->getData()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mListData:Ljava/util/List;

    .line 134
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mListData:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 137
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 129
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/engineermode/nfc/NfcEntry;->mInitNfcDrvOK:Z

    .line 130
    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/nfc/NfcEntry;->showDialog(I)V

    goto :goto_0
.end method
