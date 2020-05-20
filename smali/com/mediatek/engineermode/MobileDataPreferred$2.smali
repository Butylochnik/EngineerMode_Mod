.class Lcom/mediatek/engineermode/MobileDataPreferred$2;
.super Ljava/lang/Object;
.source "MobileDataPreferred.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/MobileDataPreferred;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/MobileDataPreferred;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/MobileDataPreferred;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/engineermode/MobileDataPreferred$2;->this$0:Lcom/mediatek/engineermode/MobileDataPreferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/MobileDataPreferred$2;->this$0:Lcom/mediatek/engineermode/MobileDataPreferred;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/MobileDataPreferred;->access$100(Lcom/mediatek/engineermode/MobileDataPreferred;I)V

    .line 102
    return-void
.end method
