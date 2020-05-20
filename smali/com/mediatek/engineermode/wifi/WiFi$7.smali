.class Lcom/mediatek/engineermode/wifi/WiFi$7;
.super Ljava/lang/Object;
.source "WiFi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFi;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFi;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFi;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFi$7;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi$7;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/WiFi;->finish()V

    .line 217
    return-void
.end method
