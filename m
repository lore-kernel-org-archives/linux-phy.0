Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D3D9C3525B
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G20OQTX1XX49x4B1uZJ+C0LAsE0eb/8yz2Nll7mv/ew=; b=Hl2RKnOQwnZksS
	N2+YCym/MclMOQcU+zj9kYEg2U4qBN8LocB8M0rC6ZD5lM63zEqXR0SDTog54J1Rc2axyo3c1wQPB
	C/dg7SPpBBdmjGHjtxmDVVWhT8vf0qONNlVvyJNo43xCzrfPSI+YkvQq8K7Gr7xtp8CywoyMVzwwC
	9WCAVnxdA3qm/d6l8pWXAH0H5hm2xlY4nR5jWUKiGb18Cgb4eo0rYTKPuvi85MsGUXGpjdmKxv+1O
	52oUBbIvoYNUDMEMlYaUXb0uVz4ZurYbrGA4xt9DLggTnI9kjeliBnj/WbMVzF1aewWluig3f7Fnl
	svwGhDf1+uibxTX7omDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuU-00CWwn-VF; Thu, 02 Dec 2021 14:18:06 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu3-00CWhi-VO
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:41 +0000
Received: by mail-lf1-x133.google.com with SMTP id m27so71780256lfj.12
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IbALx0XtFk2sjvQW/onR8vjjNDCw+IRJE2J+CI3Jr4A=;
 b=vM26FWhP8DucGhwTCLKaf82GBXq5cI5vaDZXMCAv4rJO09qMGy9cMX0kNbBE89QdBT
 sjuzWiafQqWSB6H9pV7rkEzdgEoTEFG5e5jY+YP3t/quv2sUSskrt3rEedYfaSBQi1CL
 +6hdRADfEWgyk9JgMzmov82TBERRFB5CjZXK0NZ0jh5EEmw7c8rTAAi0p9Ac0UlrHOmK
 7hdN6enwb5o2tp4ZJEJ5J9ZHLVF4c4l3yxZJj38TrcWInvzXgbDfFWRATtz2w1Xz7jOD
 gxxqGU81BXsCn55+7qTkwcfq2NAJWJ1hrQRQI93L+aVklmFuSJjjBtBJYvEM1YNYmM6+
 kQZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IbALx0XtFk2sjvQW/onR8vjjNDCw+IRJE2J+CI3Jr4A=;
 b=YG4OHD6ik3SV6LEIvR4LodNK6FEtiDdpn9eJ8p7PGVnWCJ3xJGtPvF4caPh68IHWzb
 Lw2nwoZI4PYqOlcgwrSZxjkrQIEWQ+K1SjbS8X/BqJmszeItVlUYPCjqp+8aUOVB74Hz
 8HFWO+ea9DdK4zUhhTp0723mrYY6+0OjDLsQ1t5Icsl0HYdHkXE/jHhB/eOlb7xZ56Pv
 ZqZwvJYpHG7g/jHyXJNyAbP085YQCRowOheSiMKScEPnSxqAGZXyeCZjCOTTu5usObkS
 K7zRFHgXLsVXRjRC9plMnDfLhzT2Y6RuMNX+Q8iAgsNNG1sojHso6PIQ5xj8RZci7KFS
 Orcw==
X-Gm-Message-State: AOAM533MKZf3i0kPViYN4yRvJKmTOozkIt0jYSykJnQPI5QX0OBijRys
 HaDxYqf37kndyOCyaEcpY4TyBg==
X-Google-Smtp-Source: ABdhPJw3etiuLd70f0wo0mSda+F/5iX6ZiPl+cMc4WJpWS2999HymXOa7d0BTghIapMyYdzdUGAsoA==
X-Received: by 2002:a05:6512:2314:: with SMTP id
 o20mr12067407lfu.51.1638454657683; 
 Thu, 02 Dec 2021 06:17:37 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:36 -0800 (PST)
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
Subject: [PATCH v1 06/10] PCI: qcom: add support for SM8450 PCIe controllers
Date: Thu,  2 Dec 2021 17:17:22 +0300
Message-Id: <20211202141726.1796793-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061740_085464_6D813564 
X-CRM114-Status: GOOD (  15.46  )
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
 drivers/pci/controller/dwc/pcie-qcom.c | 56 ++++++++++++++++++++------
 1 file changed, 43 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e51b313da46f..8865215b0b5c 100644
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
-	if (pcie->cfg.has_ddrss_sf_tbu_clk) {
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
+	if (pcie->cfg.has_tbu_clk)
+		res->clks[idx++].id = "tbu";
+	if (pcie->cfg.has_ddrss_sf_tbu_clk)
+		res->clks[idx++].id = "ddrss_sf_tbu";
+	if (pcie->cfg.has_aggre0_clk)
+		res->clks[idx++].id = "aggre0";
+	if (pcie->cfg.has_aggre1_clk)
+		res->clks[idx++].id = "aggre1";
+
+	res->num_clks = idx;
 
 	ret = devm_clk_bulk_get(dev, res->num_clks, res->clks);
 	if (ret < 0)
@@ -1513,15 +1521,35 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
 
 static const struct qcom_pcie_cfg sdm845_cfg = {
 	.ops = &ops_2_7_0,
+	.has_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
+	.ops = &ops_1_9_0,
+	.has_tbu_clk = true,
+	.has_ddrss_sf_tbu_clk = true,
+};
+
+/* Only for the PCIe0! */
+static const struct qcom_pcie_cfg sm8450_cfg = {
 	.ops = &ops_1_9_0,
 	.has_ddrss_sf_tbu_clk = true,
+	.pipe_clk_need_muxing = true,
+	.has_aggre0_clk = true,
+	.has_aggre1_clk = true,
+};
+
+static const struct qcom_pcie_cfg sm8450_pcie1_cfg = {
+	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
+	.pipe_clk_need_muxing = true,
+	/* .has_aggre0_clk = false, */
+	.has_aggre1_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
 	.ops = &ops_1_9_0,
+	.has_tbu_clk = true,
 	.pipe_clk_need_muxing = true,
 };
 
@@ -1632,6 +1660,8 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
 	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
 	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
+	{ .compatible = "qcom,pcie-sm8450", .data = &sm8450_cfg },
+	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &sm8450_pcie1_cfg },
 	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
 	{ }
 };
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
