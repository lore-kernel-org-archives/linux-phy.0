Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E69CC43217
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jB4i30P4x11j5BN1u9S37qtf8AqVDEoElINnNrqIe3s=; b=QvT+i8tpFZUnRm
	z0q86v/V9ZCKQIRxhG4cl6w3uaVimIjt1Erq5rzgP/dv9PkO44KHWh8NxHKEgEaNRech8og78AwRr
	AkIzzGL7Iju7nlUDqO2QpHt53oOeovMhHtkaQaBdadNePyLwQci41c+gJ50ucZ+ke/wpEPsADNSUJ
	SsL/Ex7iDGOnz0H/ksaqpBDoO8P0jBG0jEdUGYAs7QYOYlZClXdW4KmH/0hc6E2vtkBB2isdJcX8L
	fIBV07xDU4Z1Znx4soS7P+BpnxXHchUmc9NrVYdHtDNReQfsPEi+xhgEJQzh8jDM2cG7JdvFCPsPz
	GP0n3TDea/aF2HSrMs8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X3-00BUe9-SG; Mon, 21 Nov 2022 08:52:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Wz-00BUZY-S1
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7712F60F6D;
	Mon, 21 Nov 2022 08:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4E57C4FF07;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020715;
	bh=RSCCNHg0pVmtS0IdanzEJRU1fo8izWYA/WxRqAymmF4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OO9qHUMDKnLBjdXTTukUmV0MM718EyTHjXyefp2iLOUw1gUCKcbnNyKYj9lz0RqBP
	 NQHFy/BqnDzgTI9ReWVieldnrgzfDdYDClzdePn+E0Ws2bvEt+1KD/E/wjpkOotZSn
	 m5eRcTf3oqMN+N1A/Ds/yJnjzPWz8U2rsVos8Zv0/PkPNlV+vYVbXtUoFYcV4CVheM
	 tdaRC95XdeFbkNT5DllABG45DpN/e4MAr3mFKeNO+Fbo+t9tRngmIoSJvSDi6H4cjC
	 l6rNiy2QVVpe9muG3OukxBdXJiDGDsj3qlI9z7OXN99Fi7Qgr1Vyh7C8nw96qhcqEl
	 YH1NIe8ZVHP7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WT-00088c-8b; Mon, 21 Nov 2022 09:51:25 +0100
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
Subject: [PATCH v3 10/15] phy: qcom-qmp-combo: clean up DP clock callbacks
Date: Mon, 21 Nov 2022 09:50:53 +0100
Message-Id: <20221121085058.31213-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005158_000479_C8DA7277 
X-CRM114-Status: GOOD (  13.46  )
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

Clean up the DP clock callbacks somewhat by dropping the redundant
"qcom" prefix and removing line breaks after type specifiers.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++-------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 89a5b51c770d..fb3705b00823 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2304,8 +2304,7 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
  *              for DP pixel clock
  *
  */
-static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
-						struct clk_rate_request *req)
+static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
 {
 	switch (req->rate) {
 	case 1620000000UL / 2:
@@ -2317,8 +2316,7 @@ static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
 	}
 }
 
-static unsigned long
-qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
@@ -2340,13 +2338,12 @@ qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 	}
 }
 
-static const struct clk_ops qcom_qmp_dp_pixel_clk_ops = {
-	.determine_rate = qcom_qmp_dp_pixel_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_pixel_clk_recalc_rate,
+static const struct clk_ops qmp_dp_pixel_clk_ops = {
+	.determine_rate	= qmp_dp_pixel_clk_determine_rate,
+	.recalc_rate	= qmp_dp_pixel_clk_recalc_rate,
 };
 
-static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
-					       struct clk_rate_request *req)
+static int qmp_dp_link_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
 {
 	switch (req->rate) {
 	case 162000000:
@@ -2359,8 +2356,7 @@ static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
 	}
 }
 
-static unsigned long
-qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+static unsigned long qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
@@ -2379,13 +2375,12 @@ qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 	}
 }
 
-static const struct clk_ops qcom_qmp_dp_link_clk_ops = {
-	.determine_rate = qcom_qmp_dp_link_clk_determine_rate,
-	.recalc_rate = qcom_qmp_dp_link_clk_recalc_rate,
+static const struct clk_ops qmp_dp_link_clk_ops = {
+	.determine_rate	= qmp_dp_link_clk_determine_rate,
+	.recalc_rate	= qmp_dp_link_clk_recalc_rate,
 };
 
-static struct clk_hw *
-qcom_qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
+static struct clk_hw *qmp_dp_clks_hw_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct qmp_combo *qmp = data;
 	unsigned int idx = clkspec->args[0];
@@ -2408,7 +2403,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	int ret;
 
 	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_link_clk_ops;
+	init.ops = &qmp_dp_link_clk_ops;
 	init.name = name;
 	qmp->dp_link_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_link_hw);
@@ -2416,7 +2411,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 		return ret;
 
 	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_pixel_clk_ops;
+	init.ops = &qmp_dp_pixel_clk_ops;
 	init.name = name;
 	qmp->dp_pixel_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_pixel_hw);
@@ -2452,7 +2447,7 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	if (ret)
 		return ret;
 
-	ret = of_clk_add_hw_provider(dp_np, qcom_qmp_dp_clks_hw_get, qmp);
+	ret = of_clk_add_hw_provider(dp_np, qmp_dp_clks_hw_get, qmp);
 	if (ret)
 		return ret;
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
