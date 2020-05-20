.class public Lcom/mediatek/engineermode/lte/UrcParser;
.super Ljava/lang/Object;
.source "UrcParser.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "em_lte_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getTypes(I)[I
.end method

.method public static native parse(I[C)[C
.end method

.method public static native size(I)I
.end method
