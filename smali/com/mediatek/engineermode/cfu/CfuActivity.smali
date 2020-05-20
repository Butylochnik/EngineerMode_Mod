.class public Lcom/mediatek/engineermode/cfu/CfuActivity;
.super Landroid/app/Activity;
.source "CfuActivity.java"


# static fields
.field private static final CHECK_BTN_ERROR:I = 0xa

.field private static final FORE_CMD:Ljava/lang/String; = "+ESSP:"

.field private static final QUERY:I = 0x1

.field private static final SET_DEFAULT:I = 0x2

.field private static final SET_OFF:I = 0x4

.field private static final SET_ON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CFU"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioBtnDe:Landroid/widget/RadioButton;

.field private mRadioBtnOff:Landroid/widget/RadioButton;

.field private mRadioBtnOn:Landroid/widget/RadioButton;

.field private final mResponseHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/mediatek/engineermode/cfu/CfuActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cfu/CfuActivity$1;-><init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mResponseHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cfu/CfuActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->createDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cfu/CfuActivity;I)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cfu/CfuActivity;->createCmd(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cfu/CfuActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mResponseHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cfu/CfuActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/cfu/CfuActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private createCmd(I)[Ljava/lang/String;
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 201
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 202
    .local v0, "cmd":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 220
    const-string v1, "AT+ESSP?"

    aput-object v1, v0, v4

    .line 221
    const-string v1, "+ESSP"

    aput-object v1, v0, v2

    .line 224
    :goto_0
    const-string v1, "CFU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0

    .line 204
    :pswitch_0
    const-string v1, "AT+ESSP?"

    aput-object v1, v0, v4

    .line 205
    const-string v1, "+ESSP"

    aput-object v1, v0, v2

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v1, "AT+ESSP=0"

    aput-object v1, v0, v4

    .line 209
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 212
    :pswitch_2
    const-string v1, "AT+ESSP=2"

    aput-object v1, v0, v4

    .line 213
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 216
    :pswitch_3
    const-string v1, "AT+ESSP=1"

    aput-object v1, v0, v4

    .line 217
    const-string v1, ""

    aput-object v1, v0, v2

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :pswitch_1
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Set Default Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 238
    :pswitch_2
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Open Query Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 242
    :pswitch_3
    const-string v1, "Set Failed!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Close Query Status Failed!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 246
    :pswitch_4
    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please chose a item!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->setContentView(I)V

    .line 152
    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    .line 153
    const v2, 0x7f0b00ce

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    .line 154
    const v2, 0x7f0b00cf

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    .line 155
    const v2, 0x7f0b00d0

    invoke-virtual {p0, v2}, Lcom/mediatek/engineermode/cfu/CfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 157
    .local v0, "buttonOk":Landroid/widget/Button;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 159
    const-string v2, "persist.ril.cfu.querytype"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "cfuSetting":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnDe:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 171
    :goto_0
    new-instance v2, Lcom/mediatek/engineermode/cfu/CfuActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/cfu/CfuActivity$2;-><init>(Lcom/mediatek/engineermode/cfu/CfuActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void

    .line 162
    :cond_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOff:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/mediatek/engineermode/cfu/CfuActivity;->mRadioBtnOn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 167
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
