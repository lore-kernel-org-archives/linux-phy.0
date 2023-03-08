Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32288C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJCqmD07NCV3tUYmT70bUoDUwf5DZmTbTVPT//DEqtM=; b=0gIwF8L7sxWesE
	3Docsd7Q9BZCx83XhmuQqajxG+mzTK9Yg5UaeNaW+hgz919smL/bjvhGPd0Ef0XvA2dogWZ0vMICB
	T01ykbtORyj26c+3oR1r/06LjbSW4s2/awxSGJDurAzzIz3XcpwV7gH8tGtMKiWj3WNnjQ8+4Dnyh
	3Vw/NUSBgLnNsRxqRAcez2+KwGYpDKe74i6ZJGrf0U7mLTIbQmh99VpqKELRkoTCAVCvX9J/mu99m
	X9RNirh3zw9E+VQYqRLwUZeaXgglKHiXeC+XgxXL4wAUs1pDQpfEjf+/Q7S/n1umQUQcYmPmF48yH
	pbPOq2KjzItMyVLxoUJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp7E-003xte-L9; Wed, 08 Mar 2023 08:25:40 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZp7B-003xqZ-VL
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:25:39 +0000
Received: by mail-pj1-x1032.google.com with SMTP id y2so15833775pjg.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HmQ1DGDCvsim/eUAVVnmehqfX5INB+qOri6n+Xh4b7M=;
        b=ja3pvwxKYsODZWLHJaG2VuZWmNQpfmKYJP163NxY6eZSEtxK9Pc4Bq0jIBeCDGuV1N
         CY+LdyizTnpEyc71oy3N/B0nN+S8NzFYZGtRdJqxM2tMRJRhcBCgUkLMnEhABr8vltUK
         vvE/sQld7z2F4Xa9tX8rREl/yfxv5iuwFDH55VEY/DowuJ78Hb9uW1l/qCQXsM29/wzv
         sY6kzYTDDg7bLhxaAhrK+IeqznVFgpfJ38QiQLj+oz27TLTBTSPWXyVhnUSAu99pxlbb
         77Zw1kFfmY2rrT2zDoaaHjQnh1OW7cf/uXFYxDO6TrJSZNZZdhE/bjhCdEyYjCwZZXY0
         pgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263934;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HmQ1DGDCvsim/eUAVVnmehqfX5INB+qOri6n+Xh4b7M=;
        b=SghYL2Lz4ZT0I0BHgaQXg2vimKrZU5n2darGuHJJG8uymF60/ad3oyqN74IxcYtpSj
         BHguAz43FhsO0YUWQKlsBB40W8ssFQnD9bHmIY4uRAGgC0mTJ23bv1flDNvoQVlv8H0b
         hvmVPrXr4gwm4k9N6J4cWJBbpkCafsEyY5/oCWvuLQNxzmrHNSdP1Ee8sxl9pGQvldHn
         ev7aBb/KoODcRDT3YADDcsfCkI9ASQR9+ZyGA41dgtEDp53yBx3HX1gYrIgP5tfhjgdk
         nmZL34c+i0+8n1qiXW3e6oxGQ+6t8w7eiyqjgfopHiGUkkdG5cGTBjlwZA/5bEKvwuAc
         2JZw==
X-Gm-Message-State: AO0yUKWWq/Xww2EFyLtQUIAte6slwqouNPqaiHH3L/6b0tPXWZBaDigD
	KCURXyFRVReXeQFE98OHieUw
X-Google-Smtp-Source: AK7set/QaR2G2XDffvu6bwGqGbkv8YMS2BWcFX9/Fcze3BAVHQkdFZbz3JdykduVbrF6ybTn89x5Zg==
X-Received: by 2002:a17:903:2441:b0:19e:85e8:f78d with SMTP id l1-20020a170903244100b0019e85e8f78dmr21386676pls.65.1678263934052;
        Wed, 08 Mar 2023 00:25:34 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:25:33 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 13/13] PCI: qcom: Add support for SDX55 SoC
Date: Wed,  8 Mar 2023 13:54:24 +0530
Message-Id: <20230308082424.140224-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_002538_025973_80E653D4 
X-CRM114-Status: GOOD (  14.31  )
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

Add support for SDX55 SoC reusing the 1.9.0 config. The PCIe controller is
of version 1.10.0 but it is compatible with the 1.9.0 config. This SoC also
requires "sleep" clock which is added as an optional clock in the driver,
since it is not required on other SoCs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index a232b04af048..17dd26cbfd61 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -182,7 +182,7 @@ struct qcom_pcie_resources_2_3_3 {
 
 /* 6 clocks typically, 7 for sm8250 */
 struct qcom_pcie_resources_2_7_0 {
-	struct clk_bulk_data clks[12];
+	struct clk_bulk_data clks[13];
 	int num_clks;
 	struct regulator_bulk_data supplies[2];
 	struct reset_control *pci_reset;
@@ -1208,6 +1208,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[idx++].id = "noc_aggr_4";
 	res->clks[idx++].id = "noc_aggr_south_sf";
 	res->clks[idx++].id = "cnoc_qx";
+	res->clks[idx++].id = "sleep";
 
 	num_opt_clks = idx - num_clks;
 	res->num_clks = idx;
@@ -1836,6 +1837,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sc8180x", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sc8280xp", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sdm845", .data = &cfg_2_7_0 },
+	{ .compatible = "qcom,pcie-sdx55", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8150", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8250", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8350", .data = &cfg_1_9_0 },
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
