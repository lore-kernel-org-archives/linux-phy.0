Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FD38C001B6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiJh1gUgixIMMOA2Es9+6zB+0SLspAUeXwzL7TaGYho=; b=ESwFE0gN5Mmner
	Mv6tUyrpPE2+APSN2JQ+WhsPpP+vEhV3ZnYUEty74jOTIS7kqrWt54xghCXI+SfMOZtTzRskdyiK0
	Hh+VUqD8IIoItekoYvS7GScEyDEljD8eeDtO1F2uczki3nj1eAVvXgzghS30Y8qNZig/Z6V6utny/
	384HGICzr7P8BAX2zwWFiV5aEbmPYqjhKtsRyKIV+xX0Y/3jZDx0nJriyDbS/5+zCiIk421IF/tTG
	oqB77+t3SKAVV8Y4OZ48cHGRnGhB22f8+7ccRFHb2k3CyAaFoUryb6yWpC6p6of5oditIaFmlbyKI
	OVtioCrpwuf71TxCyMqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuU-00CWw3-ED; Thu, 02 Dec 2021 14:18:06 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu2-00CWgD-73
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:39 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bi37so71840013lfb.5
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L5vH+qkdW0RnnHR8bUSi4DKQOAjuN8wu7Yp/zMOVh1s=;
 b=NIzojU0X/ljxuVj1vbxH7xSKPgb3mdOQUrz/nRite7KGveqllHiWs/Bb9Z7XEUWZNR
 87FLplz+hPLnTDje7Wdbr0s7wiJcwkmR6ZN5WvHyLc6tKtD0wRA9vQGa5zJdKmoeFGrg
 8BBPVcMC57VYvRgeJPmzMTk8KvZfH0I3XDUF2eSrlZupwML6x5exTflr9ZJ8XKzWV95m
 jiq2BzcIbLXf7WYd54W4VFahDJpSq4xsOjCgDLGrvBlT9E403pb7eAQ8yjBe/H2520I8
 Ejml3phDgez0cGM9OElZT0QfSyKVO75uwXJIzHInxJHYPuHIKyMGEQs1oQKFDKbLEl7m
 xwpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L5vH+qkdW0RnnHR8bUSi4DKQOAjuN8wu7Yp/zMOVh1s=;
 b=q28bs6tJSY885jiWsDndMcJKHrznfxX+7NroB/8YG5LgbfcgWfHg5xQDAiC63uLqQe
 0H9NaT/a4HL7venxyWKId0Cqu0PPaixwIDFXbayHsnL0lyhZYMJGHGz0pRRkzLbRBG40
 +tGoVNx1/vVUy8Qkj+0zz4tzKz4AAZ779mpvcSUKRj/8axXMO4b9Q49bvY1bSuGzRczD
 g66/WVy8hS2e9VOU/KqjX6S5QNujdv1Y+9ZZ9DqXbw/OEEt9AiMZyGwy6dx+UEZpytQZ
 ILTITUYJJLdUX+eRJkAoHXoiUcIvbLIv+MZJEI10IGJhpfewIK/SZQMM8n6QhJ4fR0YH
 tN7g==
X-Gm-Message-State: AOAM530q1e2eXufis+r0Uey5APGM/Fsp8Upz1hoPbZNSm3UrRmmL3cpe
 Rs22FvQNis1uNQ+AzVke0QN95g==
X-Google-Smtp-Source: ABdhPJx+n4sB1Vj7WxsLnv4cwsDX+ECkLjcgtQ8DyCxfzuScPF7JXtQYhCQNxtblxOmvzLyo5hsuEQ==
X-Received: by 2002:a05:6512:32c8:: with SMTP id
 f8mr12454410lfg.669.1638454655234; 
 Thu, 02 Dec 2021 06:17:35 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:34 -0800 (PST)
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
Subject: [PATCH v1 04/10] PCI: qcom: do not duplicate qcom_pcie_cfg fields in
 qcom_pcie struct
Date: Thu,  2 Dec 2021 17:17:20 +0300
Message-Id: <20211202141726.1796793-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061738_320430_5D75F216 
X-CRM114-Status: GOOD (  15.20  )
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

In preparation to adding more flags to configuration data, use struct
qcom_pcie_cfg directly inside struct qcom_pcie, rather than duplicating
all its fields. This would save us from the boilerplate code that just
copies flags values from one sruct to another one.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 34 ++++++++++++--------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 3bee901c4df7..64f762cdbc7d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -204,8 +204,7 @@ struct qcom_pcie {
 	union qcom_pcie_resources res;
 	struct phy *phy;
 	struct gpio_desc *reset;
-	const struct qcom_pcie_ops *ops;
-	unsigned int pipe_clk_need_muxing:1;
+	struct qcom_pcie_cfg cfg;
 };
 
 #define to_qcom_pcie(x)		dev_get_drvdata((x)->dev)
@@ -229,8 +228,8 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
 
 	/* Enable Link Training state machine */
-	if (pcie->ops->ltssm_enable)
-		pcie->ops->ltssm_enable(pcie);
+	if (pcie->cfg.ops->ltssm_enable)
+		pcie->cfg.ops->ltssm_enable(pcie);
 
 	return 0;
 }
@@ -1176,7 +1175,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		return ret;
 
-	if (pcie->pipe_clk_need_muxing) {
+	if (pcie->cfg.pipe_clk_need_muxing) {
 		res->pipe_clk_src = devm_clk_get(dev, "pipe_mux");
 		if (IS_ERR(res->pipe_clk_src))
 			return PTR_ERR(res->pipe_clk_src);
@@ -1209,7 +1208,7 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	}
 
 	/* Set TCXO as clock source for pcie_pipe_clk_src */
-	if (pcie->pipe_clk_need_muxing)
+	if (pcie->cfg.pipe_clk_need_muxing)
 		clk_set_parent(res->pipe_clk_src, res->ref_clk_src);
 
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
@@ -1287,7 +1286,7 @@ static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 
 	/* Set pipe clock as clock source for pcie_pipe_clk_src */
-	if (pcie->pipe_clk_need_muxing)
+	if (pcie->cfg.pipe_clk_need_muxing)
 		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
 
 	return clk_prepare_enable(res->pipe_clk);
@@ -1387,7 +1386,7 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 
 	qcom_ep_reset_assert(pcie);
 
-	ret = pcie->ops->init(pcie);
+	ret = pcie->cfg.ops->init(pcie);
 	if (ret)
 		return ret;
 
@@ -1395,16 +1394,16 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		goto err_deinit;
 
-	if (pcie->ops->post_init) {
-		ret = pcie->ops->post_init(pcie);
+	if (pcie->cfg.ops->post_init) {
+		ret = pcie->cfg.ops->post_init(pcie);
 		if (ret)
 			goto err_disable_phy;
 	}
 
 	qcom_ep_reset_deassert(pcie);
 
-	if (pcie->ops->config_sid) {
-		ret = pcie->ops->config_sid(pcie);
+	if (pcie->cfg.ops->config_sid) {
+		ret = pcie->cfg.ops->config_sid(pcie);
 		if (ret)
 			goto err;
 	}
@@ -1413,12 +1412,12 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 
 err:
 	qcom_ep_reset_assert(pcie);
-	if (pcie->ops->post_deinit)
-		pcie->ops->post_deinit(pcie);
+	if (pcie->cfg.ops->post_deinit)
+		pcie->cfg.ops->post_deinit(pcie);
 err_disable_phy:
 	phy_power_off(pcie->phy);
 err_deinit:
-	pcie->ops->deinit(pcie);
+	pcie->cfg.ops->deinit(pcie);
 
 	return ret;
 }
@@ -1562,8 +1561,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	pcie->ops = pcie_cfg->ops;
-	pcie->pipe_clk_need_muxing = pcie_cfg->pipe_clk_need_muxing;
+	pcie->cfg = *pcie_cfg;
 
 	pcie->reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
 	if (IS_ERR(pcie->reset)) {
@@ -1589,7 +1587,7 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
-	ret = pcie->ops->get_resources(pcie);
+	ret = pcie->cfg.ops->get_resources(pcie);
 	if (ret)
 		goto err_pm_runtime_put;
 
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
