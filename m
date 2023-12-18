Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96A1BC46CCD
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEreNeHnv5ssBrVji2MRO+ybT9mDIoEmg/XbYsryc4s=; b=gNQTmvm9ntUmwM
	9Hc9+gVKd/fDf5LaDaxUHKSgWpqtsEQgg7np1LMJwEKSWzIID60xF42todO+id/PTeqvM2Uypqoj4
	Y+xc2cR9ZQGukTGJ6inY2zjqkrYisaUeFGmSvmo20K4pVgDm830OgzB+3apoMUXzOZ2vcWr2eykru
	zCq0Uoe5w9QBlI/V+c/eTd33oLwQZ1Wdght6Gbd504eA0aw09DZXe+LJaF0bEbp/f5Zi5/f5q6p84
	8PVe8q3JDTNRmzvYoVWE+GEwEs3v46ZYo0T1V5dZT/Lc1xpiLfoQ0JLU0Uw9QXSYN3xHQABH9C84y
	GPqdocS9tPJpapvyxAvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPV-00AYJt-0y;
	Mon, 18 Dec 2023 12:07:49 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPR-00AYH6-2B
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:07:47 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d307cf18fdso9632555ad.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901257; x=1703506057; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qSz/bHjwwlCoYKLoGELFqaslJ84OPxmUtiMSGQ7rw5w=;
        b=bHl+Kt6Y8e3fnCOLHSwSNCg+1XSMFbDw9HL44u6duMILxI5WW3CBww98bH6e4+X2W7
         Ul9K8xT6h+5xIf2IrDiyjKHEIaayl4Yg8AxWC7NiDWV3IQ1N8CJKgdfAi6+DN9rkvWDG
         xmrgJm6bito85yLYcYIuM+0YScoywIDLDXdNet+Q7CS7l0cMkC4GafcvIhftFpLHz1Cp
         WwypBzYt+HzVqJ+J4BQV8TVn8nl56Iwqqc6LnsqNToLM3xrAbohXqwH9wJh8t4KkZlBC
         g4VusVDXQzQFxdNV0+9BO5P1qmgemE7LyJKo9ybNRZS9sa+m0edpDxnv2sonB2sAgyxY
         6LVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901257; x=1703506057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qSz/bHjwwlCoYKLoGELFqaslJ84OPxmUtiMSGQ7rw5w=;
        b=n1RTqquOr1d2Sm3/fQYuTqjuloHbkneS7PvvcTGs9tFR3Q8Yn5IYTK5FXmHCVsvDO+
         diUFC5/waaRzcMn0rjjcctTnjfCpyuzsmar1Y4qoH4iUpwSuS2OXjEiNerQSk3Xk4bw0
         YFaPUebByxG0txo/QTs5Cp/w+fTFIWFk4O/vhwmLpM84ZmXD5bflBCTlgMEzNYuhTfyp
         Ry35aKeICx5Y/0aT7gaSmemSEmbNY3QvrsBtKTt0febiq5NLtEgVHOoSXtDA41BB60XM
         VD86daRY93dpQ1rzV6dlVHWzwohQNPjCMUtiRLAITcxIsCGI/Xm5Oe5+iXE60egO8VQQ
         ptVg==
X-Gm-Message-State: AOJu0Yy1RJbYqvE+iKLTPaPahZQxeIp4O4V1/Cb7oJwXwdQlGEokD3JM
	qjqhMxyFwXRp5XX9QltjL9gC
X-Google-Smtp-Source: AGHT+IG0t9oGeyfc7/rtJ11LwNl5za4dkimLF1SW6sE2PBnGyaGkf6vRgSEwEaOXIIyn5pgNgmTpCw==
X-Received: by 2002:a17:902:da87:b0:1d3:acef:6f4c with SMTP id j7-20020a170902da8700b001d3acef6f4cmr651234plx.21.1702901257374;
        Mon, 18 Dec 2023 04:07:37 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:37 -0800 (PST)
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
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 02/16] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all() API
Date: Mon, 18 Dec 2023 17:36:58 +0530
Message-Id: <20231218120712.16438-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040745_716400_12F7AF79 
X-CRM114-Status: GOOD (  17.19  )
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
