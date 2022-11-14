Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FA9C3A5A7
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zB0IEDAXKODhn/wkgIl08H9Z39g+mVnX0U5xx0rgzF4=; b=MrodEsq2xDD9L9
	U1mxvOARqaRtL+KLARI6Jx6zkZPD3YdiVa6oiE9SeHUj7ERdWDHHa1J+T0wVHGHow9xssBnB0tu6W
	0DuCjXV/welzbSRh/DJP7/FD2s4LryNpjXfv7dDwQ2ZTMDq0N4DoCppfu5iLTAkF4cLUAMcUwg/zM
	jvcjE+H5yOjNhryOiYn+TyoMBUSrxIq8Yn8ZlgM9mFjNNxd28kdbueAtPWvHYjJpB6RrM1CS7BV3C
	hf64aUMUTX2rc5eE9tOLrVNfzWOy5sm2s71UvD8aRmaXUeIbd93WrYZaplpizfKEcgJDj6vq2wnwe
	9Z5/PYNRZlFgfPTqlhPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJT-000D70-8z; Mon, 14 Nov 2022 11:07:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Cqf-QD
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7018F6102A;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F494C4FF08;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=jhtHjMkGRNFv0HJnu2HoO5cINqCvlJtY6fSx3SmTivs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GouxSM7mL8jgDptvwwhGGAtitxLAFRESUX4PjeZa8NDdWBLkoY9HiJ25wkcPMfUQn
	 EgM8fK/O1hEeS6RaMHuk7ZIWVkgBXD6VJJTQMn6f2P60kC9l7QEewjK00aIqYy19QG
	 jcPbgjXa6X37oLPFJxdKoKcXC09IU+JvZwdSw3aTdxB9v8cW1yKREBGz4Npn9z1Kax
	 qmNLxCpSXonjHO2ykwgiYccvSFB0c4r3wEYILkiCgVYM1O+nU/CvNZA33G9h4700S6
	 7233W0mGlSN9FlHFNSn4sgVnK6RiqmfsddVL2fd7MeipH5Uwn+2WmYiY0TKe2cuA2Y
	 86M8vYmBH4DPA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Ew-PL; Mon, 14 Nov 2022 12:06:42 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 12/22] phy: qcom-qmp-combo: separate USB and DP devicetree parsing
Date: Mon, 14 Nov 2022 12:06:11 +0100
Message-Id: <20221114110621.4639-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030719_007769_7F8D91F1 
X-CRM114-Status: GOOD (  19.01  )
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

Separate the devicetree parsing of the USB and DP child nodes in two
dedicated helpers in preparation for merging the driver data.

Note that only the USB part of the PHY has a pipe clock and that the DP
implementation only uses the tx/tx2 and pcs register regions.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 82 ++++++++++++++++-------
 1 file changed, 58 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c059e4aeecdb..9c4528dff316 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2576,13 +2576,12 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
+static int qmp_combo_create_dp(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	const struct phy_ops *ops;
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2592,7 +2591,57 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each PHY:
+	 * Get memory resources from the DP child node:
+	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
+	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4
+	 *
+	 * Note that only tx/tx2 and pcs are used by the DP implementation.
+	 */
+	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
+	if (IS_ERR(qphy->tx))
+		return PTR_ERR(qphy->tx);
+
+	qphy->pcs = devm_of_iomap(dev, np, 2, NULL);
+	if (IS_ERR(qphy->pcs))
+		return PTR_ERR(qphy->pcs);
+
+	if (cfg->lanes >= 2) {
+		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
+		if (IS_ERR(qphy->tx2))
+			return PTR_ERR(qphy->tx2);
+	}
+
+	generic_phy = devm_phy_create(dev, np, &qmp_combo_dp_phy_ops);
+	if (IS_ERR(generic_phy)) {
+		ret = PTR_ERR(generic_phy);
+		dev_err(dev, "failed to create DP PHY: %d\n", ret);
+		return ret;
+	}
+
+	qphy->phy = generic_phy;
+	qphy->qmp = qmp;
+	qmp->phys[id] = qphy;
+	phy_set_drvdata(generic_phy, qphy);
+
+	return 0;
+}
+
+static int qmp_combo_create_usb(struct device *dev, struct device_node *np, int id,
+			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
+{
+	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct phy *generic_phy;
+	struct qmp_phy *qphy;
+	int ret;
+
+	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
+	if (!qphy)
+		return -ENOMEM;
+
+	qphy->cfg = cfg;
+	qphy->serdes = serdes;
+	/*
+	 * Get memory resources from the USB child node:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
@@ -2631,31 +2680,16 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 		qphy->pcs_misc = NULL;
 	}
 
-	/*
-	 * Get PHY's Pipe clock, if any. USB3 and PCIe are PIPE3
-	 * based phys, so they essentially have pipe clock. So,
-	 * we return error in case phy is USB3 or PIPE type.
-	 * Otherwise, we initialize pipe clock to NULL for
-	 * all phys that don't need this.
-	 */
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
-		if (cfg->type == PHY_TYPE_USB3)
-			return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
-					     "failed to get lane%d pipe_clk\n",
-					     id);
-		qphy->pipe_clk = NULL;
+		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
+				     "failed to get lane%d pipe_clk\n", id);
 	}
 
-	if (cfg->type == PHY_TYPE_DP)
-		ops = &qmp_combo_dp_phy_ops;
-	else
-		ops = &qmp_combo_usb_phy_ops;
-
-	generic_phy = devm_phy_create(dev, np, ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create qphy %d\n", ret);
+		dev_err(dev, "failed to create USB PHY: %d\n", ret);
 		return ret;
 	}
 
@@ -2752,7 +2786,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 			serdes = dp_serdes;
 
 			/* Create per-lane phy */
-			ret = qmp_combo_create(dev, child, id, serdes, cfg);
+			ret = qmp_combo_create_dp(dev, child, id, serdes, cfg);
 			if (ret) {
 				dev_err(dev, "failed to create lane%d phy, %d\n",
 					id, ret);
@@ -2770,7 +2804,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 			serdes = usb_serdes;
 
 			/* Create per-lane phy */
-			ret = qmp_combo_create(dev, child, id, serdes, cfg);
+			ret = qmp_combo_create_usb(dev, child, id, serdes, cfg);
 			if (ret) {
 				dev_err(dev, "failed to create lane%d phy, %d\n",
 					id, ret);
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
