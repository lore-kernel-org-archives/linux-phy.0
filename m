Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E785DC004D4
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5zPS5dhRccGseLHTHQQC/vC2Taq6ZRU7eWbr1iSIOQ=; b=rShA2RowBMqrx7
	gO2jFsW0ja1WRNUDovqWLTeC8QBSjJdgF7212Iy2uHTx8MbCH3jQdv7uRtSj41aeKz53y24l/+4gr
	jsywcfm5xoJaCUQWm/ld3jGUUYUKYqeQpkAWDnERWEShasiJSEdOnxDTBx36oHUSG3ZBD56XwlcYc
	KcRLq0ptosJFid8ZHlfVfIx10PWu5LIBjMgYWt7NvQnkVbX6yqkoSZrwjAzhE4nJztJciHxQgrnfy
	mBLheqgdIAS5pfGjJ889cL/621cBEqSu0H6RqA6qDRpYp7thf0lNgfrQFV6IGDTgLBjBqqhM7BbbV
	GQNh+14zmqn3Yptf1qGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXn-005EJm-0l; Thu, 19 Jan 2023 14:05:31 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXg-005EEc-Jf
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:26 +0000
Received: by mail-wm1-x332.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso2157993wmn.5
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnjm/PMfCWBhtrU2iGU0gG9+KDqoUzC+C9XvnUy9xOc=;
        b=M0O7PQaCGbV0hMlBcsh03sRfPVTNskwhjem187W4uuej4J5RtyB+jYc8c2OnJJfFmC
         oZe/BTbbPyI2bYXggtFLLdK3G4NQw5KrE9rLIC07z4v/Tn5Ke1HTn1rk+aZtGG9MdHar
         SfVnXT6hXblTh9g5OhkWdQ/tVIbMGaHSnO7iLt4pnMVcEm/X8SuXJZO6Yrr5k+ocFmaw
         nXKB4Iw89bYgdOXW/idAPWdqGyXDtHSkWo3ME6qzizd9Hs8UqAUlATNrJaaTyvLkxHTY
         wBK7s6Dbtx4HjyzfBMu8SVesBOdIsPWd8nl445KGqlaflELTVG4Lw/4ZUc3UTI4SPYGq
         slEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnjm/PMfCWBhtrU2iGU0gG9+KDqoUzC+C9XvnUy9xOc=;
        b=i/TDn49n01/ZVu66uQP/DntAEAszUSzRrNRBT4O21uOFNXyNdzIdPUbduYXAbHKN8R
         C8RfvaMNDC/WDyHo4vujP2X7vvJVG6FhbW9c6daDYCPFQhwipjX0zNJYKXcojPLS0wZr
         P3mr8tA5195hE+9ELPO3z+HhPrNxY3kSBDSl1VDJd5JI5lFl1QdSfIXT/x7BZVTv7H03
         2YvwVhrS0aqtReEZfP1dYMU6T3G0YvI2hJXD8lrAwP5tlN+CMklhhSgo8PoNLry6s8qL
         MfA9GODqHhYLZBVkyJewGMzdzJEi/Kx6AimUuegjYDSFaGrDWyPDcbkDHi+QekgeNIaS
         qy+g==
X-Gm-Message-State: AFqh2kr2hp7x8nTD9I35K+a6sacMbwesbLJjFbGDk8CnFfvUKhOh218j
	oVD0nEjElxx33bJs+8czZyFvNg==
X-Google-Smtp-Source: AMrXdXtphli43eFWHG1PjJ2mKVvRbspfaY8ujSfwWfzIsqOG/XGx12InmUGDoNDQm10pyYnxc0FWpQ==
X-Received: by 2002:a05:600c:4e05:b0:3d3:5a4a:9103 with SMTP id b5-20020a05600c4e0500b003d35a4a9103mr10304805wmq.31.1674137123398;
        Thu, 19 Jan 2023 06:05:23 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:22 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 10/12] PCI: qcom: Add SM8550 PCIe support
Date: Thu, 19 Jan 2023 16:04:51 +0200
Message-Id: <20230119140453.3942340-11-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119140453.3942340-1-abel.vesa@linaro.org>
References: <20230119140453.3942340-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060524_699493_AC12AEFB 
X-CRM114-Status: GOOD (  13.39  )
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
---

The v3 of this patchset is:
https://lore.kernel.org/all/20230119112453.3393911-1-abel.vesa@linaro.org/

Changes since v3:
 * renamed cnoc_pcie_sf_axi to cnoc_sf_axi

Changes since v2:
 * none
 
Changes since v1:
 * changed the subject line prefix for the patch to match the history,
   like Bjorn Helgaas suggested.
 * added Konrad's R-b tag


 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 77e5dc7b88ad..30f74bc51dbf 100644
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
+	res->clks[idx++].id = "cnoc_sf_axi";
 
 	num_opt_clks = idx - num_clks;
 	res->num_clks = idx;
@@ -1828,6 +1829,7 @@ static const struct of_device_id qcom_pcie_match[] = {
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
