.class public Lcom/mediatek/engineermode/bluetooth/BtList;
.super Landroid/app/ListActivity;
.source "BtList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;
    }
.end annotation


# static fields
.field private static final CHECK_BLE:I = 0x2

.field private static final CHECK_BT_STATE:I = 0x1

.field private static final NUM_RADIX:I = 0x10

.field private static final RENTURN_SUCCESS:I = 0x0

.field private static final SLEEP_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "EM/BTList"


# instance fields
.field private mBleSupport:Z

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChipId:I

.field private mComboSupport:Z

.field private mDoubleFlag:Z

.field private mModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z

    .line 83
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mDoubleFlag:Z

    .line 84
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z

    .line 88
    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I

    .line 89
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 90
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/bluetooth/BtList;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/bluetooth/BtList;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # Lcom/mediatek/engineermode/bluetooth/BtTest;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/BtList;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/bluetooth/BtList;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/bluetooth/BtList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/BtList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/BtList;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/bluetooth/BtList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/bluetooth/BtList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/bluetooth/BtList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->setContentView(I)V

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    .line 103
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    const v3, 0x7f0802c2

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 113
    .local v1, "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 122
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->showDialog(I)V

    .line 123
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;-><init>(Lcom/mediatek/engineermode/bluetooth/BtList;)V

    .line 124
    .local v0, "functionTask":Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    .end local v0    # "functionTask":Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const-string v1, "EM/BTList"

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 141
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v1, 0x7f08029d

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 180
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 150
    :cond_0
    if-ne p1, v4, :cond_1

    .line 151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080299

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08029b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080298

    new-instance v3, Lcom/mediatek/engineermode/bluetooth/BtList$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/bluetooth/BtList$1;-><init>(Lcom/mediatek/engineermode/bluetooth/BtList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 180
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mDoubleFlag:Z

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802c2

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802e6

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "EM/BTList"

    const-string v1, "BLE_Test_Mode item is selected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/BleTestMode;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mDoubleFlag:Z

    .line 223
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802b2

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802bf

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802c0

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802a9

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/BtChipInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802ae

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/BtRelayerModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0802d9

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/BtDebugFeatureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f080657

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/bluetooth/BtClockSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/bluetooth/BtList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BtList;->mDoubleFlag:Z

    .line 135
    return-void
.end method
