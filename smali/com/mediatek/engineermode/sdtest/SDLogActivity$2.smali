.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$2;
.super Ljava/lang/Object;
.source "SDLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity;->checkSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$2;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 295
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$2;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->finish()V

    .line 296
    return-void
.end method
