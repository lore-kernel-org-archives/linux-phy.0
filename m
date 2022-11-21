Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D81C4167E
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDPeA5wL0/dbKKv1PWes+IzP8Z9Gu3J8H3KHodwSspg=; b=vvbIFcpYcFBI+T
	kHFL0hpbFS0r2CwqT/zm5pUxOE9tox7QpoU2MZMOtn7LbPbYFFUUwbsR+Z7m2fMa1wKpub76NZMks
	vcwYzC+ERQYAFddDxLodTVNo4Tb2WfcbJQ+p6NXIQWGEfa+/1XS0kLO5Weg/oWrePn0tC6RMJLL+1
	DC+btbBTn2x7iQhEFbXdUCfIHEMF8+W7DPYFV6tU32TY+HT0kLCcEA4bignjG92L01n5L3zrbqm7R
	NYAi/apWKwF/Q7A64+ALNPTBMo8i7ae0rTmXC5N9Ajny+oTvmiw3OFGiAYl/FcU3KvEWWy8bbNIuF
	6MEoPHdyrqWrDVKYBUgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X5-00BUgC-Ap; Mon, 21 Nov 2022 08:52:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X0-00BUaN-C3
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:52:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 89A2F60F51;
	Mon, 21 Nov 2022 08:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9DA5C4FF12;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020715;
	bh=bmsUPacS9Rzat24dJ5K0aImxD9SNax5aw2TjIGoYLjk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YyFoSCeGHZL6flaDiHGab6T5gW7sxlluRjcCBsvujWHqFKQw0pszU55Low7NBABPz
	 IYS1w9dClqpEh7MMFULeayksK5Mdb1o2+F4C9deZTvdLSVE3CrTSPL5RvQEUXtEXpL
	 qKSF40QqTGkGuOIJNTq/xbg5VsM8H6+nZTUOdUftbW8yL+wR/b4TDWrOV95K6x8PXZ
	 u5DWZv+98XX/0uxA4ZZ6cdD43s0/qp1YwuNPKBZzLFslzpBnri6ofhc2d0qr9WRZPQ
	 jatkAWTdidY9LKDgnB05J9nbYUV2oqfBiFzwNoOrcNG17TjPAK2Yrpbdk/F2itz7s1
	 7jXCYSYPiVmcQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WT-00088Y-67; Mon, 21 Nov 2022 09:51:25 +0100
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
Subject: [PATCH v3 09/15] phy: qcom-qmp-combo: separate clock and provider registration
Date: Mon, 21 Nov 2022 09:50:52 +0100
Message-Id: <20221121085058.31213-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005158_534437_0CF08EF9 
X-CRM114-Status: GOOD (  14.88  )
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

In preparation for supporting devicetree bindings which do not use child
nodes, separate clock registration from clock-provider registration.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1079a16b45f6..89a5b51c770d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2243,7 +2243,6 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
 	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
 	char name[64];
-	int ret;
 
 	snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
 	init.name = name;
@@ -2253,19 +2252,7 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
 	fixed->fixed_rate = 125000000;
 	fixed->hw.init = &init;
 
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
-
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
 }
 
 /*
@@ -2436,15 +2423,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
 	if (ret)
 		return ret;
 
-	ret = of_clk_add_hw_provider(np, qcom_qmp_dp_clks_hw_get, qmp);
-	if (ret)
-		return ret;
-
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+	return 0;
 }
 
 static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *usb_np,
@@ -2460,7 +2439,24 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
 	if (ret)
 		return ret;
 
-	return 0;
+	ret = of_clk_add_hw_provider(usb_np, of_clk_hw_simple_get,
+					&qmp->pipe_clk_fixed.hw);
+	if (ret)
+		return ret;
+
+	/*
+	 * Roll a devm action because the clock provider is the child node, but
+	 * the child node is not actually a device.
+	 */
+	ret = devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, usb_np);
+	if (ret)
+		return ret;
+
+	ret = of_clk_add_hw_provider(dp_np, qcom_qmp_dp_clks_hw_get, qmp);
+	if (ret)
+		return ret;
+
+	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, dp_np);
 }
 
 static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
