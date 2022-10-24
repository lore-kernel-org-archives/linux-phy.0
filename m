Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5450FA3743
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKhNoehso5vcA6131TPv2FcAt4nEJOTlrNBBxSsuk90=; b=C2ybXea01/ORJY
	tU37N6lmhHmcjjwf4INRC+Rytakx+JQ3SOK4Vg4PuktvJFw8DHIIMwoN/CxXTsv0nqawCHLlqbtfv
	BziHtA3Q/VvPPt04hRPKYU2vTpHe/R16Td/ZQe/Y4oCSeQ5gmJ5vB4FmUeAOVn8VUUeMIv3LiOeg3
	XiBpUjZgzTfgmAAj1LQua+0VbEf1l4Hm4nNY1Spy1AOBsHl012VB2K/WdifxJVQb3M6+5FZm4+v/5
	plgqeCPZ9BH8Tl9JdWgL3aCTESgS13NwC4OoxbyNFpcgY6vmvJhO3L5tjglqcfRRI6h+joakxZMlp
	EqQ/FDgyvzP0T22TKKIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL7-000GhO-8U; Mon, 24 Oct 2022 09:01:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL3-000Gdi-6D
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7B1B7610A4;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BC22C4FEBF;
	Mon, 24 Oct 2022 09:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602098;
	bh=uAsae8vn+6rxUI7yeq1aFl7/4iIeDVod4FR5wtZmmRI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=umcSX8tWKFKYP0M4tqzm57Tf2h6XAhW20S639wL/pvqoa/NxvOIz0TFkXijd9ddiN
	 WWNn9Bs7M5txKVXPJmfsn9aYrfAzFJLEC3VcTBB2X7UCn+1PbYxjDJAUznOWidDz/y
	 D/T5VsF7FSA21wKXsMG3X/Fargx0dcykaRUGfvvBpPDJPl6l729bQ+lYuIDzz88s3Z
	 Ci/6RNRPK1PHl/+vGOsXDtVpo1knMtgF+I90zoRwdRYTiikk8xh3C73KTWICEMx7IP
	 CTwAGzTVDN6NW+lq2CnP1PRgrYLlPFx8IFIyb9fwG9bARhaDeSIaipJvGgJZLVNpeh
	 z58F9CtolhPJQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKj-00056m-Sr; Mon, 24 Oct 2022 11:01:21 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 10/10] phy: qcom-qmp-ufs: add support for updated sc8280xp binding
Date: Mon, 24 Oct 2022 11:00:41 +0200
Message-Id: <20221024090041.19574-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020141_343521_557444F2 
X-CRM114-Status: GOOD (  20.75  )
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

Add support for the new SC8280XP binding.

Note that the binding does not try to describe every register subregion
and instead the driver holds the corresponding offsets.

Also note that the driver will continue to accept the old binding, at
least for the time being.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 90 ++++++++++++++++++++++---
 1 file changed, 80 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index bf5c1a6b9ca4..189103d1bd18 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -520,10 +520,21 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
+struct qmp_ufs_offsets {
+	u16 serdes;
+	u16 pcs;
+	u16 tx;
+	u16 rx;
+	u16 tx2;
+	u16 rx2;
+};
+
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	int lanes;
 
+	const struct qmp_ufs_offsets *offsets;
+
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
 	int serdes_tbl_num;
@@ -611,6 +622,15 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
+	.serdes		= 0,
+	.pcs		= 0xc00,
+	.tx		= 0x400,
+	.rx		= 0x600,
+	.tx2		= 0x800,
+	.rx2		= 0xa00,
+};
+
 static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 	.lanes			= 1,
 
@@ -632,6 +652,26 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 	.no_pcs_sw_reset	= true,
 };
 
+static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v5,
+
+	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
+	.tx_tbl			= sm8350_ufsphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
+	.rx_tbl			= sm8350_ufsphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
+	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.clk_list		= sdm845_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8150_ufsphy_regs_layout,
+};
+
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -1031,11 +1071,38 @@ static int qmp_ufs_parse_dt_legacy(struct qmp_ufs *qmp, struct device_node *np)
 	return 0;
 }
 
+static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
+{
+	struct platform_device *pdev = to_platform_device(qmp->dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	const struct qmp_ufs_offsets *offs = cfg->offsets;
+	void __iomem *base;
+
+	if (!offs)
+		return -EINVAL;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	qmp->serdes = base + offs->serdes;
+	qmp->pcs = base + offs->pcs;
+	qmp->tx = base + offs->tx;
+	qmp->rx = base + offs->rx;
+
+	if (cfg->lanes >= 2) {
+		qmp->tx2 = base + offs->tx2;
+		qmp->rx2 = base + offs->rx2;
+	}
+
+	return 0;
+}
+
 static int qmp_ufs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *child;
 	struct phy_provider *phy_provider;
+	struct device_node *np;
 	struct qmp_ufs *qmp;
 	int ret;
 
@@ -1057,15 +1124,18 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	child = of_get_next_available_child(dev->of_node, NULL);
-	if (!child)
-		return -EINVAL;
-
-	ret = qmp_ufs_parse_dt_legacy(qmp, child);
+	/* Check for legacy binding with child node. */
+	np = of_get_next_available_child(dev->of_node, NULL);
+	if (np) {
+		ret = qmp_ufs_parse_dt_legacy(qmp, np);
+	} else {
+		np = of_node_get(dev->of_node);
+		ret = qmp_ufs_parse_dt(qmp);
+	}
 	if (ret)
 		goto err_node_put;
 
-	qmp->phy = devm_phy_create(dev, child, &qcom_qmp_ufs_phy_ops);
+	qmp->phy = devm_phy_create(dev, np, &qcom_qmp_ufs_phy_ops);
 	if (IS_ERR(qmp->phy)) {
 		ret = PTR_ERR(qmp->phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
@@ -1074,14 +1144,14 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(qmp->phy, qmp);
 
-	of_node_put(child);
+	of_node_put(np);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	of_node_put(child);
+	of_node_put(np);
 	return ret;
 }
 
@@ -1097,7 +1167,7 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 		.data = &sm8150_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc8280xp-qmp-ufs-phy",
-		.data = &sm8350_ufsphy_cfg,
+		.data = &sc8280xp_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sdm845-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
