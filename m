Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B91BC6379F
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsAfGeol37PtAjk4rjarCHiLcM2rjGIFIFegqr/svUA=; b=zrpMVYiKDedYNV
	rNCKdNGwBP6QFkLboAcoQebeb/GNbmPuNIgD8nczmoViqBtF9aAxwp0P7Nj6In1Ocu8I+oj7j/Q/F
	AKXgbuXDfewH3PaOZfjY4oKTDsdtaDw/EEo7dS7EuQjFbOfFzISDDtUTDkmvgvkHXjYFNaRIPseds
	vL3fUB7xmaLLsLFSjqgkSOruM53rN96I5ddWfe7ER2TIeNx71K51avv/VvJeWupCxdsXclJgUQ6zl
	/YbA9lJJsznyfAMaMoQMxDDNDn94JupQUyWzSrC7Ku2tKBsRoRwtTV/maqNjvnwBSXxImslYZ38Ym
	f1jxuXnfXXIhUyBtCoDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90c-009zPC-IO; Mon, 06 Feb 2023 21:26:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90Z-009zFI-2X
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:41 +0000
Received: by mail-wr1-x433.google.com with SMTP id m14so11710434wrg.13
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ez7bc2hM9Q2KuG2DJP6cKQFAIIvaaSgTYSRQvKQGrcM=;
        b=x/5O492HPgenq2vZj6PW59Y3+LmDgpzFp26WiEH8SNnJEPwZdCh8JfufJEhOzhkWAE
         v0ESaSxSdIVe3ZnsJZrUTmmtkpbB1UE433r5s6JaaUnbKvQd9mewehDe9qbBd2mZfBGx
         iXvJ8mL10CXhmJi/ovaVZBqt56WiRva84bwUCd1DsPGdB7O0MDxYGqayO0DfLjMoQcsb
         zMyrJEVwdUiI1mGEJEFUA44EzrF2nIYW6leoGthZoM27jGxBZwm1B9RoqdNmR3wfGfeb
         lW04s352UK1sC3CVLPj2V1qXEtTeVy91YJKD4Q/CrDgNsp5l5LUuxn7v/vZOM3T+BwEy
         9IHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ez7bc2hM9Q2KuG2DJP6cKQFAIIvaaSgTYSRQvKQGrcM=;
        b=vC7YljR+qLwvoiavvfh2lioLVXSKdxegpLFSKpJ0yvX3uaTsyGi6f1+VOFEzozqVjd
         KLThWvstQh2LQ0/fnxWVkZCb3qwl538QWWz8GhBM9blJQKFcKkmuZT02Vn/x0hRx8Ujk
         haedQEXWQo7IrFc6swlX/8xKh4Oe8aIvjPQR+kem5HSbkq5qaa16DglpA4ljz56+Tl8l
         SqqwHeJTLGyKG5QqY/GNnVp6ne9LnTl2aoBJ/EIztqfoKy0Nfg7JQzaXJ3eWnQmifbsr
         3kN9LSf/vLa0TLoY12WOnkObmh7dSEqhfIgrJZ1vgCDOQLQoweouXTJEU6bYOb22bPof
         /Gnw==
X-Gm-Message-State: AO0yUKUF/IwdoenBU+fBL5fr8R8xHhra3ETQvnUN8QPVeX6etzpKj/kY
	I+m02aw3S9WI76Sn1fG9xEtDdQ==
X-Google-Smtp-Source: AK7set/SGb98YE+khd54yfvIA6M37cB5LceKV9vcIEkV22StmusBhY3oyp3xLwy8urDU4o+Ol4Lwuw==
X-Received: by 2002:adf:e550:0:b0:2c3:e392:67ae with SMTP id z16-20020adfe550000000b002c3e39267aemr4198494wrm.3.1675718798574;
        Mon, 06 Feb 2023 13:26:38 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:38 -0800 (PST)
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
Subject: [PATCH v8 10/11] PCI: qcom: Add SM8550 PCIe support
Date: Mon,  6 Feb 2023 23:26:18 +0200
Message-Id: <20230206212619.3218741-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206212619.3218741-1-abel.vesa@linaro.org>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132639_134622_572350AA 
X-CRM114-Status: GOOD (  15.67  )
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
---

The v7 of this patchset is:
https://lore.kernel.org/all/20230203081807.2248625-11-abel.vesa@linaro.org/

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
