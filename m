Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDA41C54EED
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIzUqV1kk4HL+BOs63keYEuRxLyGBA0EcsvIWGjpwoE=; b=WSoOPLgL2bex0a
	r+6acOd9MLk6xfbRKAvLcSPknWYLPd9rwYUdL0uLT4dehOnbL8GS0Ur0B0whu3EEX36M+XAktsrhC
	e949JvXCfv4sE0y0+gk9m3LcJLufCFXQXv7NjLKFjupKZE8WN6pXDZjfs+YBktZRJ7NULp2Vu1JkN
	ndfvzti6z7C6QMZNjThdDpaOAyeTpwiZCcJsIoEbHAChP3PqASlRE9BCaodSD4AcPQaZuKxvZZMG6
	8INZkvrPvOf5QL0fKPUYRmRiLkSrtOnpnwUt1ptso8Qi+joba9FJNBw8WDX41as4GO6vWBFCAJS2i
	DWJ91yO563KAWQ3JalmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIiD-003n9E-CZ; Tue, 24 Jan 2023 12:47:41 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi9-003mz8-So
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h16so13740311wrz.12
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LI7ob5A3GLS+/fd2IRfiNMK3JCx07FDBF5mmOVVsu4U=;
        b=E/Pr8Bh6XtfCypEgIEh0gYbDps/AgIyfRuowm653uK3vWGpgg2eF77fZz4mQ0sU4pd
         Phkr0zaBSFqvwOdNb8nK/jZXTYMnips1Xct41XaHiclCDW7yx9iQghgR0ZXzg+lRVTOM
         GsQTg0E//dZd5fxxP1v4iRS8BYkXsXAp9sJQsSfGsFQQ7xVd/89w/2Sy8ghF5+Airmgy
         fwWIhRHm8Y4+q6O5PG+hbbkYPx0Tw7hFgzfr9s3UKfS8dfrJqzOVpTGc8sXXgmcfMOMq
         3pXOCVn1oouUq9/KzsiTlRzzNTIC/NbFvFjsGP5qGXhs7CfpgG6htRZ+BhtGvr4u1eiZ
         XR3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LI7ob5A3GLS+/fd2IRfiNMK3JCx07FDBF5mmOVVsu4U=;
        b=w0+1GWDnb0fh9UUab78DLr2hMxYR0qYieyG86vqEKCgXsRp8pBvkd+oGmbIpUSobmc
         p8pswO43xLrynhVsIpPVyH8HTueRZl4/oHiVDnkH4Gk9jhBlxPxoFzZ0JyVBhCNuqUgI
         AxBs9qBaQvNioFgab9ybPiWKoScFxRbVDBhVJalN2R6scDq038KjXQsjh7aUdxl/B+Gx
         CyCSp6sJAeb1hZtjIz1W5BTgDQv3UkzvR2Y0JJwe69BIbwxelaC/BmKHBfQ/Y0Wq3uSo
         hewfq1Nrqn0yBNq8m2BunF2A7H91S3Z6w2YXoi5Umlw79jG5brCeGy4Y+ufI8uBLXnyL
         cHRw==
X-Gm-Message-State: AFqh2kohzEfFdKB4ytAkFpTeIxsfAZGx4byDWpwHk7RLEiBoSPinMCiU
	IlsEZs5K9sjBftYEz/z3Aor/nA==
X-Google-Smtp-Source: AMrXdXvMfMyHE90bq/w41/dGeRJL3t6Wy35AgiIX8k9jAHqzxq8SiiUoo5ApH/AVqTdna62CXa3uZA==
X-Received: by 2002:adf:8b1c:0:b0:2bf:9478:a91d with SMTP id n28-20020adf8b1c000000b002bf9478a91dmr11422554wra.39.1674564457407;
        Tue, 24 Jan 2023 04:47:37 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:36 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 10/12] PCI: qcom: Add SM8550 PCIe support
Date: Tue, 24 Jan 2023 14:47:12 +0200
Message-Id: <20230124124714.3087948-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124124714.3087948-1-abel.vesa@linaro.org>
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044737_964143_7AC94126 
X-CRM114-Status: GOOD (  15.06  )
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
Also add the cnoc_pcie_sf_axi clock needed by the SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
---

The v4 of this patchset is:
https://lore.kernel.org/all/20230119140453.3942340-11-abel.vesa@linaro.org/

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
index 77e5dc7b88ad..0297f86e15c9 100644
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
 
@@ -1828,6 +1830,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
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
