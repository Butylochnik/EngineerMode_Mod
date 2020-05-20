.class public Lcom/mediatek/engineermode/nfc/NfcRespMap;
.super Ljava/lang/Object;
.source "NfcRespMap.java"


# static fields
.field public static final KEY_SETTINGS:Ljava/lang/String; = "nfc.settings"

.field public static final KEY_SS_P2P_TARGET_DECT:Ljava/lang/String; = "nfc.software_stack.p2p_dect"

.field public static final KEY_SS_REGISTER_NOTIF:Ljava/lang/String; = "nfc.software_stack.reg_notif"

.field public static final KEY_SS_SCAN_COMPLETE:Ljava/lang/String; = "nfc.software_stack.scan_complete"

.field public static final KEY_SS_TAG_DECT:Ljava/lang/String; = "nfc.software_stack.normaltag_dect"

.field private static volatile sRespMap:Lcom/mediatek/engineermode/nfc/NfcRespMap;


# instance fields
.field private final mContainer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcRespMap;-><init>()V

    sput-object v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->sRespMap:Lcom/mediatek/engineermode/nfc/NfcRespMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->mContainer:Ljava/util/HashMap;

    return-void
.end method

.method public static getInst()Lcom/mediatek/engineermode/nfc/NfcRespMap;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->sRespMap:Lcom/mediatek/engineermode/nfc/NfcRespMap;

    if-nez v0, :cond_0

    .line 28
    const-class v1, Lcom/mediatek/engineermode/nfc/NfcRespMap;

    monitor-enter v1

    .line 29
    :try_start_0
    new-instance v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;

    invoke-direct {v0}, Lcom/mediatek/engineermode/nfc/NfcRespMap;-><init>()V

    sput-object v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->sRespMap:Lcom/mediatek/engineermode/nfc/NfcRespMap;

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    sget-object v0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->sRespMap:Lcom/mediatek/engineermode/nfc/NfcRespMap;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->mContainer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 40
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resp"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->mContainer:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public take(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/nfc/NfcRespMap;->mContainer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
