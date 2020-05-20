.class public Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
.super Landroid/app/Activity;
.source "LteNetworkInfoDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;
    }
.end annotation


# static fields
.field private static final FLAG_DATA_BIT:I = 0x8

.field private static final FLAG_OFFSET_BIT:I = 0x8

.field private static final FLAG_OR_DATA:I = 0xf7

.field private static final MSG_NW_INFO:I = 0x1

.field private static final MSG_NW_INFO_CLOSE:I = 0x4

.field private static final MSG_NW_INFO_OPEN:I = 0x3

.field private static final MSG_NW_INFO_URC:I = 0x2

.field private static final MSG_UPDATE_UI:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EM/LteNetworkInfo"

.field private static final TOTAL_TIMER:I = 0x3e8


# instance fields
.field private mATCmdHander:Landroid/os/Handler;

.field private mCurrentItem:I

.field private mFlag:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mInfo:Landroid/widget/TextView;

.field private mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

.field private mItemCount:I

.field private mNetworkInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageDown:Landroid/widget/Button;

.field private mPageUp:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimType:I

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUrcHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mToast:Landroid/widget/Toast;

    .line 79
    iput v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    .line 80
    iput v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    .line 82
    iput-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    iput-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mTimer:Ljava/util/Timer;

    .line 85
    iput v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mNetworkInfo:Ljava/util/HashMap;

    .line 98
    iput-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    .line 234
    new-instance v0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$2;-><init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mATCmdHander:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$3;-><init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mUrcHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$4;-><init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->sendATCommand([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mNetworkInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->showNetworkInfo()V

    return-void
.end method

.method private registerNetwork()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mSimType:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mUrcHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v5, v3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 206
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AT+EINFO?"

    aput-object v2, v0, v1

    const-string v1, "+EINFO"

    aput-object v1, v0, v4

    .line 207
    .local v0, "atCommand":[Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->sendATCommand([Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method private sendATCommand([Ljava/lang/String;I)V
    .locals 3
    .param p1, "atCommand"    # [Ljava/lang/String;
    .param p2, "msg"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mSimType:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 232
    return-void
.end method

.method private showNetworkInfo()V
    .locals 10

    .prologue
    .line 174
    iget-object v8, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    iget v9, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    aget-object v8, v8, v9

    iget-object v3, v8, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->label:Ljava/lang/String;

    .line 175
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    iget v9, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    aget-object v8, v8, v9

    iget-object v7, v8, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->types:[I

    .line 177
    .local v7, "types":[I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_3

    .line 179
    iget-object v8, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mNetworkInfo:Ljava/util/HashMap;

    aget v9, v7, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "raw":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    aget v9, v7, v0

    if-nez v4, :cond_0

    const/4 v8, 0x0

    :goto_1
    invoke-static {v9, v8}, Lcom/mediatek/engineermode/lte/UrcParser;->parse(I[C)[C

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([C)V

    .line 183
    .local v1, "info":Ljava/lang/String;
    const-string v8, "MMDC"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    if-ne v0, v8, :cond_1

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[4G]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "s":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_2
    const/4 v8, 0x5

    if-ge v2, v8, :cond_2

    .line 187
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v5    # "s":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    goto :goto_1

    .line 190
    .restart local v1    # "info":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "info":Ljava/lang/String;
    .end local v4    # "raw":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 308
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mToast:Landroid/widget/Toast;

    .line 309
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method

.method private unregisterNetwork()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mSimType:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mUrcHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 217
    iget v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    and-int/lit16 v1, v1, 0xf7

    iput v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    .line 218
    const-string v1, "EM/LteNetworkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The close flag is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 220
    .local v0, "atCloseCmd":[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EINFO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 222
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->sendATCommand([Ljava/lang/String;I)V

    .line 223
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageUp:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 153
    iget v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->updateUI()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageDown:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mCurrentItem:I

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->updateUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v3, 0x7f030057

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "pageLabels":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mSimType"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mSimType:I

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mChecked"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 110
    .local v0, "checked":[I
    if-eqz v0, :cond_1

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 112
    const/4 v3, 0x1

    aget v4, v0, v1

    if-ne v3, v4, :cond_0

    .line 113
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItem:[Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    iget v4, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    new-instance v5, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;

    aget-object v6, v2, v1

    invoke-static {v1}, Lcom/mediatek/engineermode/lte/UrcParser;->getTypes(I)[I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;-><init>(Ljava/lang/String;[I)V

    aput-object v5, v3, v4

    .line 114
    iget v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mItemCount:I

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->finish()V

    .line 128
    :goto_1
    return-void

    .line 122
    .restart local v1    # "i":I
    :cond_2
    const v3, 0x7f0b02e3

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mInfo:Landroid/widget/TextView;

    .line 123
    const v3, 0x7f0b02e1

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageUp:Landroid/widget/Button;

    .line 124
    const v3, 0x7f0b02e2

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageDown:Landroid/widget/Button;

    .line 125
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageUp:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mPageDown:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->registerNetwork()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->unregisterNetwork()V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->updateUI()V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    return-void
.end method

.method public updateUI()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 162
    invoke-direct {p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->showNetworkInfo()V

    .line 163
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 164
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mTimer:Ljava/util/Timer;

    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$1;-><init>(Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 171
    return-void
.end method
