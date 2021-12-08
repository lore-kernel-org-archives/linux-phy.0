Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CFAEC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjZuboVjt/zzMLV5clsUVsPH0Z66SCphWyWZPvQix6Q=; b=TTSvdnFwXLdk7E
	Ko+vuhxjXfnM+tibyGX7AQQKdP2P+DazVuxtR6CLEeLc7Y/phjcozrjHynypZc2Wk3MBhL4L9dcWw
	U/5oyb8DI6E3KR3nX3dCME1Y0WDKCZTbJu95ACVxYuI/6BjCGRQ69YiSmzIryxefflm+7o7dDPEj9
	KJgc6JJIy+J6b2gwMO5jjzmRgwozSxIKVft21NeCerHz10tQX3sIe+7zIP/UgWl8pt3D8/9d8imXR
	Rx3S2Q53zNdWWUmD7rx+dfz16FiQIgiS1RpMQ96dDlXZ7sBYMahLyH30kd9wIxTlXip6EMzzHovOP
	hAJQRBJHxaeVeW8Npg0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0X6-00Dh0r-Jc; Wed, 08 Dec 2021 17:15:08 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0X3-00Dgxa-Ot
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:15:07 +0000
Received: by mail-lj1-x22e.google.com with SMTP id z8so4893557ljz.9
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wEPXQzVdIaAJaFajHhqNAXwmFj0RX6vAN5FVOMJLSsk=;
 b=rN6jv71K4LGKobQVhVdpNWOgk9+iLv6QEF/uy9rylBKEc3blVGAVdn0xcMnPYIt67J
 cWxFj2f7hEIaEilkcdPEttCvx/ixWvXTYOfR1xUP6qj7RLIeY5S7tirDAffcWDgSzwom
 1QcFaIYQ4dPXzqGDy8N67d6gfo4Rf0eWxshbikHSwkDEEN8FcXLKsbTwbkr0lM1+W3Df
 O0Ut3IwQtZ/3h83dHDxG9pfXhzgf6qmgKc+OKSxPIF9GPzfQb2y+iXMK3HK85yzAEzwj
 S64xXzgJ4krKuH7EkcB8SVPPHkEV8P/SlxnIPF+q2kFpnsFc66Yg2iEIXGgkLApM0NJ8
 Dpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEPXQzVdIaAJaFajHhqNAXwmFj0RX6vAN5FVOMJLSsk=;
 b=nWiw7KdoVIqxzyBVo1vXfNiraoT8G5Fh3KUS6rwXtXHfMnRUZlf+pMk3GwF3RTBXT4
 eSiPlxRYpbm680YP/9UM6rqCh07rIHNWNRUegBCTlk5XHNZoXv8KwphPm+KLdJ8+P1JH
 UwUQ/ZMvL8kV/p/LBxwT55GmNjSq86z9AqbyU0BcCzDrF2/wcpK7B9TuOPTYLXzwCyeO
 f+o+OF656lptuQoVyOZ028bSQm0JNe+VCCDTQ1yhVbDDmTiuNoxzjotkhT6/Lgh37lFF
 ScUsIIl60KpK3FMnWkGbQACuvD+rEteduLN/W63hOOvD0V6pfhRA877+zqW0wm38xuT3
 TUgw==
X-Gm-Message-State: AOAM533xqdYcxjGVLXCIahzm6RLtpbqMesQtbz/si0w9g/XPyh6gf817
 DLL+qPYuBka6Gy9wfYjgQRFGRA==
X-Google-Smtp-Source: ABdhPJx32CKp99LVFZ3P41COc4C540SCCKzrsNCmmBwCsFfb+GoSOsUsPry1MCqXdxnvpzZeEYYKwQ==
X-Received: by 2002:a2e:7a11:: with SMTP id v17mr696837ljc.33.1638983703685;
 Wed, 08 Dec 2021 09:15:03 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:15:03 -0800 (PST)
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
Subject: [PATCH v2 06/10] PCI: qcom: Add SM8450 PCIe support
Date: Wed,  8 Dec 2021 20:14:38 +0300
Message-Id: <20211208171442.1327689-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091505_844668_8133E3BF 
X-CRM114-Status: GOOD (  14.77  )
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
index 803d3ac18c56..ada9c816395d 100644
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
@@ -196,7 +196,10 @@ struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	/* flags for ops 2.7.0 and 1.9.0 */
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_tbu_clk:1;
 	unsigned int has_ddrss_sf_tbu_clk:1;
+	unsigned int has_aggre0_clk:1;
+	unsigned int has_aggre1_clk:1;
 };
 
 struct qcom_pcie {
@@ -1147,6 +1150,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
+	unsigned int idx;
 	int ret;
 
 	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
@@ -1160,18 +1164,22 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
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
@@ -1510,15 +1518,27 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
 
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
 
@@ -1626,6 +1646,7 @@ static const struct of_device_id qcom_pcie_match[] = {
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
