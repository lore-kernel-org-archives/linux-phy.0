Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 400C4C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvYhSxZJ7uWEYu41fx/EBnW/q1ITKLhzsZSN9iczkTw=; b=UlMld93NBGn2NP
	odxXVu8unb0lJXGnbv9PKKSqGwM6TJNhSxOaSFrEaSLmqUkO2k0lEKl3D1Z/6GdeGeTs62umrQ1hg
	Cz+Y62KzAvfOtx3cbReMmZ7lhE7tLZv5PPQRhE68vpnjpU0h79YlEqxlqjC4gpmzrQGDzOu2LRe2M
	U87aEUFXKrRNKa3wm6Xxu2hjDkO/Wy2q1ybY4u3sz+242cLxA43HcIvmUGEM/iy9KQZm6CWIIkeyY
	c+hxlnu2KKvNaoIE0CD4U8u3XBGHlwYuw1VuHziXmK/vE2Ma86lBVj0EeM4r6ur+bZi4e8nnWnwAK
	5809+bFm/3M1SZCywG4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPokl-00GXb8-MT; Wed, 08 Feb 2023 18:01:07 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPoki-00GXOv-2n
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 18:01:05 +0000
Received: by mail-wm1-x335.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so2070621wmb.2
        for <linux-phy@lists.infradead.org>; Wed, 08 Feb 2023 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kfazGtDZ+oWsIm7qBpuVQIZGbKe2YHctFcfaIzg4eRk=;
        b=AJf/HmZy/DJeFA4L93I2LU6HDwOmEDG6kiy5/LjEvUITXTnJNFgGN510dLgv0yOQ6a
         6Nhk57f4+iPOkpwmfOyJ5+hMwB4yq2AxaR2bere2CCN8vxedgjLmTJr+Uyau/LDNL5XU
         gJMh9240y11YJBruz470E/PbMuouZR2geTc/Pc2wAa0VtlnB2Bt5FQNZXbOrSTNbBmbL
         jQfkf6wSku71wz/6DdnaDBnXBB1Ej0963UgMOFM2/S08lq0p5n2ZRw3nseseT045vIOK
         yxthCPkOlrs+OURRVGj54UJ/hpYIPF0glekgjDk6AFWIDqTuzWLJ9+oixMrY/Q42xZJ5
         +goQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfazGtDZ+oWsIm7qBpuVQIZGbKe2YHctFcfaIzg4eRk=;
        b=KFmujnRud6buuNz3X/DwlU4m3nl+gBCLHSGIkFGL4he+wOpG+qjnmXu/PC88S0bFeP
         Ok3yDSW7HSEiy6hiqc5BH/oam/g7NoUySp63oUUWmqiCq+bZoQwd2Ygu0nKn/3jqoAnd
         CV2d7NCgVqGQP8D6LvoEO0AL/AcnI3G5992EHIF4c+0Tt7udBmSLRMC49xqKowu3KSUt
         TPtcCV5CWKutAP70b7curFJleWhXqpFcOm3m10tHCPksXRDXr3athTWCEvtYbMQHlUPc
         ek2cWhkOzkuvbiPgtx4EtOqs11T3WNzn0fcKS1hyagQNUcYrGSUbMmUgNJZ0ipfiWZeN
         bvsg==
X-Gm-Message-State: AO0yUKWJAhGpsbpIfMax4FZMW+bDpCkKEfepta8Nf67xC4NYhGK3znxe
	aaZ/xalgQy9RVfF/QStSXCn7MQ==
X-Google-Smtp-Source: AK7set/1bTixNC+cV1xPID2qM+owEopJQcdX/0CltAtE8FXx1nrVoY72RhtAlpazghcrh6DfMnrCTg==
X-Received: by 2002:a05:600c:707:b0:3df:ea9a:21c9 with SMTP id i7-20020a05600c070700b003dfea9a21c9mr8135595wmn.27.1675879263589;
        Wed, 08 Feb 2023 10:01:03 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id k20-20020a05600c169400b003dc54eef495sm2370286wmn.24.2023.02.08.10.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:01:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v9 10/11] PCI: qcom: Add SM8550 PCIe support
Date: Wed,  8 Feb 2023 20:00:19 +0200
Message-Id: <20230208180020.2761766-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208180020.2761766-1-abel.vesa@linaro.org>
References: <20230208180020.2761766-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_100104_146161_3A4CF705 
X-CRM114-Status: GOOD (  16.01  )
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

Add compatible for both PCIe found on SM8550.
Also add the noc_aggr and cnoc_sf_axi clocks needed by the SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---

The v8 of this patch is:
https://lore.kernel.org/all/20230206212619.3218741-11-abel.vesa@linaro.org/

Changes since v8:
 * added Johan's R-b tag

Changes since v7:
 * Mentioned the noc_aggr clock in the commit message as well, while
   using the cnoc_sf_axi instead of cnoc_pcie_sf_axi

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * added Mani's R-b tag

Changes since v3:
 * renamed cnoc_pcie_sf_axi to cnoc_sf_axi

Changes since v2:
 * none

Changes since v1:
 * changed the subject line prefix for the patch to match the history,
   like Bjorn Helgaas suggested.
 * added Konrad's R-b tag

 drivers/pci/controller/dwc/pcie-qcom.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index a232b04af048..6a70c9c6f98d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -182,10 +182,10 @@ struct qcom_pcie_resources_2_3_3 {
 
 /* 6 clocks typically, 7 for sm8250 */
 struct qcom_pcie_resources_2_7_0 {
-	struct clk_bulk_data clks[12];
+	struct clk_bulk_data clks[14];
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
-	struct reset_control *pci_reset;
+	struct reset_control *rst;
 };
 
 struct qcom_pcie_resources_2_9_0 {
@@ -1177,9 +1177,9 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	unsigned int idx;
 	int ret;
 
-	res->pci_reset = devm_reset_control_get_exclusive(dev, "pci");
-	if (IS_ERR(res->pci_reset))
-		return PTR_ERR(res->pci_reset);
+	res->rst = devm_reset_control_array_get_exclusive(dev);
+	if (IS_ERR(res->rst))
+		return PTR_ERR(res->rst);
 
 	res->supplies[0].supply = "vdda";
 	res->supplies[1].supply = "vddpe-3v3";
@@ -1205,9 +1205,11 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[idx++].id = "ddrss_sf_tbu";
 	res->clks[idx++].id = "aggre0";
 	res->clks[idx++].id = "aggre1";
+	res->clks[idx++].id = "noc_aggr";
 	res->clks[idx++].id = "noc_aggr_4";
 	res->clks[idx++].id = "noc_aggr_south_sf";
 	res->clks[idx++].id = "cnoc_qx";
+	res->clks[idx++].id = "cnoc_sf_axi";
 
 	num_opt_clks = idx - num_clks;
 	res->num_clks = idx;
@@ -1237,17 +1239,17 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	if (ret < 0)
 		goto err_disable_regulators;
 
-	ret = reset_control_assert(res->pci_reset);
-	if (ret < 0) {
-		dev_err(dev, "cannot assert pci reset\n");
+	ret = reset_control_assert(res->rst);
+	if (ret) {
+		dev_err(dev, "reset assert failed (%d)\n", ret);
 		goto err_disable_clocks;
 	}
 
 	usleep_range(1000, 1500);
 
-	ret = reset_control_deassert(res->pci_reset);
-	if (ret < 0) {
-		dev_err(dev, "cannot deassert pci reset\n");
+	ret = reset_control_deassert(res->rst);
+	if (ret) {
+		dev_err(dev, "reset deassert failed (%d)\n", ret);
 		goto err_disable_clocks;
 	}
 
@@ -1841,6 +1843,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8350", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
 	{ }
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
