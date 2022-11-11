Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0ECEC4167E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4ZVbhv9fa7zD5phxkTIFNhuX74M1XeakpraQH1bULY=; b=E+5kEfQl7vNLdW
	JrUPNRfgqsex8ITHZO7NH+2VmsBGupYStvWYaeUfwVg55mMaQRHdsOSqO6mE9lxh/LWfYIc4dU/2C
	tVOrwRvUvFuhyRQzGBDzoQlR2JXWuSJVgRfap//rhAdzhoF63ocjGJMoDmx1zIlaHlYTzEfViR5Uy
	QSYiKgDeDq+2PmaL5PEcUhPDJZQo9NKd1uTm4Sa42epwNJOO7L8s3uaRwe6cdApKsypFLxvBZR1Kg
	CzYlpED4GnNuw703yXF0fCYo1Dw02gFGvvrEHKQ4oUkOA0OU4jLCQQZaxHs7XPOM5hULg5A5bIS+z
	T2IHDlxDlNiyCyh1Iatw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIk-00EaOH-5g; Fri, 11 Nov 2022 09:26:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQId-00EaJB-1A
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6B7C561F1F;
	Fri, 11 Nov 2022 09:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C84BC4FEB8;
	Fri, 11 Nov 2022 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158765;
	bh=3c8+6m6vBWe+3CeNj/N2w5/cca+CZeOq+S+NzC9FVj8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ay/fJTyK10QrMNv9DO27GawGPNR+EWsBzEpEMy7vTadcdXzPo1DY6jN8ZVxkbENMA
	 igiVttwme3jrSqyPmw3CcKXdn8P8pK3QVT3zyuiYvq3+7/wYYbcvEmRfzMOPV6Co5F
	 QQWuRqNn+6BYcIMOdAO5/Si6HrKvZUOXOTT56JXyUzb6FBOIHYmxWvu54naTQy0nIa
	 JMIB4JmGAjvAf0pKx7UfS5fOT8OiWSl3L0rSEy2ahI52GmHy6h1G1gNcA4+NdKD17b
	 ADVvO4xM0PdZYHKnvlYq9hiQsnKVSbDEQDQ2bcS5UJbJqDTTURBTx9Ps90pHr7tQw1
	 6NckdiUxZ2dkA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI5-0002lE-Ae; Fri, 11 Nov 2022 10:25:37 +0100
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
Subject: [PATCH 10/14] phy: qcom-qmp-combo: separate clock and provider registration
Date: Fri, 11 Nov 2022 10:24:53 +0100
Message-Id: <20221111092457.10546-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012611_194582_F72EDA77 
X-CRM114-Status: GOOD (  14.27  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++++++------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4309ae6db997..f3d3229d3aa2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2255,7 +2255,6 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
 	struct clk_fixed_rate *fixed = &qmp->pipe_clk_fixed;
 	struct clk_init_data init = { };
 	char name[64];
-	int ret;
 
 	snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
 	init.name = name;
@@ -2265,19 +2264,7 @@ static int phy_pipe_clk_register(struct qmp_combo *qmp, struct device_node *np)
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
@@ -2448,15 +2435,7 @@ static int phy_dp_clks_register(struct qmp_combo *qmp, struct device_node *np)
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
@@ -2472,7 +2451,24 @@ static int qmp_combo_register_clocks(struct qmp_combo *qmp, struct device_node *
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
