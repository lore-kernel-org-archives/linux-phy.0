Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A0DC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5FtdPFB87OVvm14DxvF7VMEQcPN/Xdj+RHU7ZwyZzo=; b=jZhoRKAPT2hY0g
	ZN/n/BPfJKk5Tq8hI5RR0Yb42X61MxBNYS1hJgIJ9olPCHW4HOmKYMos3yikWufTrCnASIBv9kkY0
	fxpoHA/bYkdzCka6DOfV4j8JStdHSjwX7FSnEGH3CnmJT+jwW3jX3TYqzjh9AQfqW3OPauGWmboEB
	4PTERFp9zUCmWkD1UQq2D+P2FSrEFj8bg1X7DJQryvtiZBOeQbNh/ihMYezXBC5YjLZGQ8BV8kK+7
	HsQKO5W4iS/1BertH4ilm6aRnOG+t+V0/3vprW4KSOxuZepwVPoC3fNwsMraas6s2dQnBqtMHjcaU
	ingLeWUvrO4H7hXAMAhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMofZ-00DdoM-TZ; Wed, 23 Feb 2022 10:14:49 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMofT-00Ddkp-Pa
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:14:46 +0000
Received: by mail-lj1-x230.google.com with SMTP id s25so1643982lji.5
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WA3fhXKz11zSRT18uh5lWgyZMPbayuJGb3v+A3A9reA=;
 b=HodvyXEopC6Rhn8fGedL0X9MMjBw9Lu5v+EsadaDkonNcIgPQ4X0cJg1BONqWOQ9H+
 g1X+UNd3jlSGFamkHvcAnZ58jL93oRqCBbb4km24aal8v+sDmi7iwX0r0AGyCYkG9DNG
 1CGLqW/NVcFVeAqxR+joIaSDoV36EGMW92YDJwwLaLYWTEd/D6WdwIRMWfDX1HnRTJQx
 93MozVwQJx5wMpfCL49pOWm+YVAXYpq8/QW3INtc+sDmhxt8mLwwkUbOLRZzkYUgtQ3Q
 YvB53v2pkWg+SuK7QpApus6/U5Ij9KgIlTIdmv6ERAqdWXa5kEMwq7PyQCR/qmpTbjRk
 LMag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WA3fhXKz11zSRT18uh5lWgyZMPbayuJGb3v+A3A9reA=;
 b=q41zmOdjAPWyFD+yT1+c1BQI1zXExvSeD43vLaU7b82efasi0TfZY7Pu8FhXlYLgLI
 2jJfLzWlntPxT4ojZmwqt3+Ba27qXWs9zNhjTPYfZwXL9vP8Jkqpc0G4kybYbuEbrdp1
 bQ+J8+/nkqeIPGTiXR9vU23atBzrfCjnaMsoqhoqZfrDwsCfXODL1FuQTazzLfN8BncX
 zCTQKcjYIHLRtBzEqV9rQEG/BgDJhpBLuZxv9JU1yCe8kU4T4JpMNrP8piVVB1bdeQFJ
 9j1HZBxZwzBGmbik0MFc18NISXMGuD/v0nylG/xBIVM7rkzXGNs50SicWgY+Zlmp99O+
 O1RQ==
X-Gm-Message-State: AOAM530zTb5HyhfBnSNjxhDSYrhGOEfkwLyfvok7gXm8ZcgkoprUBt0t
 4RY/9xm7H7lt4Fur5L7Q+OtEJg==
X-Google-Smtp-Source: ABdhPJyBzvC5YXap0MKOU54W5OcmPRyG5+/UsDKt+f6SOeKw8Lszf2+OM/EcQnvlBhIqy4Bb9WLQyQ==
X-Received: by 2002:a2e:99d0:0:b0:244:c392:2326 with SMTP id
 l16-20020a2e99d0000000b00244c3922326mr19735654ljj.355.1645611281624; 
 Wed, 23 Feb 2022 02:14:41 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id s9sm2060256ljd.79.2022.02.23.02.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:14:41 -0800 (PST)
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
Subject: [PATCH v6 2/4] PCI: qcom: Remove redundancy between qcom_pcie and
 qcom_pcie_cfg
Date: Wed, 23 Feb 2022 13:14:33 +0300
Message-Id: <20220223101435.447839-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
References: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021443_870674_D156BAE2 
X-CRM114-Status: GOOD (  15.60  )
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

In preparation to adding more flags to configuration data, use pointer
to struct qcom_pcie_cfg directly inside struct qcom_pcie, rather than
duplicating all its fields. This would save us from the boilerplate code
that just copies flag values from one struct to another one.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 34 ++++++++++++--------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index c19cd506ed3f..b2db2180e1bc 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -204,8 +204,7 @@ struct qcom_pcie {
 	union qcom_pcie_resources res;
 	struct phy *phy;
 	struct gpio_desc *reset;
-	const struct qcom_pcie_ops *ops;
-	unsigned int pipe_clk_need_muxing:1;
+	const struct qcom_pcie_cfg *cfg;
 };
 
 #define to_qcom_pcie(x)		dev_get_drvdata((x)->dev)
@@ -229,8 +228,8 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
 
 	/* Enable Link Training state machine */
-	if (pcie->ops->ltssm_enable)
-		pcie->ops->ltssm_enable(pcie);
+	if (pcie->cfg->ops->ltssm_enable)
+		pcie->cfg->ops->ltssm_enable(pcie);
 
 	return 0;
 }
@@ -1176,7 +1175,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		return ret;
 
-	if (pcie->pipe_clk_need_muxing) {
+	if (pcie->cfg->pipe_clk_need_muxing) {
 		res->pipe_clk_src = devm_clk_get(dev, "pipe_mux");
 		if (IS_ERR(res->pipe_clk_src))
 			return PTR_ERR(res->pipe_clk_src);
@@ -1209,7 +1208,7 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	}
 
 	/* Set TCXO as clock source for pcie_pipe_clk_src */
-	if (pcie->pipe_clk_need_muxing)
+	if (pcie->cfg->pipe_clk_need_muxing)
 		clk_set_parent(res->pipe_clk_src, res->ref_clk_src);
 
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
@@ -1284,7 +1283,7 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 
 	/* Set pipe clock as clock source for pcie_pipe_clk_src */
-	if (pcie->pipe_clk_need_muxing)
+	if (pcie->cfg->pipe_clk_need_muxing)
 		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
 
 	return clk_prepare_enable(res->pipe_clk);
@@ -1384,7 +1383,7 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 
 	qcom_ep_reset_assert(pcie);
 
-	ret = pcie->ops->init(pcie);
+	ret = pcie->cfg->ops->init(pcie);
 	if (ret)
 		return ret;
 
@@ -1392,16 +1391,16 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		goto err_deinit;
 
-	if (pcie->ops->post_init) {
-		ret = pcie->ops->post_init(pcie);
+	if (pcie->cfg->ops->post_init) {
+		ret = pcie->cfg->ops->post_init(pcie);
 		if (ret)
 			goto err_disable_phy;
 	}
 
 	qcom_ep_reset_deassert(pcie);
 
-	if (pcie->ops->config_sid) {
-		ret = pcie->ops->config_sid(pcie);
+	if (pcie->cfg->ops->config_sid) {
+		ret = pcie->cfg->ops->config_sid(pcie);
 		if (ret)
 			goto err;
 	}
@@ -1410,12 +1409,12 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 
 err:
 	qcom_ep_reset_assert(pcie);
-	if (pcie->ops->post_deinit)
-		pcie->ops->post_deinit(pcie);
+	if (pcie->cfg->ops->post_deinit)
+		pcie->cfg->ops->post_deinit(pcie);
 err_disable_phy:
 	phy_power_off(pcie->phy);
 err_deinit:
-	pcie->ops->deinit(pcie);
+	pcie->cfg->ops->deinit(pcie);
 
 	return ret;
 }
@@ -1559,8 +1558,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 
 	pcie->pci = pci;
 
-	pcie->ops = pcie_cfg->ops;
-	pcie->pipe_clk_need_muxing = pcie_cfg->pipe_clk_need_muxing;
+	pcie->cfg = pcie_cfg;
 
 	pcie->reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
 	if (IS_ERR(pcie->reset)) {
@@ -1586,7 +1584,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
-	ret = pcie->ops->get_resources(pcie);
+	ret = pcie->cfg->ops->get_resources(pcie);
 	if (ret)
 		goto err_pm_runtime_put;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
