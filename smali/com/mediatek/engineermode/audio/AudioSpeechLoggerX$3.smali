.class Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$3;
.super Ljava/lang/Object;
.source "AudioSpeechLoggerX.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$3;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX$3;->this$0:Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/audio/AudioSpeechLoggerX;->finish()V

    .line 392
    return-void
.end method
