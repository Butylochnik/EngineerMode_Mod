.class Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$2;
.super Ljava/lang/Object;
.source "NoSigRxTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->finish()V

    .line 205
    return-void
.end method
