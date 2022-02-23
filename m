Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842C5C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f99NNsJUuqz0uuTSpbz9/cKaWtgf+YSW6S2ThmFOfnk=; b=RuxXf6AZ8Jj6fy
	E0e+nXDPLnB47mfO2xW8n/esbY+VbhymQ3vciBaWOa8P8tn9UkudHOeq06fIYIyXem/oi3hwDbNvv
	J0gwimDxyqmTW3ukaBLeCKkm5W7cooxIsKtJFlcz/38A66wLdCXatgg+x+HHSZaZ+lKrQ465ncCt0
	+FBhsTmtvSc8qrPllA10kwbr62qoyUdyJieUyYXt+OMbHalSfA8vyEZpQtQt6ricv+GqcM8qxKrVZ
	ml7RZcFuWcQ1aD0Db9KOIkRcShRyZamFfByeGShy7FgW9zRcmSFf/wQ1XMiUfHy/MxYYb5GvJumhk
	NSFxernt+U3OrDe/FLhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMofZ-00DdoR-Vz; Wed, 23 Feb 2022 10:14:49 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMofW-00Ddlw-Dw
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:14:48 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 29so14130470ljv.10
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bKXCxz8PO7s7Qk0bP2QxK8inFr7HkdpbFAomn9XlFeA=;
 b=SYmRoB+AQ9vkH7X2hlq89XsfoKRTQiaSb7C6IsJI6VYl7pRXKKkMv/oWn2bxru2XIm
 Tmo9/csYFFQvykTeLq3CzFwRsHpEl/y4e2QTvoagFVAMhSRKoQP8F8W0Mj+wCbiwEm6j
 BqcIa0Kl7ltWmOASpDJtDjuQTf7ExZS55AiheYC3y9VbtHEKcUEwwbTK5GQA6nHpvEG2
 nhd3PwkecHEbcQSzAJMRTf+yfBnjsCLBGWx5YmiRMeMLxntpQW1gpQLyInIdC9tB3m/f
 MdxyMYdVo9d74lASdXJtQwS6fy+nGDiRmdzxVwXIXXqwIyDIkHW8cTtb0Wched/Ifs7l
 awtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bKXCxz8PO7s7Qk0bP2QxK8inFr7HkdpbFAomn9XlFeA=;
 b=zojhLxGcXPSTnqnxStNbXi5SxRS3WWsomRySpYpJ9eWFAEUEIsD3XjBp9QJSVB0vib
 jkNpd2n01vfn8NVEYHzNdEH3PUQJ96KuhnR9sGn0Ctp/m01AkHTUROqIu3YBIeiP4NeL
 TZC7q55s1D5ZmaKM0QQ27Rw1tYLvhi3V+DmblWVoNApfmMfzvfhlvSJYzWfLz4HacaEV
 xzXC6/dy1sUj3H+P5FKNqTKMV/8fnyP/Hw7OPrjUXF3/ZMxZYM9YVFAIaczCu99L6CIG
 suYvglvB+crikVYzUKMOQigO/C9Afg4fMScM8WmvpGxz8SIMA/xK4BFIh/H2di8YwVnK
 9DaQ==
X-Gm-Message-State: AOAM5319S5jNC8ET+8NxoQ9FDnTJuVLNS84QOf6JAFd6COBegl0eOW95
 TmxGaTIBseRnHt8IQX5GgwAeFA==
X-Google-Smtp-Source: ABdhPJwGkiuibP/yRjiyS+0In7zGWu8vKGOk5v5Yvo9mAgWIYvnW2zN8WqLo+mR88pJiYeolSYmnHw==
X-Received: by 2002:a05:651c:14f:b0:23d:8a2a:456d with SMTP id
 c15-20020a05651c014f00b0023d8a2a456dmr21255258ljd.196.1645611284505; 
 Wed, 23 Feb 2022 02:14:44 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id s9sm2060256ljd.79.2022.02.23.02.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:14:44 -0800 (PST)
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
Subject: [PATCH v6 4/4] PCI: qcom: Add SM8450 PCIe support
Date: Wed, 23 Feb 2022 13:14:35 +0300
Message-Id: <20220223101435.447839-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021446_500656_CD2265D5 
X-CRM114-Status: GOOD (  15.76  )
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

PCIe0 and PCIe1 hosts use different sets of clocks, so separate entries
are required.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 57 ++++++++++++++++++++------
 1 file changed, 44 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 7e97820eb575..0bb6d0e14cbb 100644
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
@@ -1236,6 +1244,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 		goto err_disable_clocks;
 	}
 
+	/* Wait for reset to complete, required on SM8450 */
+	usleep_range(1000, 1500);
+
 	/* configure PCIe to RC mode */
 	writel(DEVICE_TYPE_RC, pcie->parf + PCIE20_PARF_DEVICE_TYPE);
 
@@ -1509,15 +1520,33 @@ static const struct qcom_pcie_cfg ipq4019_cfg = {
 
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
+static const struct qcom_pcie_cfg sm8450_pcie0_cfg = {
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
+	.has_aggre1_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
 	.ops = &ops_1_9_0,
+	.has_tbu_clk = true,
 	.pipe_clk_need_muxing = true,
 };
 
@@ -1628,6 +1657,8 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sdm845", .data = &sdm845_cfg },
 	{ .compatible = "qcom,pcie-sm8250", .data = &sm8250_cfg },
 	{ .compatible = "qcom,pcie-sc8180x", .data = &sm8250_cfg },
+	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &sm8450_pcie0_cfg },
+	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &sm8450_pcie1_cfg },
 	{ .compatible = "qcom,pcie-sc7280", .data = &sc7280_cfg },
 	{ }
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
