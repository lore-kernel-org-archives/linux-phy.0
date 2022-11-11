Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69171C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S/CO5TDEqLfqwPocs738EQvSnLINsbwLyarUGN/7JY=; b=cW7MQ4pnKtasyw
	1udvtE4JSXUCYYv9k1Xyw45/dLIxGLVhqolESzrcCMzqi8VRPaNBBZjxoi6NT3BvDJLXe18nSdT8x
	yFbcgEJkhTVY+JUWUVE4g30afidBFTCuCE7Q7cQ8QqY9xDuFRpA2kMj3vadx8DrlaU3IUvBNTc1tg
	jPC3w3WIfuYCDpsa0SWn8dMGl5Z2OwkCKppl7RBJXtTTmZjEISjRjtBwz5Yx8pnGiH1LzdPFNjnVm
	+1XwdZ2yLm/pbTel3+dolY3/sbiL0cgAIobhK8xBRRNR6aH7NQnajHUrxvNWgYhZgvpsndue8dM9N
	O8y2X1PtCVOPZQotA5og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIk-00EaOj-Ls; Fri, 11 Nov 2022 09:26:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIc-00EaJC-U3
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DE4D361F1A;
	Fri, 11 Nov 2022 09:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44518C4FF08;
	Fri, 11 Nov 2022 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158765;
	bh=bEcxDHyAYgLc3wiWBz5WNZrUp7HQnJ1/WycWoNsGCDw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cLTTzykNM+DQpO761Sp8YaTO6oMdwunaz6VPsgxZB3sp/Mozxq0Fa+JXNTE9fNOfq
	 aWkArENP6sBIoIrlhRLLyrqLeBvkgvZvnXmQizX5lBgwptR/otoRkIWzQETUe7Lw4e
	 kWcI0X2sd1oGoTZv24T2U3gcRxcYoDXUUOHfqHi/afBZvcHSbwLjDS9piqWllCZr7I
	 Q7rrJ2A2Io9piVxQrir2PenlL1KxXeiqo29ynoe1unoGvKRIceFYQDz3wm9Ev5JWS2
	 tM2A5237kb03p+dxtF4KI1DThchAohL9SlSIDeHSWbBpUx7bUHvNt6eKdQNBe/m7R2
	 hPmbKmDZO3IQQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI5-0002lH-De; Fri, 11 Nov 2022 10:25:37 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
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
Subject: [PATCH 11/14] phy: qcom-qmp-combo: clean up DP clock callbacks
Date: Fri, 11 Nov 2022 10:24:54 +0100
Message-Id: <20221111092457.10546-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012611_108193_A94B6C4E 
X-CRM114-Status: GOOD (  12.85  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++-------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f3d3229d3aa2..5068f8674faf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2316,8 +2316,7 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
  *              for DP pixel clock
  *
  */
-static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
-						struct clk_rate_request *req)
+static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
 {
 	switch (req->rate) {
 	case 1620000000UL / 2:
@@ -2329,8 +2328,7 @@ static int qcom_qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw,
 	}
 }
 
-static unsigned long
-qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
@@ -2352,13 +2350,12 @@ qcom_qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
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
@@ -2371,8 +2368,7 @@ static int qcom_qmp_dp_link_clk_determine_rate(struct clk_hw *hw,
 	}
 }
 
-static unsigned long
-qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+static unsigned long qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
 	const struct qmp_combo *qmp;
 	const struct phy_configure_opts_dp *dp_opts;
@@ -2391,13 +2387,12 @@ qcom_qmp_dp_link_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
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
@@ -2420,7 +2415,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	int ret;
 
 	snprintf(name, sizeof(name), "%s::link_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_link_clk_ops;
+	init.ops = &qmp_dp_link_clk_ops;
 	init.name = name;
 	qmp->dp_link_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_link_hw);
@@ -2428,7 +2423,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 		return ret;
 
 	snprintf(name, sizeof(name), "%s::vco_div_clk", dev_name(qmp->dev));
-	init.ops = &qcom_qmp_dp_pixel_clk_ops;
+	init.ops = &qmp_dp_pixel_clk_ops;
 	init.name = name;
 	qmp->dp_pixel_hw.init = &init;
 	ret = devm_clk_hw_register(qmp->dev, &qmp->dp_pixel_hw);
@@ -2464,7 +2459,7 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
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
