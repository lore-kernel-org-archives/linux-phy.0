Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB470C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEreNeHnv5ssBrVji2MRO+ybT9mDIoEmg/XbYsryc4s=; b=aJ6is7JpA2jCqK
	Req0iiE+ufeITY7vObIW0R4rMNjKuPsS/wKiiLQ88AM88vB+3cHD4XNrW3LVl0s5Dfz+7EG6zqOQR
	0Yv6Jsl4hptkBS2xxs+NkJdc0M/s9ly/wttGaA4hkqODj9kswiFbDVu8nDewSmvP4sYUkPsEJHZ4X
	IgC94mxJ2U1k7FGrdX4WrIYIvrPPWcglNkQdhHCGiJ2pLDYfrq9A96p7iDzOlcV9xSZ9wnuiFXxpR
	R5v9iew9D0Vuof0JLziCMBTVHHK7mBVPE873b+ng/OFT9daDIH0jRNJtb795Uf76KZzPq2ItXU+0K
	KpPXCI+YP7bqozpym48Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkm-00HJZ1-29;
	Thu, 14 Dec 2023 09:11:36 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhkj-00HJXK-2Y
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:11:35 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-59067ccb090so5127749eaf.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545090; x=1703149890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qSz/bHjwwlCoYKLoGELFqaslJ84OPxmUtiMSGQ7rw5w=;
        b=q9dtxl77Gc2237mjnklnwHdvZ/53Lmxxu9xXYlIWuvAQm6wns5IMhVnsUxBe/wWxZH
         gv2NSqtxv0CL/hmYjjo7CFLjP/wjAndPFFHQPGacXrIw2h9mRwFpmXez4rWrWp/yy4+8
         KO7cqzX5GXr8Ep+rrW7fdIfaG+AP4xHpiP/yiw9pzAudOCIshod8zVUsI/Rap0rH7hoz
         CJimKFcEQdLS1yXLJygSmYfon04PasIxnSHB7bT0LmFak274Ih8L0XN/4lKjRSeIMDvR
         bTuu2JS/RecdR+3VUetJrnNq0WHMPDkZ0F+1cy1rEHr9rnXtQrN3hEnynel2eDV5Mue3
         QDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545090; x=1703149890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qSz/bHjwwlCoYKLoGELFqaslJ84OPxmUtiMSGQ7rw5w=;
        b=IXKJ4FZyznnVQ3BewfLXGy1hR30ApeP6b3wReNbhBCb/ZcHqngPiJsOSFJaLmhJFD9
         oOnqZiDhRIgpLMt50nOpBZgbF+Yrq3W4FbX+aARN0HdkyDrPRdLe6BX4FVXa6EKCs5Hq
         x4GewREd/vYsh3d3EpUPkvQl6I9L+4IjR/FkVBYTwdjhWNuAAiB6DOp6ht+PgJgwUT1D
         0+wLTb2lZ7XdVPYYU5dGTHmM8vSimMvXJMyUiPTJ7sa8i8Wdl8YANWwL+PcANdyruhFv
         Qlh5+vDwALf2dZxKKHPWMg8mSeKbFlS7bfvNp66hRC2Umq2yr163M/fGnycie1euOLWa
         UzUA==
X-Gm-Message-State: AOJu0YwCSvXNQSBwruyFHLUNvUMQjfiPr54KsX1spGa1KiORuRkp83kO
	dtqe640aamY/9cudJaGcLNmuYgoe7j3959kD4A==
X-Google-Smtp-Source: AGHT+IFUVL6JpWZGgVnmUsFb1wbwEnnw9CziVP9PAhqAu89DLKiGvOjnVwYt+11NDZPhiMjBcQeYqQ==
X-Received: by 2002:a05:6358:7504:b0:172:962c:cb2c with SMTP id k4-20020a056358750400b00172962ccb2cmr1593062rwg.14.1702545089664;
        Thu, 14 Dec 2023 01:11:29 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:29 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 02/16] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all() API
Date: Thu, 14 Dec 2023 14:40:47 +0530
Message-Id: <20231214091101.45713-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011133_828802_9FF57E29 
X-CRM114-Status: GOOD (  17.37  )
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

Device drivers should just rely on the clocks provided by the devicetree
and enable/disable them based on the requirement. There is no need to
validate the clocks provided by devicetree in the driver. That's the job
of DT schema.

So let's switch to devm_clk_bulk_get_all() API that just gets the clocks
provided by devicetree and remove hardcoded clocks info.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++----------------------
 1 file changed, 7 insertions(+), 54 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 514fa14df634..174b105fda82 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -837,9 +837,6 @@ struct qmp_phy_cfg {
 	/* Additional sequence for HS G4 */
 	const struct qmp_phy_cfg_tbls tbls_hs_g4;
 
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -865,6 +862,7 @@ struct qmp_ufs {
 	void __iomem *rx2;
 
 	struct clk_bulk_data *clks;
+	int num_clks;
 	struct regulator_bulk_data *vregs;
 	struct reset_control *ufs_reset;
 
@@ -897,20 +895,6 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 	readl(base + offset);
 }
 
-/* list of clocks required by phy */
-static const char * const msm8996_ufs_phy_clk_l[] = {
-	"ref",
-};
-
-/* the primary usb3 phy on sm8250 doesn't have a ref clock */
-static const char * const sm8450_ufs_phy_clk_l[] = {
-	"qref", "ref", "ref_aux",
-};
-
-static const char * const sdm845_ufs_phy_clk_l[] = {
-	"ref", "ref_aux",
-};
-
 /* list of regulators */
 static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
@@ -948,9 +932,6 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 		.rx_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
 	},
 
-	.clk_list		= msm8996_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_ufs_phy_clk_l),
-
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 
@@ -986,8 +967,6 @@ static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 	},
-	.clk_list		= sm8450_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
@@ -1020,8 +999,6 @@ static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
 		.pcs            = sm8150_ufsphy_hs_g4_pcs,
 		.pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 	},
-	.clk_list               = sm8450_ufs_phy_clk_l,
-	.num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list              = qmp_phy_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs                   = ufsphy_v4_regs_layout,
@@ -1054,8 +1031,6 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
@@ -1080,8 +1055,6 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 		.serdes		= sdm845_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v3_regs_layout,
@@ -1108,8 +1081,6 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 		.serdes		= sm6115_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_hs_b_serdes),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v2_regs_layout,
@@ -1136,8 +1107,6 @@ static const struct qmp_phy_cfg sm7150_ufsphy_cfg = {
 		.serdes		= sdm845_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v3_regs_layout,
@@ -1172,8 +1141,6 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 		.pcs		= sm8150_ufsphy_hs_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v4_regs_layout,
@@ -1206,8 +1173,6 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 		.pcs		= sm8150_ufsphy_hs_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v4_regs_layout,
@@ -1240,8 +1205,6 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
@@ -1274,8 +1237,6 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 		.pcs		= sm8350_ufsphy_g4_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 	},
-	.clk_list		= sm8450_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
@@ -1296,8 +1257,6 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
 		.pcs		= sm8550_ufsphy_pcs,
 		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
 	},
-	.clk_list		= sdm845_ufs_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,
@@ -1383,7 +1342,7 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
 		return ret;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
 	if (ret)
 		goto err_disable_regulators;
 
@@ -1403,7 +1362,7 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
 
 	reset_control_assert(qmp->ufs_reset);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -1573,19 +1532,13 @@ static int qmp_ufs_vreg_init(struct qmp_ufs *qmp)
 
 static int qmp_ufs_clk_init(struct qmp_ufs *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
-	int i;
 
-	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
-	if (!qmp->clks)
-		return -ENOMEM;
+	qmp->num_clks = devm_clk_bulk_get_all(dev, &qmp->clks);
+	if (qmp->num_clks < 0)
+		return qmp->num_clks;
 
-	for (i = 0; i < num; i++)
-		qmp->clks[i].id = cfg->clk_list[i];
-
-	return devm_clk_bulk_get(dev, num, qmp->clks);
+	return 0;
 }
 
 static void qmp_ufs_clk_release_provider(void *res)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
