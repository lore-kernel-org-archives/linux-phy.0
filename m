Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE8DDC636F8
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewB4IDkycz3Zeikh/Pow2BHmpvPdDN9wIaNhM64jrK8=; b=oFeHHK3ZJeGo2h
	K0irrKsRl//8Oms8dF9xErHamI4+TiS33Ab/x3/VM9aJRySfkVy3ZA3d8SJLntl2so97cADo7pkXc
	t34NtQ68JRBX4WlWc18vhjsx707deduha7aoMD9dcj0pa+NLsEB4d60xaad+HexGT2bhwW+Wp1Jt6
	FN9nw8JIpmRNamJ5MSlqMThrScG4sSSfzf1ogBwaoF0zB5HmwzNE/idjbbaV4tIDBNdYVK0YFPO/S
	ogAbZWCOd7zMiOgbw95ILN0GtJapj6mAE/GhflP4Vb24Mz4VcmJ0AFxqbcAMydXlqsLcccgrq37Tw
	KlrGwFZ3KtJ/0SOf7ExA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc2-0099Ge-3u; Thu, 01 Dec 2022 17:44:42 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nbk-0098yk-4Z
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:44:25 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 62so2256072pgb.13
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VokxVeiGlk4/WOivaM2OMRYtiSd+zd4jyq/WMTsU5T8=;
        b=qur3pKxXkUeqCfjCdWbCjXcSxBKKB3V0dVqMWVmW7M6g1OOyl7Mki2jQAmNX/0Voqw
         R6KxNsvzY9hbI4Li7g+M61ivU3/snLSAita6hYQ6B/0CkEa4F9TGqV3y4YtcL9YYDy6N
         nppB3ROKUlO7IYawhnSYWMfPbS3xdKj19v4goI7Oo+qjktqtUpu5GmiK1OajhvJnLklu
         wqSXEHAWv0DhQ67Yt91d697VfGvLnMpf9KM9dGmUl25RzbdgzGzO0J4yOhuv9yAgjrvV
         AsGxzd1YiJWwgDdUM8JDLnwGVt+QWXktmJSWvMyGdTu8F8ASOR7Hsn8lkGl3d3FMoTV3
         R/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VokxVeiGlk4/WOivaM2OMRYtiSd+zd4jyq/WMTsU5T8=;
        b=BvFN7SVPT5vbGgHK70VMtdAgpbVQ+gczge+qV/O9tSpxOaC5EFksc25CrD6pflKGB6
         6SZQYxe/K2o9LZzHC6xHxVyh+UdwNUsCT1xTXy//7uRT8ynRhUcXhtk57ZAxLLZD078K
         JRTd0TGQvAsTNsUN3u3sDAQRQ+ajxLKMdm3bS6ZQzXIPjVyhTZRhPAU34OtYhilFr3Pd
         OkTplOqBxzrILiDjAcZ4esK3jM02AxvjqnBW+YDY7WxrymuNJxLghexRnwViA1FyoK5l
         hGh46TSXH9lFbjyi5It77cIQV6y0l7AxIln3xA7ZxgGjNXHQA2gumYzE7PP2MH0JrKKa
         3VnA==
X-Gm-Message-State: ANoB5plwxaoguPSeb0KJfHx4bR07Oe9h5f+tC8izM2UcuCgW0pc6n0jy
	pFZnWYckvYBEkc/ZMtk0yW6T
X-Google-Smtp-Source: AA0mqf5zOpNVAUo4EYpAHKlqDCMO+RGnpY0uHvo8MxKKhHGMkaXaBFiW0Qd1KLco8dll01ZaWAIkxw==
X-Received: by 2002:a63:a61:0:b0:478:2d2c:6e82 with SMTP id z33-20020a630a61000000b004782d2c6e82mr16478070pgk.136.1669916663657;
        Thu, 01 Dec 2022 09:44:23 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:44:22 -0800 (PST)
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
Subject: [PATCH v4 06/23] phy: qcom-qmp-ufs: Move HS Rate B register setting to tbls_hs_b
Date: Thu,  1 Dec 2022 23:13:11 +0530
Message-Id: <20221201174328.870152-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094424_385119_BC695FA6 
X-CRM114-Status: GOOD (  10.29  )
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
let's move the register setting to tbls_hs_b struct for all SoCs.

This allows the PHY to be configured in Rate A initially and then in
Rate B if requested by the UFS driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 37 +++++++++++++++++++++----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 82be9b754e8e..97d0baa9bac3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -214,8 +214,9 @@ static const struct qmp_phy_init_tbl sm6115_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL1, 0xff),
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_INITVAL2, 0x00),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm6115_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -291,8 +292,9 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE2_MODE1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP1_MODE1, 0x32),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_LOCK_CMP2_MODE1, 0x0f),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sdm845_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
 };
 
@@ -357,8 +359,9 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE1, 0x0f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -406,7 +409,6 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_rx[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
 	QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
-
 };
 
 static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
@@ -444,8 +446,9 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x1e),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
+};
 
-	/* Rate B */
+static const struct qmp_phy_init_tbl sm8350_ufsphy_hs_b_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_VCO_TUNE_MAP, 0x06),
 };
 
@@ -679,6 +682,10 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -699,6 +706,10 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 		.pcs		= sdm845_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sdm845_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sdm845_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -721,6 +732,10 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 		.pcs		= sm6115_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm6115_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm6115_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -743,6 +758,10 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 		.pcs		= sm8150_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8150_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -763,6 +782,10 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sdm845_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -783,6 +806,10 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
 	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
 	.clk_list		= sm8450_ufs_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
