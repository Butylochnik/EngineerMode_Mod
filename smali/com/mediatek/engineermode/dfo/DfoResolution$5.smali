.class Lcom/mediatek/engineermode/dfo/DfoResolution$5;
.super Ljava/lang/Object;
.source "DfoResolution.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/dfo/DfoResolution;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$5;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$5;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->showDialog(I)V

    .line 255
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution$5;->this$0:Lcom/mediatek/engineermode/dfo/DfoResolution;

    invoke-static {v0}, Lcom/mediatek/engineermode/dfo/DfoResolution;->access$1500(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    .line 256
    return-void
.end method
