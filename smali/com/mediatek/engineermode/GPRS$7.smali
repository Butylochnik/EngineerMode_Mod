.class Lcom/mediatek/engineermode/GPRS$7;
.super Ljava/lang/Object;
.source "GPRS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/GPRS;->rebootAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$7;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 778
    packed-switch p2, :pswitch_data_0

    .line 790
    :goto_0
    :pswitch_0
    return-void

    .line 780
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$7;->this$0:Lcom/mediatek/engineermode/GPRS;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/mediatek/engineermode/GPRS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 781
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$7;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/GPRS;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Restart Device..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
