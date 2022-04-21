Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40C68C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 10:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88xH41aRo+PxdVI/G5jVbggQbNB9bJUKGFrIeRwIVfQ=; b=EaUnAzTiWbWdeg
	LqpCXu/aaHIyeuS8RjTaJcMeSloUsSqYtJIgED9vWF63QATEFbkbByHNyigXUO0S4n4WMSaFumsLk
	7NVjqSSObD26PKkqy535DXMhmoC1tnmQ22eCf2fbVg6jr+4T9kXWe1MRrWKhmXoXyOfN/5se5kuV6
	BxGmqpWgHuPFyhLJhZmbQLKmUqwAZOI9ueCmI5PKbbSm2gsgFEbcSv3ewwi5r/vvt6d27+yuIIe8w
	i5s7wxJWYYXhUUGjsUaqUd1mNmpP9cyVXv5cz+3l/RqupMBYFcL0Fd/wnoSfoBa80qfTeCSz/JjsK
	0Yo6c5IlyAMIGKoDGHDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhTyL-00D1BC-Hq; Thu, 21 Apr 2022 10:23:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhTyJ-00D19i-2e
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 10:23:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 51112618D1;
 Thu, 21 Apr 2022 10:23:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A88A2C385A9;
 Thu, 21 Apr 2022 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650536613;
 bh=fJWBLkxrDqIBp+aWYRNxkztLO5FWDInQ3narIneoapk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dJu8iSVATgrGDKidRtwdO7lriVn4hoDjN0akeoit7bmceCROFT6A3kTzG0+EPN6Qi
 qTEAAawKhI/tCL3Viy29qS27QRDgn1QkW2+6YodtgfjxVSr0a2J5lsJYuwYD69PQ1J
 Fjv8H2O9kP+qtdWznSEKGvQWI2J4T4BeuWSyTI8ykXlMHpIktCAZQWVCqBkEJiSV9M
 O3DazI8EgZBg1iNC6SsFMMgqv3esAq8mkDFA+6yNzKHePhvFAMXk6yS0nQw+j7Qp0c
 KXg9Rcw+wmaHVC2LzClt3dYmzjANaScefrRdCGqq9d5y9L6qq1LOLDBdoExEbQiPDj
 qshtlWpVGyKlg==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nhTyB-0004Xk-In; Thu, 21 Apr 2022 12:23:27 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "Stephen Boyd" <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RFC 4/5] PCI: qcom: Drop pipe clock muxing
Date: Thu, 21 Apr 2022 12:20:40 +0200
Message-Id: <20220421102041.17345-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421102041.17345-1-johan+linaro@kernel.org>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_032335_255383_9B9FB91F 
X-CRM114-Status: GOOD (  16.69  )
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

Some QMP PHYs need to remux to their pipe clock input to the pipe clock
output generated by the PHY before powering on the PHY and restore the
default source during power down.

This is now handled in the QMP PHY driver so remove the broken and
incomplete handling from the PCIe controller driver, which didn't update
the parent clock until after the PHY had been powered on and never
restored the default source after power off.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 39 +-------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 6e6e40fbfc13..d6e33ac9a01a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -164,9 +164,6 @@ struct qcom_pcie_resources_2_7_0 {
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
 	struct reset_control *pci_reset;
-	struct clk *pipe_clk_src;
-	struct clk *phy_pipe_clk;
-	struct clk *ref_clk_src;
 };
 
 union qcom_pcie_resources {
@@ -192,7 +189,6 @@ struct qcom_pcie_ops {
 
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
-	unsigned int pipe_clk_need_muxing:1;
 	unsigned int has_tbu_clk:1;
 	unsigned int has_ddrss_sf_tbu_clk:1;
 	unsigned int has_aggre0_clk:1;
@@ -1158,20 +1154,6 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		return ret;
 
-	if (pcie->cfg->pipe_clk_need_muxing) {
-		res->pipe_clk_src = devm_clk_get(dev, "pipe_mux");
-		if (IS_ERR(res->pipe_clk_src))
-			return PTR_ERR(res->pipe_clk_src);
-
-		res->phy_pipe_clk = devm_clk_get(dev, "phy_pipe");
-		if (IS_ERR(res->phy_pipe_clk))
-			return PTR_ERR(res->phy_pipe_clk);
-
-		res->ref_clk_src = devm_clk_get(dev, "ref");
-		if (IS_ERR(res->ref_clk_src))
-			return PTR_ERR(res->ref_clk_src);
-	}
-
 	return 0;
 }
 
@@ -1189,10 +1171,6 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 		return ret;
 	}
 
-	/* Set TCXO as clock source for pcie_pipe_clk_src */
-	if (pcie->cfg->pipe_clk_need_muxing)
-		clk_set_parent(res->pipe_clk_src, res->ref_clk_src);
-
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
 	if (ret < 0)
 		goto err_disable_regulators;
@@ -1254,18 +1232,8 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 
 	clk_bulk_disable_unprepare(res->num_clks, res->clks);
-	regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
-}
 
-static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
-{
-	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
-
-	/* Set pipe clock as clock source for pcie_pipe_clk_src */
-	if (pcie->cfg->pipe_clk_need_muxing)
-		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
-
-	return 0;
+	regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
 }
 
 static int qcom_pcie_link_up(struct dw_pcie *pci)
@@ -1441,7 +1409,6 @@ static const struct qcom_pcie_ops ops_2_7_0 = {
 	.init = qcom_pcie_init_2_7_0,
 	.deinit = qcom_pcie_deinit_2_7_0,
 	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
-	.post_init = qcom_pcie_post_init_2_7_0,
 };
 
 /* Qcom IP rev.: 1.9.0 */
@@ -1450,7 +1417,6 @@ static const struct qcom_pcie_ops ops_1_9_0 = {
 	.init = qcom_pcie_init_2_7_0,
 	.deinit = qcom_pcie_deinit_2_7_0,
 	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
-	.post_init = qcom_pcie_post_init_2_7_0,
 	.config_sid = qcom_pcie_config_sid_sm8250,
 };
 
@@ -1488,7 +1454,6 @@ static const struct qcom_pcie_cfg sm8250_cfg = {
 static const struct qcom_pcie_cfg sm8450_pcie0_cfg = {
 	.ops = &ops_1_9_0,
 	.has_ddrss_sf_tbu_clk = true,
-	.pipe_clk_need_muxing = true,
 	.has_aggre0_clk = true,
 	.has_aggre1_clk = true,
 };
@@ -1496,14 +1461,12 @@ static const struct qcom_pcie_cfg sm8450_pcie0_cfg = {
 static const struct qcom_pcie_cfg sm8450_pcie1_cfg = {
 	.ops = &ops_1_9_0,
 	.has_ddrss_sf_tbu_clk = true,
-	.pipe_clk_need_muxing = true,
 	.has_aggre1_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
 	.ops = &ops_1_9_0,
 	.has_tbu_clk = true,
-	.pipe_clk_need_muxing = true,
 };
 
 static const struct dw_pcie_ops dw_pcie_ops = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
