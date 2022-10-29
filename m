Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58AB5C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ4Mpnv5bsRbONnfV06337vPWj8XoPFACASfBYwuOfg=; b=HWy1APCxv5vYS2
	/kYD4/o3q7ExRLRlzLWvEjyoyEaEElhPs7SlgUXutPH8O4t7oJBgLSl0GS+umbjdLaicXnRF99y+C
	cAVGG6b2OB3LYhk+7mP+iZGBoyMQ+NO5XMQ9cUSqceZYyLZBHnGinorPn97I3QTbsahUqgc8qlI39
	6jAmW/f4E/j3cOB14vnSgKztwEBHeQFA5Lgj8jBL+UNVuTvXu7OD65yixOZnauLJfgvlqc4NNav1F
	Wq1PZ3pmAzGkwwzrWHWt1rysIhF8brBjZkCfsmr6devGUerl9ZYsDAjEuewU1v2cbfjGWWEB7JWVP
	WixjvucBs82OHuddDi4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomeC-006UBy-Pt; Sat, 29 Oct 2022 14:17:16 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oome9-006UAx-MG
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:17:15 +0000
Received: by mail-pf1-x435.google.com with SMTP id m6so7138754pfb.0
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UOMm8BaOvfEJM7NF+uICaNkya2n9h9Ru0iVe5CxvYeE=;
        b=Cu+M3uSkfljr/GyQWX3BrmFRiA0yhF3F9il+A4srLwErnN2elI4aKL9n4tbUbhmwSj
         tVb3J86z32atPqD70Nn8G/KGwgChE/T2hx6FIsuZx7orKCz1ozBogB4d7wM0IFVyoJT6
         iwurglsAIT+Wsbpx8p1bIdnT5rnB6XOneVPKwrVumQx4jqI0OyDYGMsT65zNB1oH5Rnq
         Q2eIKlxbAXpe21Q5GA+idVBZUhV8ZxSaCxSYdBFdwglMN+aNuP4SQVHz1EmUMEpJ2mR3
         xF6BSzDuuH2LFZL0L4KxGMxIuw4EjrjA8g4zK2UUXyEk4QjZ0T1TYPefZmt0v5yfrT/X
         s3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UOMm8BaOvfEJM7NF+uICaNkya2n9h9Ru0iVe5CxvYeE=;
        b=bixwdQkmUNfvh4M7T/g699YJ/exLhSE87mP/8LB5oY7egXe0RFcHmU1eFVL9Q0/cwv
         FXWlzjsYzjsPcDYWtznuU8Xzg0N1RXvvDtJ6t+3wFy4yrw9GnoAkA0qBPaqQC5fYS8do
         wiWrirH5ELolItoAE4Alw0EMdr/qQW6yVoC8WKiHrc1by7xfYoEFvC+YoMA43QxvWzqr
         uSRYhwMWaQJxcRVqJsuSoVHLFGNGhV3lC51Z8bOwUpMXreLR8T3siSKoHs/ndHmFfx08
         qEEDxaoJafnegCxVFnBQlDcQtcz2ICXMGdkfYQbMnhY2ygDd55Hx3Fpr/bmJdGI/xEM1
         uFmA==
X-Gm-Message-State: ACrzQf2dmOb0kZUO3KdZWzkQydo+rlbDZ2m3s3bEwmaM43mRr+317z26
	L8oa9eB2oL/s4DiBUYK132eR
X-Google-Smtp-Source: AMsMyM64kF9+lfMT4V+UR8pVmKJSCyWeW2UbFSOLCQIIsgyRLbEnp0+/dD9je70O9TUKRj17uYSBJw==
X-Received: by 2002:a63:8942:0:b0:46e:c02e:2eb5 with SMTP id v63-20020a638942000000b0046ec02e2eb5mr4212687pgd.141.1667053030836;
        Sat, 29 Oct 2022 07:17:10 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:17:09 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 05/15] phy: qcom-qmp-ufs: Move HS Rate B register setting to tables_hs_b
Date: Sat, 29 Oct 2022 19:46:23 +0530
Message-Id: <20221029141633.295650-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071713_749156_99BE0E89 
X-CRM114-Status: GOOD (  10.36  )
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

Since now there is support for configuring the HS Rate B mode properly,
let's move the register setting to tables_hs_b struct for all SoCs.

This allows the PHY to be configured in Rate A initially and then in
Rate B if requested by the UFS driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 32 +++++++++++++++++++++----
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index fa7457c0202b..c55c85a8f95e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -228,8 +228,9 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL1, 0xff),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL2, 0x00),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm6115_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -305,8 +306,9 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE2_MODE1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE1, 0x32),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE1, 0x0f),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sdm845_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -371,8 +373,9 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -492,8 +495,9 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x1e),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8350_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -746,6 +750,10 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 		.pcs		= sdm845_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sdm845_ufsphy_pcs),
 	},
+	.tables_hs_b = {
+		.serdes		= sdm845_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -772,6 +780,10 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 		.pcs		= sm6115_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm6115_ufsphy_pcs),
 	},
+	.tables_hs_b = {
+		.serdes		= sm6115_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -797,6 +809,10 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 		.pcs		= sm8150_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_pcs),
 	},
+	.tables_hs_b = {
+		.serdes		= sm8150_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -829,6 +845,10 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 		.pcs		= sm8250_ufsphy_hs_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8250_ufsphy_hs_g4_pcs),
 	},
+	.tables_hs_b = {
+		.serdes		= sm8150_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -853,6 +873,10 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tables_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
