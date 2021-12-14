Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC00C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzwjJ38Bm43v6K8XrmUWnuwlIXe6QeXzCtXiAhu4Mv4=; b=4pIFiYmY+3dFAz
	pnm7pnxtDNCoBw0mjpAl6UeSJOi4MWlJkHBMOMtIyPWN5Sid2v+njQa1hLCIquqd4PIugoA7Cuqym
	zW41zB2VHNk2LjRdUHMm4RZCV6NaSAv8Df3Ju8ZE9ZOtW9N6bl8j2oKgD96deKn28bp2y5ueeXYfF
	VGGLTUggUTRLH6I7t/Cv7uqESCZVaWKlYqAft+/sXRdTeGPdEUKuG1WnFuDO7A66x0uyKkynDtYQb
	u7qfML7VX0q9uAZ9PNYDus94ABMvxjbTWlIJYQger/1krK2QkFYoS2JAFUK/lCBNJLTIH96RRxa7i
	h8JI6einx6Iu5IDNaEqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlH-00G0TW-Dt; Tue, 14 Dec 2021 22:59:07 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlE-00G0Rf-I1
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:05 +0000
Received: by mail-lf1-x131.google.com with SMTP id m27so39593693lfj.12
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L4pIImixrdWMTKaYWRmzrWP1bf+OcXW6Av2PMVI53nk=;
 b=qyndXVPHUhhWwxY5Zzbkg3x5vUsiEK+u9FdWj8n7VtMK3HVs1hkf7hHqqOADZwZgOU
 BGobVzKnTnbZ0axjo9BbUVen8+6QfmwCUpEoGaeZjGlFV0PP5hDeFTmZnk/eIvL6Wkmo
 z+URfNuB9udJQW4r3OY+3W1pHYKadql3zEfKSXBe+yMqeuS9ofPvCbp2fSpbIe2A2SJx
 gGNCNWiGFCqPZqDwd+ZNJaHm+8x6zwXhJ2ubWYBrmSjD+HSaSU9Wa4fm9s0ETzOHP+1H
 Xm2aszqHgACWgA7qMmKM7co8Z0gy8bvykT42m7bPTlGteggnRu2Mscp3wvDwjg0qtpeA
 mnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4pIImixrdWMTKaYWRmzrWP1bf+OcXW6Av2PMVI53nk=;
 b=npPvKDg7VJ7ooXrZ++dVXlVXnaEo+eqPzIKB26Agj67bR/FZpz55OTlFJS4dR2tjD1
 7wkAlYce+/fr8NiT1x+GLkavx1WmtwuD7VcrTr12VuhKek1DvaY2WEVtCiPjxy+04qvU
 8ONH2kwxuHFlzaIYbtAUF5wpmjCZw/7Mj0gceR00/uHmAzBaEUWkj4GznyMCu9317xjj
 ut0L0bPYrrQMdDqR1k84Ud5J7RAnT6YNzTX2sk2kUXJ7PnIlUIPuyLb1P9YsK4BpRzkG
 vjKr0CbpILQD9ld/RMBSf5Dr6BueIwfZV9OArjoFqWJI9rOvQei46cm5fJ4R05yAuec6
 +CeA==
X-Gm-Message-State: AOAM532Oz8S6OfdSKKbBB7vBRlQvyKHYgK7RLBYymJSjCMiVORGOdvTo
 3m38k1ng70f+dO4pHrnD5cOKOy0pxhAbJ1wT
X-Google-Smtp-Source: ABdhPJyJXAvWYZFxmg3G09HUfR3xVYI4mAt3CKh5QbK0T+O/+Uzv1Df00bkHlb03AoXgbUQZfrZNGg==
X-Received: by 2002:a05:6512:33a9:: with SMTP id
 i9mr7319218lfg.30.1639522743123; 
 Tue, 14 Dec 2021 14:59:03 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:02 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 06/10] PCI: qcom: Add SM8450 PCIe support
Date: Wed, 15 Dec 2021 01:58:42 +0300
Message-Id: <20211214225846.2043361-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145904_627828_EF35B58D 
X-CRM114-Status: GOOD (  14.39  )
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

On SM8450 platform PCIe hosts do not use all the clocks (and add several
additional clocks), so expand the driver to handle these requirements.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 47 +++++++++++++++++++-------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 2f9a9497733e..d129729bb2a6 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -161,7 +161,7 @@ struct qcom_pcie_resources_2_3_3 {
 
 /* 6 clocks typically, 7 for sm8250 */
 struct qcom_pcie_resources_2_7_0 {
-	struct clk_bulk_data clks[7];
+	struct clk_bulk_data clks[9];
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
 	struct reset_control *pci_reset;
@@ -195,7 +195,10 @@ struct qcom_pcie_ops {
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_tbu_clk:1;
 	unsigned int has_ddrss_sf_tbu_clk:1;
+	unsigned int has_aggre0_clk:1;
+	unsigned int has_aggre1_clk:1;
 };
 
 struct qcom_pcie {
@@ -1146,6 +1149,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
+	unsigned int idx;
 	int ret;
 
 	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
@@ -1159,18 +1163,22 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	if (ret)
 		return ret;
 
-	res->clks[0].id = "aux";
-	res->clks[1].id = "cfg";
-	res->clks[2].id = "bus_master";
-	res->clks[3].id = "bus_slave";
-	res->clks[4].id = "slave_q2a";
-	res->clks[5].id = "tbu";
-	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
-		res->clks[6].id = "ddrss_sf_tbu";
-		res->num_clks = 7;
-	} else {
-		res->num_clks = 6;
-	}
+	idx = 0;
+	res->clks[idx++].id = "aux";
+	res->clks[idx++].id = "cfg";
+	res->clks[idx++].id = "bus_master";
+	res->clks[idx++].id = "bus_slave";
+	res->clks[idx++].id = "slave_q2a";
+	if (pcie->cfg->has_tbu_clk)
+		res->clks[idx++].id = "tbu";
+	if (pcie->cfg->has_ddrss_sf_tbu_clk)
+		res->clks[idx++].id = "ddrss_sf_tbu";
+	if (pcie->cfg->has_aggre0_clk)
+		res->clks[idx++].id = "aggre0";
+	if (pcie->cfg->has_aggre1_clk)
+		res->clks[idx++].id = "aggre1";
+
+	res->num_clks = idx;
 
 	ret = devm_clk_bulk_get(dev, res->num_clks, res->clks);
 	if (ret < 0)
@@ -1509,15 +1517,27 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
 
 static const struct qcom_pcie_cfg sdm845_cfg = {
 	.ops = &ops_2_7_0,
+	.has_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
 	.ops = &ops_1_9_0,
+	.has_tbu_clk = true,
 	.has_ddrss_sf_tbu_clk = true,
 };
 
+/* Only for the PCIe0! */
+static const struct qcom_pcie_cfg sm8450_cfg = {
+	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
+	.pipe_clk_need_muxing = true,
+	.has_aggre0_clk = true,
+	.has_aggre1_clk = true,
+};
+
 static const struct qcom_pcie_cfg sc7280_cfg = {
 	.ops = &ops_1_9_0,
+	.has_tbu_clk = true,
 	.pipe_clk_need_muxing = true,
 };
 
@@ -1625,6 +1645,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
 	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
 	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
+	{ .compatible = "qcom,pcie-sm8450", .data = &sm8450_cfg },
 	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
 	{ }
 };
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
