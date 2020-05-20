.class public Lcom/mediatek/engineermode/nfc/NfcNativeCallClass;
.super Ljava/lang/Object;
.source "NfcNativeCallClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_ndef;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare4K;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_Mifare1K;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_card_emulation_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tx_alwayson_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_uid_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_script_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_none_det_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_p2p_det_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_det_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;,
        Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;
    }
.end annotation


# static fields
.field public static final BM_CONNECTIVITY:I = 0x5

.field public static final BM_DN_DISABLE_P2P:I = 0x7

.field public static final BM_DN_DISCARD_CE:I = 0x6

.field public static final BM_DN_FELICA212:I = 0x2

.field public static final BM_DN_FELICA424:I = 0x3

.field public static final BM_DN_ISO1443_4A:I = 0x0

.field public static final BM_DN_ISO1443_4B:I = 0x1

.field public static final BM_DN_ISO15693:I = 0x4

.field public static final BM_DN_NFC_ACTIVE:I = 0x5

.field public static final BM_END_OF_TRANSACTION:I = 0x1

.field public static final BM_MODE_FELICA:I = 0x6

.field public static final BM_MODE_ISO1443_4A:I = 0x2

.field public static final BM_MODE_ISO1443_4B:I = 0x3

.field public static final BM_MODE_ISO15693:I = 0x7

.field public static final BM_MODE_JEWEL:I = 0x4

.field public static final BM_MODE_MIFARESTD:I = 0x1

.field public static final BM_MODE_MIFAREUL:I = 0x0

.field public static final BM_MODE_NFC:I = 0x5

.field public static final BM_RF_FIELD_OFF:I = 0x4

.field public static final BM_RF_FIELD_ON:I = 0x3

.field public static final BM_START_OF_TRANSACTION:I = 0x0

.field public static final BM_TRANSACTION:I = 0x2

.field public static final ISO15693_LEN:I = 0x4

.field public static final MIFARE1K_LEN:I = 0x4

.field public static final MIFARE1K_PAGE:I = 0x4

.field public static final MIFARE4K_LEN:I = 0x10

.field public static final MTK_NFC_DIS_NOTIF_DURATION:I = 0x1f4

.field public static final NDEF_DATA_LEN:I = 0x100

.field public static final NFC_HEADER_LENGTH:I = 0x8

.field private static final NUM_111:I = 0x6f

.field private static final NUM_15:I = 0xf

.field private static final NUM_16:I = 0x10

.field private static final NUM_222:I = 0xde

.field private static final NUM_333:I = 0x14d

.field private static final NUM_4:I = 0x4

.field private static final NUM_888:I = 0x378

.field private static final NUM_999:I = 0x3e7

.field public static final RAW_COMM_DATA_LEN:I = 0x100

.field public static final TAG:Ljava/lang/String; = "nfc"

.field public static final TAG_RAW_DATA_LEN:I = 0x100

.field public static final TAG_TYPE_DEFAULT:I = 0x0

.field public static final TAG_TYPE_FELICA:I = 0x7

.field public static final TAG_TYPE_ISO1443_4A:I = 0x3

.field public static final TAG_TYPE_ISO1443_4B:I = 0x4

.field public static final TAG_TYPE_ISO15693:I = 0x8

.field public static final TAG_TYPE_JEWWL:I = 0x5

.field public static final TAG_TYPE_MIFARE_STD:I = 0x2

.field public static final TAG_TYPE_MIFARE_UL:I = 0x1

.field public static final TAG_TYPE_NDEF:I = 0x9

.field public static final TAG_TYPE_NFC:I = 0x6

.field public static final UID_DATA_LEN:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "em_nfc_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deinitNfcDriver()V
.end method

.method public static native getDiscoveryNotif(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_dis_notif_response;
.end method

.method public static native getRegisterNotif(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_reg_notif_response;
.end method

.method public static native getSettings(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_setting_response;
.end method

.method public static native initNfcDriver()I
.end method

.method public static native readTag(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_tag_read_response;
.end method

.method public static native setSEOption(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_se_set_response;
.end method

.method public static native testEntry(Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_request;)Lcom/mediatek/engineermode/nfc/NfcNativeCallClass$nfc_test_response;
.end method
