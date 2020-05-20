.class public Lcom/mediatek/engineermode/lte/CommandTool;
.super Landroid/preference/PreferenceActivity;
.source "CommandTool.java"


# static fields
.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "/config.txt"

.field private static final DIALOG_CHOOSE_CONFIG_FILE:I = 0x1

.field private static final PREF:Ljava/lang/String; = "command_tool"

.field private static final PREF_KEY:Ljava/lang/String; = "config_file"

.field private static final TAG:Ljava/lang/String; = "Tool"


# instance fields
.field private mConfigFilePath:Ljava/lang/String;

.field private mTestItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mTestItems:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/lte/CommandTool;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandTool;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/lte/CommandTool;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandTool;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/lte/CommandTool;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/CommandTool;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/CommandTool;->parse()V

    return-void
.end method

.method private parse()V
    .locals 6

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v4}, Lcom/mediatek/engineermode/lte/CommandTool;->doParse(Ljava/io/BufferedReader;)V

    .line 129
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 137
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v4, "Config file not found."

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/lte/CommandTool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const-string v4, "Read config file error."

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/lte/CommandTool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 130
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mToast:Landroid/widget/Toast;

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    return-void
.end method


# virtual methods
.method public doParse(Ljava/io/BufferedReader;)V
    .locals 5
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/CommandTool;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 141
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mTestItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 143
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "category":Landroid/preference/PreferenceCategory;
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 145
    .local v3, "pref":Landroid/preference/Preference;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 149
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v0    # "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/CommandTool;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v1    # "cmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/preference/Preference;

    .end local v3    # "pref":Landroid/preference/Preference;
    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 158
    .restart local v3    # "pref":Landroid/preference/Preference;
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    iget-object v4, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mTestItems:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/CommandTool;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 52
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/lte/CommandTool;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/engineermode/lte/CommandToolService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/lte/CommandTool;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const-string v2, "command_tool"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/engineermode/lte/CommandTool;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "config_file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/config.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 89
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 90
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "input":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v1, Lcom/mediatek/engineermode/lte/CommandTool$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/engineermode/lte/CommandTool$1;-><init>(Lcom/mediatek/engineermode/lte/CommandTool;Landroid/widget/EditText;)V

    .line 105
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Config file:"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 111
    .end local v0    # "input":Landroid/widget/EditText;
    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    const-string v0, "Choose config file"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 73
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "aMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 80
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/lte/CommandTool;->showDialog(I)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 172
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/lte/CommandToolEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "commands"

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/CommandTool;->mTestItems:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/lte/CommandTool;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/CommandTool;->parse()V

    .line 68
    return-void
.end method
