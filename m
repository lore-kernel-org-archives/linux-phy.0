Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18E7FC4167B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1L95YYKpPAzWnLfEOJTTs16aPfk3til4m5tBGRKGhJE=; b=ItBdGfJwmHzav9
	hpkydF6RWmXDEWF1lHWPn3gPhtbKBht5giih+4trv/YukUAXvP4V7/z6FogCdu+Rqkal8koEVHHvS
	Z/G2ytbn19hufcjbXCa74vkJ0AWnNaKGwSprz3hJyp9tCV2lyczKsXCBTA5IgokR8qS4Tgg1yrU/C
	O3TSc3BvXs/HFOROtsTMKdDWeW9p2vciXBDcma7wYPmgD6JCl/Hx0E1C5nbhgbrBb5SfhAkZDigz7
	fQj2vkPPcqSfSmGcMql1DHsu4K+wzdhFsA8ZF5Nzy28/e1YIyBmLma+vB1fRorKUj4hXKFeRwqrZX
	GlW05RICEw/9kEllW5iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaQ4-00Dxbf-CF; Sat, 18 Dec 2021 14:10:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaQ1-00DxZW-Ox
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:10:39 +0000
Received: by mail-lf1-x129.google.com with SMTP id b40so10730202lfv.10
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MJD3i4LNvk3j5OqCXxhWKJZIrOos2jbPnsDYbhu5cbY=;
 b=U/R7IWDRxahH18MdtRwF1v9VXaR3mzszn8X43svfJb1nwJX4gSSZS66Buu+X2CJNem
 nJC+ETkBAGgaPp2SUTT/+cb63z+jg2Yu8BbFdP9kYrV38lpDDKbLdHf+WZxkxNbv3hTo
 x4RyY1tned1wjtXGViDgUSrrEJ7MWqJQBRAhxDCA64m5JsW673nXb30N8eAJIlShnt1C
 ZOUaymbwDFfpcAxawL1efw1k5IgxP6i0xVjG14urMNrIGb6UbsWK2mL20qdiw6xJ0iro
 5HIwts5KQuOYzLdS4RfZquG49xfAchug4+pXbG1OEOU77jT4JZ7yTkUWDfkCOIC6DyJn
 PEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MJD3i4LNvk3j5OqCXxhWKJZIrOos2jbPnsDYbhu5cbY=;
 b=Ud0YGH+cPpbvCh4zeIWgkyWl8DSYzIUXO+GfaLrveMvJlIK1SdUHqhxgjejfJW/3XH
 gkAM/lij5LNf57xuGkQ+xdyTngO1I9n3T/P0B5WVb7J0uujdodqfNrm3I7iTojnS0uDQ
 +pRL9CmMX156QScd37/rjnAnwVHCIvr2p+AoMzQxXdqyErHHFAmO7V37u7hTWDDNbRdc
 zNwjgEEMF7nSASuhkdXQYmK66/+gud6owIaOMZ1YyYGHMLuJ/Ofq3IEvHIlbo/DMxNr7
 r9gi2icFKNU9LdqPG4ijH31DfVpbaDH6xOtDkvyoEPsTUj8FiFWW0wClgS9xitS6+BBJ
 x7mQ==
X-Gm-Message-State: AOAM530yuYwsNmyqMZ9e3fYSC1WMzcZzXvNvqjzZ8Wtb6To2PH9QzyRD
 JdiuX+UsiSM+lkg9ntRV9qKcsA==
X-Google-Smtp-Source: ABdhPJw4gmIsvWUIkTGVcUvJG7SDQCnhLHlVHWepghCKwDrLGuvKEp1/vSo8nQG5IhhVw7MYZRa6ig==
X-Received: by 2002:a05:6512:682:: with SMTP id
 t2mr7065881lfe.503.1639836636089; 
 Sat, 18 Dec 2021 06:10:36 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id c2sm145789lfh.189.2021.12.18.06.10.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:10:35 -0800 (PST)
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
Subject: [PATCH v5 4/5] PCI: qcom: Add interconnect support to 2.7.0/1.9.0 ops
Date: Sat, 18 Dec 2021 17:10:23 +0300
Message-Id: <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061037_838450_E1A8005B 
X-CRM114-Status: GOOD (  12.19  )
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

Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
bandwidth according to the values from the downstream driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d8d400423a0a..55ac3caa6d7d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -12,6 +12,7 @@
 #include <linux/crc8.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/interconnect.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
@@ -167,6 +168,7 @@ struct qcom_pcie_resources_2_7_0 {
 	struct clk *pipe_clk_src;
 	struct clk *phy_pipe_clk;
 	struct clk *ref_clk_src;
+	struct icc_path *path;
 };
 
 union qcom_pcie_resources {
@@ -1121,6 +1123,10 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	if (IS_ERR(res->pci_reset))
 		return PTR_ERR(res->pci_reset);
 
+	res->path = devm_of_icc_get(dev, "pci");
+	if (IS_ERR(res->path))
+		return PTR_ERR(res->path);
+
 	res->supplies[0].supply = "vdda";
 	res->supplies[1].supply = "vddpe-3v3";
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(res->supplies),
@@ -1183,6 +1189,9 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 	if (pcie->cfg->pipe_clk_need_muxing)
 		clk_set_parent(res->pipe_clk_src, res->phy_pipe_clk);
 
+	if (res->path)
+		icc_set_bw(res->path, 500, 800);
+
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
 	if (ret < 0)
 		goto err_disable_regulators;
@@ -1241,6 +1250,8 @@ static void qcom_pcie_deinit_2_7_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 
 	clk_bulk_disable_unprepare(res->num_clks, res->clks);
+	if (res->path)
+		icc_set_bw(res->path, 0, 0);
 
 	/* Set TCXO as clock source for pcie_pipe_clk_src */
 	if (pcie->cfg->pipe_clk_need_muxing)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
