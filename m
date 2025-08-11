Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F521CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 05:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu+KEtqTCC8vfJDm4QI9qz/HByg9Mq0EPWB7m68UD/g=; b=uybljf8G7mCorK
	9Qsj+wESgjXjPViKvWzkJVaa3i2eASS3vDMv/h17xcYfX5aB7n83UvwDlErIjPeRmopv3xy71xB/O
	+oS0VnqAn/UqWLexzozw1Iq5yzI8fl4rZVmVMejZb26YenM5pdRe0qzz0taqLsHPk2duQERa+UfU2
	5PdJzuZEXNLMQKmiHPOVg32TBXP/ocSQpcbhUDsSViKzJUmz+0oOWHIjprM7dneOlIVxKDu/V3+Ym
	CRRent9wfuPO9zB59BJzfYbUBlF7ja3M+naOQ72kzAYzbGEx1uajvuTkV/N6iUaFz8W3+zh4zRZHt
	hyLCuSLOpEwA1JiMfKgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhJn-00000009rAu-0cmE;
	Tue, 12 Aug 2025 05:13:03 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulh9L-00000009pU0-0cfm
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 05:02:16 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250812050213epoutp01262d3258cb6f66d2be81dfe5af826648~a7GdclLVK1032510325epoutp01p
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 05:02:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250812050213epoutp01262d3258cb6f66d2be81dfe5af826648~a7GdclLVK1032510325epoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754974933;
	bh=oCjJPMBrsTZ0lEVw44tKYRd0FGCL7YY4EZJtpYnUOU8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KE4FXCWRrJgHdYiwdKVwBz39Fsyqj0/NysKyzunVIFyDMmwsTh3phQxu/eOKDKp/9
	 OCzU8pICk+Mv6GqLj61Ik/JO5c9f3nnW4pVaJg+lyZ9oFkiH/pO52oozghyEiWlPAc
	 Kw4SEO7fJ7SnVyYPRBrsCy1HWkxktNYHsmYNbZGk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250812050212epcas5p13c4c2fce756f008616d0ee5437a29222~a7Gc0nTQg0589005890epcas5p1d;
	Tue, 12 Aug 2025 05:02:12 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.95]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4c1K9v5rK9z3hhTC; Tue, 12 Aug
	2025 05:02:11 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250811154711epcas5p1847566b0216447ad0976472dddf096dd~awQTokfzx2229822298epcas5p1J;
	Mon, 11 Aug 2025 15:47:11 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250811154708epsmtip1f8ce936834e2899393b7b76e1e7f6c93~awQRA13uZ2560925609epsmtip1L;
	Mon, 11 Aug 2025 15:47:08 +0000 (GMT)
From: Shradha Todi <shradha.t@samsung.com>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de,
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com,
	Shradha Todi <shradha.t@samsung.com>
Subject: [PATCH v3 04/12] PCI: exynos: Add platform device private data
Date: Mon, 11 Aug 2025 21:16:30 +0530
Message-ID: <20250811154638.95732-5-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250811154638.95732-1-shradha.t@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250811154711epcas5p1847566b0216447ad0976472dddf096dd
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154711epcas5p1847566b0216447ad0976472dddf096dd
References: <20250811154638.95732-1-shradha.t@samsung.com>
	<CGME20250811154711epcas5p1847566b0216447ad0976472dddf096dd@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_220215_516562_D60D1800 
X-CRM114-Status: GOOD (  18.76  )
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

In order to extend this driver to all Samsung manufactured SoCs having
DWC PCIe controller, add private data structure which will hold platform
device specific information. It holds function ops like DWC host ops,
DWC generic ops, and PCI read/write ops which will be used as driver
data for different compatibles.

Suggested-by: Pankaj Dubey <pankaj.dubey@samsung.com>
Signed-off-by: Shradha Todi <shradha.t@samsung.com>
---
 drivers/pci/controller/dwc/pci-exynos.c | 32 ++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index b4ec167b0583..c830b20d54f0 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -49,9 +49,16 @@
 #define EXYNOS_PCIE_ELBI_SLV_ARMISC		0x120
 #define EXYNOS_PCIE_ELBI_SLV_DBI_ENABLE		BIT(21)
 
+struct samsung_pcie_pdata {
+	struct pci_ops				*pci_ops;
+	const struct dw_pcie_ops		*dwc_ops;
+	const struct dw_pcie_host_ops		*host_ops;
+};
+
 struct exynos_pcie {
 	struct dw_pcie			pci;
 	void __iomem			*elbi_base;
+	const struct samsung_pcie_pdata	*pdata;
 	struct clk_bulk_data		*clks;
 	struct phy			*phy;
 	struct regulator_bulk_data	supplies[2];
@@ -220,7 +227,7 @@ static int exynos_pcie_host_init(struct dw_pcie_rp *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct exynos_pcie *ep = to_exynos_pcie(pci);
 
-	pp->bridge->ops = &exynos_pci_ops;
+	pp->bridge->ops = ep->pdata->pci_ops;
 
 	exynos_pcie_assert_core_reset(ep);
 
@@ -268,7 +275,7 @@ static int exynos_add_pcie_port(struct exynos_pcie *ep,
 	return 0;
 }
 
-static const struct dw_pcie_ops dw_pcie_ops = {
+static const struct dw_pcie_ops exynos_dw_pcie_ops = {
 	.read_dbi = exynos_pcie_read_dbi,
 	.write_dbi = exynos_pcie_write_dbi,
 	.link_up = exynos_pcie_link_up,
@@ -279,6 +286,7 @@ static int exynos_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct exynos_pcie *ep;
+	const struct samsung_pcie_pdata *pdata;
 	struct device_node *np = dev->of_node;
 	int ret;
 
@@ -286,8 +294,11 @@ static int exynos_pcie_probe(struct platform_device *pdev)
 	if (!ep)
 		return -ENOMEM;
 
+	pdata = of_device_get_match_data(dev);
+
+	ep->pdata = pdata;
 	ep->pci.dev = dev;
-	ep->pci.ops = &dw_pcie_ops;
+	ep->pci.ops = pdata->dwc_ops;
 
 	ep->phy = devm_of_phy_get(dev, np, NULL);
 	if (IS_ERR(ep->phy))
@@ -363,9 +374,9 @@ static int exynos_pcie_resume_noirq(struct device *dev)
 		return ret;
 
 	/* exynos_pcie_host_init controls ep->phy */
-	exynos_pcie_host_init(pp);
+	ep->pdata->host_ops->init(pp);
 	dw_pcie_setup_rc(pp);
-	exynos_pcie_start_link(pci);
+	ep->pdata->dwc_ops->start_link(pci);
 	return dw_pcie_wait_for_link(pci);
 }
 
@@ -374,8 +385,17 @@ static const struct dev_pm_ops exynos_pcie_pm_ops = {
 				  exynos_pcie_resume_noirq)
 };
 
+static const struct samsung_pcie_pdata exynos_5433_pcie_rc_pdata = {
+	.dwc_ops		= &exynos_dw_pcie_ops,
+	.pci_ops		= &exynos_pci_ops,
+	.host_ops		= &exynos_pcie_host_ops,
+};
+
 static const struct of_device_id exynos_pcie_of_match[] = {
-	{ .compatible = "samsung,exynos5433-pcie", },
+	{
+		.compatible = "samsung,exynos5433-pcie",
+		.data = (void *) &exynos_5433_pcie_rc_pdata,
+	},
 	{ },
 };
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
