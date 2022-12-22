Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F061C001B2
	for <linux-phy@archiver.kernel.org>; Thu, 22 Dec 2022 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m56RP/UdOoKd+avSf17gDshvqdUdCpgBb2HwTe0DejM=; b=GczICOnQVEfOmo
	+TrBDGvCOI4rEZDllZ/w33oKO3CBA3PjMrywDqOY+0N5iZ59n9Ur8aqYU/KC9XcZNnm3ad05XiYJp
	VM/fwmtbglryrwjurXc5/TiAJXNxmTlbvL4xE5enjacxnBmyEpbVCIt6KMbuPgb2eyjSuX5mV8swC
	QYY45LgJP6y1aL/W7M91W6L4bjKRz5cO39+bj5mXv/7P8BwGHGixxyloZDjrW5tReVvCz3db8+YCA
	I4Rq4J4EHEI7n6Sma++gyz7OdVmq4ieRBKg+7krWOilG8Fl1QxyLm8uKhiTmjoOFz7JlWXNVAkpE8
	mOCebYFeLETLzwGMzrew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYW-00CxfC-Pe; Thu, 22 Dec 2022 14:28:20 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIn-00CohH-3D
	for linux-phy@lists.infradead.org; Thu, 22 Dec 2022 14:12:07 +0000
Received: by mail-pj1-x102b.google.com with SMTP id gv5-20020a17090b11c500b00223f01c73c3so5536259pjb.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Dec 2022 06:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MpcXJGSyqRlr7fhEd4gMKWmtvZ0rRDcJZQOouCyYhys=;
        b=b/Tql6fiOTh5vy5Yb4PGvuY5QhOA1FSNwjLXCBgwpWUQPKRufn0Ll72r/zxUuRsjrx
         B7vtHaByzg5BLEeksKF3xq06L5Pfa4kYELbcWnfjLxGDBCVgLxqv3GJ924kcE2xzG0V3
         G7qEOMYuYBthptLQ/giwibwfo+PKgqw+Pt9UjL1a6ADt02Zq3Sswdnlbs6mn5V4omj2A
         jhGFPsSAVOCb7VYC0tPTFhNE/+N4Kdo9R/8DSFmUuYQtIVBMdv5lZnJFruZgIuoHrmxS
         IklVSEa2CLVfJc0+HBp1DTxJ71KzAQxnoghbvBhTEQsN3FkON4s3dxLRc0J922DFtp6h
         Ck0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MpcXJGSyqRlr7fhEd4gMKWmtvZ0rRDcJZQOouCyYhys=;
        b=U6wHjOWggOrRle4mddHYFZoW8Bkdr90AdQHIM5qwWqeoOmHU2MUDpTobozmPtr6Y8s
         RZleCgQXmLxLKlglzlS8lFHNBK10JyhcAGySdBJd3MLKfCsUPR2pfbmKoI8H/okqaV0B
         NSsmjcZbEq4o3l2hVRq4ZjjqOfOfqANoMEY39vLSFPfpMnXqVrnAF6kPB3tEmf6oC2y1
         5mzhkT29DKD34/7B1SD3nHuPr7IToZXOzNGuDTqyaqnDpbEfgywj04oHl6nFPHpj8Qna
         8EUdAlXFxCnloMXoN42qgGa9WRoseM2cgqyBExcE/0GFwJcWAh9Rqz3VO+KupitbbCcw
         YDwg==
X-Gm-Message-State: AFqh2krjwpmhKeN5UoGqtNS+XynXFb7T0zZlKR2kFUZ5HNNJWbn990lc
	jM2kq9YlTrrT0azpgH34HBhM
X-Google-Smtp-Source: AMrXdXtYaFa5HrouRzcaM3MkDPYWYge7YqZwhmt6PgvcnexDoxXxfI4C0yEZgNoOlYAuBfql1NpjOw==
X-Received: by 2002:a05:6a20:4a05:b0:a4:cb40:cf2e with SMTP id fr5-20020a056a204a0500b000a4cb40cf2emr6323560pzb.47.1671718321692;
        Thu, 22 Dec 2022 06:12:01 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.177])
        by smtp.gmail.com with ESMTPSA id f8-20020a655908000000b0047829d1b8eesm832031pgu.31.2022.12.22.06.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 06:12:00 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 15/23] scsi: ufs: ufs-qcom: Use bitfields where appropriate
Date: Thu, 22 Dec 2022 19:39:53 +0530
Message-Id: <20221222141001.54849-16-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061205_276278_B590B91A 
X-CRM114-Status: GOOD (  11.00  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Use bitfield macros where appropriate to simplify the driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Asutosh Das <quic_asutoshd@quicinc.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # Qdrive3/sa8540p-ride
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/ufs/host/ufs-qcom.h | 61 +++++++++++++++++--------------------
 1 file changed, 28 insertions(+), 33 deletions(-)

diff --git a/drivers/ufs/host/ufs-qcom.h b/drivers/ufs/host/ufs-qcom.h
index 44466a395bb5..9d96ac71b27f 100644
--- a/drivers/ufs/host/ufs-qcom.h
+++ b/drivers/ufs/host/ufs-qcom.h
@@ -17,12 +17,9 @@
 #define DEFAULT_CLK_RATE_HZ     1000000
 #define BUS_VECTOR_NAME_LEN     32
 
-#define UFS_HW_VER_MAJOR_SHFT	(28)
-#define UFS_HW_VER_MAJOR_MASK	(0x000F << UFS_HW_VER_MAJOR_SHFT)
-#define UFS_HW_VER_MINOR_SHFT	(16)
-#define UFS_HW_VER_MINOR_MASK	(0x0FFF << UFS_HW_VER_MINOR_SHFT)
-#define UFS_HW_VER_STEP_SHFT	(0)
-#define UFS_HW_VER_STEP_MASK	(0xFFFF << UFS_HW_VER_STEP_SHFT)
+#define UFS_HW_VER_MAJOR_MASK	GENMASK(31, 28)
+#define UFS_HW_VER_MINOR_MASK	GENMASK(27, 16)
+#define UFS_HW_VER_STEP_MASK	GENMASK(15, 0)
 
 /* vendor specific pre-defined parameters */
 #define SLOW 1
@@ -76,24 +73,28 @@ enum {
 #define UFS_CNTLR_3_x_x_VEN_REGS_OFFSET(x)	(0x400 + x)
 
 /* bit definitions for REG_UFS_CFG1 register */
-#define QUNIPRO_SEL		0x1
-#define UTP_DBG_RAMS_EN		0x20000
+#define QUNIPRO_SEL		BIT(0)
+#define UFS_PHY_SOFT_RESET	BIT(1)
+#define UTP_DBG_RAMS_EN		BIT(17)
 #define TEST_BUS_EN		BIT(18)
 #define TEST_BUS_SEL		GENMASK(22, 19)
 #define UFS_REG_TEST_BUS_EN	BIT(30)
 
+#define UFS_PHY_RESET_ENABLE	1
+#define UFS_PHY_RESET_DISABLE	0
+
 /* bit definitions for REG_UFS_CFG2 register */
-#define UAWM_HW_CGC_EN		(1 << 0)
-#define UARM_HW_CGC_EN		(1 << 1)
-#define TXUC_HW_CGC_EN		(1 << 2)
-#define RXUC_HW_CGC_EN		(1 << 3)
-#define DFC_HW_CGC_EN		(1 << 4)
-#define TRLUT_HW_CGC_EN		(1 << 5)
-#define TMRLUT_HW_CGC_EN	(1 << 6)
-#define OCSC_HW_CGC_EN		(1 << 7)
+#define UAWM_HW_CGC_EN		BIT(0)
+#define UARM_HW_CGC_EN		BIT(1)
+#define TXUC_HW_CGC_EN		BIT(2)
+#define RXUC_HW_CGC_EN		BIT(3)
+#define DFC_HW_CGC_EN		BIT(4)
+#define TRLUT_HW_CGC_EN		BIT(5)
+#define TMRLUT_HW_CGC_EN	BIT(6)
+#define OCSC_HW_CGC_EN		BIT(7)
 
 /* bit definition for UFS_UFS_TEST_BUS_CTRL_n */
-#define TEST_BUS_SUB_SEL_MASK	0x1F  /* All XXX_SEL fields are 5 bits wide */
+#define TEST_BUS_SUB_SEL_MASK	GENMASK(4, 0)  /* All XXX_SEL fields are 5 bits wide */
 
 #define REG_UFS_CFG2_CGC_EN_ALL (UAWM_HW_CGC_EN | UARM_HW_CGC_EN |\
 				 TXUC_HW_CGC_EN | RXUC_HW_CGC_EN |\
@@ -101,17 +102,11 @@ enum {
 				 TMRLUT_HW_CGC_EN | OCSC_HW_CGC_EN)
 
 /* bit offset */
-enum {
-	OFFSET_UFS_PHY_SOFT_RESET           = 1,
-	OFFSET_CLK_NS_REG                   = 10,
-};
+#define OFFSET_CLK_NS_REG		0xa
 
 /* bit masks */
-enum {
-	MASK_UFS_PHY_SOFT_RESET             = 0x2,
-	MASK_TX_SYMBOL_CLK_1US_REG          = 0x3FF,
-	MASK_CLK_NS_REG                     = 0xFFFC00,
-};
+#define MASK_TX_SYMBOL_CLK_1US_REG	GENMASK(9, 0)
+#define MASK_CLK_NS_REG			GENMASK(23, 10)
 
 /* QCOM UFS debug print bit mask */
 #define UFS_QCOM_DBG_PRINT_REGS_EN	BIT(0)
@@ -135,15 +130,15 @@ ufs_qcom_get_controller_revision(struct ufs_hba *hba,
 {
 	u32 ver = ufshcd_readl(hba, REG_UFS_HW_VERSION);
 
-	*major = (ver & UFS_HW_VER_MAJOR_MASK) >> UFS_HW_VER_MAJOR_SHFT;
-	*minor = (ver & UFS_HW_VER_MINOR_MASK) >> UFS_HW_VER_MINOR_SHFT;
-	*step = (ver & UFS_HW_VER_STEP_MASK) >> UFS_HW_VER_STEP_SHFT;
+	*major = FIELD_GET(UFS_HW_VER_MAJOR_MASK, ver);
+	*minor = FIELD_GET(UFS_HW_VER_MINOR_MASK, ver);
+	*step = FIELD_GET(UFS_HW_VER_STEP_MASK, ver);
 };
 
 static inline void ufs_qcom_assert_reset(struct ufs_hba *hba)
 {
-	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET,
-			1 << OFFSET_UFS_PHY_SOFT_RESET, REG_UFS_CFG1);
+	ufshcd_rmwl(hba, UFS_PHY_SOFT_RESET, FIELD_PREP(UFS_PHY_SOFT_RESET, UFS_PHY_RESET_ENABLE),
+		    REG_UFS_CFG1);
 
 	/*
 	 * Make sure assertion of ufs phy reset is written to
@@ -154,8 +149,8 @@ static inline void ufs_qcom_assert_reset(struct ufs_hba *hba)
 
 static inline void ufs_qcom_deassert_reset(struct ufs_hba *hba)
 {
-	ufshcd_rmwl(hba, MASK_UFS_PHY_SOFT_RESET,
-			0 << OFFSET_UFS_PHY_SOFT_RESET, REG_UFS_CFG1);
+	ufshcd_rmwl(hba, UFS_PHY_SOFT_RESET, FIELD_PREP(UFS_PHY_SOFT_RESET, UFS_PHY_RESET_DISABLE),
+		    REG_UFS_CFG1);
 
 	/*
 	 * Make sure de-assertion of ufs phy reset is written to
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
