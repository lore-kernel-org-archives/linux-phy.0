Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8249C4321E
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0IQGpC/HfL402T8ffmZfWfPCz6R50VAioQiQcpSrMI=; b=tML9nurtQaIDLR
	Hrxje77nDNGaNtusqWO5OJgv8p93RdMRE65FoiNn5RB9dhzKaPzAzwlcVXq8/GiG2b7Ye6/RpXs2l
	BPlabJeBkTSLUS2P+R/3ju/BKrwH0f5IO83IniLZdIz/noV3f09FXL8ZYyihZ6tx4F3V0V+WVCYbu
	LWQ66BbPt9AdFfk5Rf76It9QDcbSwF5FJjFrnHyOdc9UDH9Gffy/WMi9IDDk7iGBu6DvuvU7NdGUl
	fUuFy2Kde5n14VJidLgWJIxJBSwpk0RhM2JO3CgjC+spXdl3A9PNK26jCdzeI7an/4171VJkHAcMX
	u6R2CkG6ZMh8wrTl9eNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X4-00BUec-4h; Mon, 21 Nov 2022 08:52:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Wz-00BUZL-OI
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5B3C860F63;
	Mon, 21 Nov 2022 08:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90BE5C4314B;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020714;
	bh=xBE3xRLPSUJdKiquHXqse0uzhf1AkKR2IvO/OpTcHpE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZJOAMdxtUxEgEQKAUoyHRVqygpREjXoJps8oNo5yJmZ9NhQTlXO8OCKLYB5hUUS/S
	 Jf2acGLJLMz9yBm9cK/QUH1pXT/OdTe3HaOaobGd54vOHIxE9jijTLUPLjvm3p2uZ9
	 5d2BTC57JeBdGBnj+t2pfL2t15MQqVvKESal/FZCEY2Xmyg5Z89cLzLdiM8drclk8U
	 oUbeYOAL+mphKvXjHdaXeZJ+saGXxsvB9X+74v92KvF+Bsx4sz6Uw1dmXDHMC7JhZP
	 teqdRxNgYCQdDP2Cqde3hdcv4XVTPhZAp4btnNv+NLVKvY3Z8918sdUid66DphgxQc
	 eK5UkPLFKPi9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WS-00088P-Sz; Mon, 21 Nov 2022 09:51:24 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 06/15] phy: qcom-qmp-combo: drop redundant clock structure
Date: Mon, 21 Nov 2022 09:50:49 +0100
Message-Id: <20221121085058.31213-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005157_884237_B92A696B 
X-CRM114-Status: GOOD (  17.24  )
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

Drop the unnecessary DP clock structure and instead store the clocks
directly in the driver data.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 52 ++++++++---------------
 1 file changed, 17 insertions(+), 35 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7434955c8898..ebfefecffd86 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -859,12 +859,6 @@ struct qmp_phy_cfg {
 
 };
 
-struct qmp_phy_dp_clks {
-	struct qmp_combo *qmp;
-	struct clk_hw dp_link_hw;
-	struct clk_hw dp_pixel_hw;
-};
-
 struct qmp_combo {
 	struct device *dev;
 
@@ -900,7 +894,9 @@ struct qmp_combo {
 	struct phy *dp_phy;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
-	struct qmp_phy_dp_clks *dp_clks;
+
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
 };
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
@@ -1387,7 +1383,6 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 
 static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
 {
-	const struct qmp_phy_dp_clks *dp_clks = qmp->dp_clks;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 phy_vco_div, status;
 	unsigned long pixel_freq;
@@ -1420,8 +1415,8 @@ static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
 	}
 	writel(phy_vco_div, qmp->dp_pcs + QSERDES_V3_DP_PHY_VCO_DIV);
 
-	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
+	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
+	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
 
 	writel(0x04, qmp->dp_pcs + QSERDES_DP_PHY_AUX_CFG2);
 	writel(0x01, qmp->dp_pcs + QSERDES_DP_PHY_CFG);
@@ -1518,7 +1513,6 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 
 static int qmp_v45_configure_dp_phy(struct qmp_combo *qmp)
 {
-	const struct qmp_phy_dp_clks *dp_clks = qmp->dp_clks;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 phy_vco_div, status;
 	unsigned long pixel_freq;
@@ -1556,8 +1550,8 @@ static int qmp_v45_configure_dp_phy(struct qmp_combo *qmp)
 	}
 	writel(phy_vco_div, qmp->dp_pcs + QSERDES_V4_DP_PHY_VCO_DIV);
 
-	clk_set_rate(dp_clks->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(dp_clks->dp_pixel_hw.clk, pixel_freq);
+	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
+	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
 
 	writel(0x01, qmp->dp_pcs + QSERDES_DP_PHY_CFG);
 	writel(0x05, qmp->dp_pcs + QSERDES_DP_PHY_CFG);
@@ -2342,12 +2336,10 @@ static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
 static unsigned long
 qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
-	const struct qmp_phy_dp_clks *dp_clks;
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
 
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_pixel_hw);
-	qmp = dp_clks->qmp;
+	qmp = container_of(hw, struct qmp_combo, dp_pixel_hw);
 	dp_opts = &qmp->dp_opts;
 
 	switch (dp_opts->link_rate) {
@@ -2386,12 +2378,10 @@ static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
 static unsigned long
 qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
-	const struct qmp_phy_dp_clks *dp_clks;
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
 
-	dp_clks = container_of(hw, struct qmp_phy_dp_clks, dp_link_hw);
-	qmp = dp_clks->qmp;
+	qmp = container_of(hw, struct qmp_combo, dp_link_hw);
 	dp_opts = &qmp->dp_opts;
 
 	switch (dp_opts->link_rate) {
@@ -2413,7 +2403,7 @@ static const struct clk_ops qcom_qmp_dp_link_clk_ops = {
 static struct clk_hw *
 qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
 {
-	struct qmp_phy_dp_clks *dp_clks = data;
+	struct qmp_combo *qmp = data;
 	unsigned int idx = clkspec->args[0];
 
 	if (idx >= 2) {
@@ -2422,42 +2412,34 @@ qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
 	}
 
 	if (idx == 0)
-		return &dp_clks->dp_link_hw;
+		return &qmp->dp_link_hw;
 
-	return &dp_clks->dp_pixel_hw;
+	return &qmp->dp_pixel_hw;
 }
 
 static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct clk_init_data init = { };
-	struct qmp_phy_dp_clks *dp_clks;
 	char name[64];
 	int ret;
 
-	dp_clks = devm_kzalloc(qmp->dev, sizeof(*dp_clks), GFP_KERNEL);
-	if (!dp_clks)
-		return -ENOMEM;
-
-	dp_clks->qmp = qmp;
-	qmp->dp_clks = dp_clks;
-
 	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
 	init.ops = &qcom_qmp_dp_link_clk_ops;
 	init.name = name;
-	dp_clks->dp_link_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_link_hw);
+	qmp->dp_link_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_link_hw);
 	if (ret)
 		return ret;
 
 	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
 	init.ops = &qcom_qmp_dp_pixel_clk_ops;
 	init.name = name;
-	dp_clks->dp_pixel_hw.init = &init;
-	ret = devm_clk_hw_register(qmp->dev, &dp_clks->dp_pixel_hw);
+	qmp->dp_pixel_hw.init = &init;
+	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_pixel_hw);
 	if (ret)
 		return ret;
 
-	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, dp_clks);
+	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, qmp);
 	if (ret)
 		return ret;
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
