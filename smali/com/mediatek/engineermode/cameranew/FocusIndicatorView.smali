.class public Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/mediatek/engineermode/cameranew/FocusIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->setDrawable(I)V

    .line 48
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f020006

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->setDrawable(I)V

    .line 38
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->setDrawable(I)V

    .line 43
    return-void
.end method
