.class Lcom/mediatek/engineermode/cameranew/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/Camera;->toastOnUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;

.field final synthetic val$strId:I


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;I)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$4;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iput p2, p0, Lcom/mediatek/engineermode/cameranew/Camera$4;->val$strId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$4;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iget v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$4;->val$strId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1079
    return-void
.end method
