.class Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;
.super Ljava/lang/Object;
.source "NfcMainPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/NfcMainPage;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/NfcMainPage;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcMainPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcMainPage$1;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcMainPage;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/hqanfc/NfcMainPage;->finish()V

    .line 80
    return-void
.end method
