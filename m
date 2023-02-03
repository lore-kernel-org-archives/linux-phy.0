Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 184F2C636D6
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBKKI98efnFLKKt6g7AknooQrc77M+kbB0ZG15J+Gc8=; b=Avs73FOK/0Qk30
	dz74m6UPWU7CIC7SuEXAz2tSSLVLiPcioGzQOpyBAw/FsGTo4aVdRxs00gUBQ2PZWSyCRNU7PsnLM
	zGfHQ1XGipPWTh9P7sV6ZHsbK+IiimYxQYDbVomOb5tI6oMdRlxEzh7xcWnU7xbCMyTAAvwVK1ejD
	dJ2cUfUeqZ+lDufdQNk9Nas36uj6Pb4lnLaymsmT7mVLUKOaZG5K44MBum+bY45WBl9dxNOE2L+KJ
	+7xazO6W9TcT+SBUaIWN51nsMG758u/LlxAYvDSQjONYi+7v6PM3RQ1kEIsiUQdJn6uJnUTE5jvj9
	sVvyeo8DRz8oecJ3swQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrHE-000z4O-EV; Fri, 03 Feb 2023 08:18:32 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrHA-000ytk-0w
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:30 +0000
Received: by mail-wm1-x32e.google.com with SMTP id o36so3250907wms.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tC5CIir2TW5HV2iOApxmjuTKweN9zOdbT1ZqaOXjyqM=;
        b=cll7vKnoGYMCXoDBeVotvfgcJE/wx+gTcnLvxReQFftjjzhYlipw6bPlrgm/G6go6Y
         /u+fga1NuLmr2SqUDnebAIGWWkCwLe0glPMsWIAr5ZSOV4jaJrQDEc4b4KsfHqpr6wvU
         KFSkfL6vnT5q1RYwgVXmdy/ZNTfYIkghHwr9CUx3vIOCYCMCYGPBNJxGxKXHzaAGD7wm
         zlB5F1Cop9Zf4Wi6lEE9qSsRPL55VTDc/1sPUmI05d/9CGSEr8o2392AetIZclalvHir
         u9FXGS4Z+iUnLfma30tCue849aMYAFAvuUTZtRSgTWOHDyLQxYg+tMOhi353KCTqu+fh
         pcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tC5CIir2TW5HV2iOApxmjuTKweN9zOdbT1ZqaOXjyqM=;
        b=CjrHGKonqnzqLN7kra8oV2jT7cPeRKPPUOtTD9MT26BuH7DPZI+oQkv7wP8EGLY9Us
         3TJpUa77STmf3ge9Q1yi0TcOcoNRaCpwiuDWZ/691bdWEd76n9VcZGI8pBbDQqBOeM72
         tzEkVtNPrGya1zzlZOypN2s7YpDsIQfOUPD86O+uirUWlepslOoyAMyNKJ0I8z+QdCYV
         eegmG3T8Qa36xvaVe7d62WQUKb91WHUAWWiPSr5MrnNnilvE100ENjUISrLbNzrYUe5T
         BG2k+Zq+K3Zy8ssRvlDk4F+nWsnI82fdOnaA9cdIFV+1RQRrj2623QrOEMVEMtLUe23o
         5UyQ==
X-Gm-Message-State: AO0yUKUYUHIZhUm7mN7H17fuXpvpg1QIj9G9+83EQQZgE/7rfidZLATw
	5St8h3LsSjVpAJv1Zlbct+XRXA==
X-Google-Smtp-Source: AK7set9PGlJQZc/aCOoULZbyuKBu9k+qpNWmfBa359XzxbfnXwRjxSWLu79MGm/fPw1iiXZjycyYnw==
X-Received: by 2002:a05:600c:3b0f:b0:3de:1d31:1048 with SMTP id m15-20020a05600c3b0f00b003de1d311048mr8131856wms.29.1675412307566;
        Fri, 03 Feb 2023 00:18:27 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:27 -0800 (PST)
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
Subject: [PATCH v7 10/12] PCI: qcom: Add SM8550 PCIe support
Date: Fri,  3 Feb 2023 10:18:05 +0200
Message-Id: <20230203081807.2248625-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001828_085194_D80906FC 
X-CRM114-Status: GOOD (  14.66  )
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

The v6 of this patchset is:
https://lore.kernel.org/all/20230202123902.3831491-11-abel.vesa@linaro.org/

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
