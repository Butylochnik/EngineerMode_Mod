.class Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;
.super Ljava/lang/Object;
.source "LteNetworkInfoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkInfoPage"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public types:[I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "types"    # [I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->label:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/mediatek/engineermode/lte/LteNetworkInfoDetail$NetworkInfoPage;->types:[I

    .line 94
    return-void
.end method
