.class public Lcom/mediatek/engineermode/EngineerModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EngineerModeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/SECRET_CODE"


# instance fields
.field private final mEmUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const-string v0, "android_secret_code://3646633"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerModeReceiver;->mEmUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, "EM/SECRET_CODE"

    const-string v3, "Null action"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "EM/SECRET_CODE"

    const-string v3, "getIntent success in if"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/mediatek/engineermode/EngineerModeReceiver;->mEmUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/engineermode/EngineerMode;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intentEm":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-string v2, "EM/SECRET_CODE"

    const-string v3, "Before start EM activity"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    .end local v0    # "intentEm":Landroid/content/Intent;
    :cond_1
    const-string v2, "EM/SECRET_CODE"

    const-string v3, "No matched URI!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v2, "EM/SECRET_CODE"

    const-string v3, "Not SECRET_CODE_ACTION!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
