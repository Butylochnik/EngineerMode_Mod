.class Lcom/mediatek/engineermode/bluetooth/TestModeActivity$3;
.super Ljava/lang/Object;
.source "TestModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/TestModeActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$3;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TestModeActivity$3;->this$0:Lcom/mediatek/engineermode/bluetooth/TestModeActivity;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/TestModeActivity;->finish()V

    .line 247
    return-void
.end method
