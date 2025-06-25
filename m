Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A20C77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jun 2025 02:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQVl28OEoDDxw0HpJ9bFjB2fbDvUCavEbUh3U34lUH8=; b=Sk0z6e6bvz1XV/
	1LuM/Xci82+d7mQMghcb3ojTw+IjEouckypu3MZk8qiCtkr6wy52kUDPKovMgNhGXCVfUb8Lwxt8i
	o9LRC4RCJzZ+XD2vlNshUrcVQsBAhqlhbGo162coOMRqDD9R0hR6w4HWdDWq6eQOpUOJhTY4B5EqJ
	fKutxhWgIyOUJ3tz5Q0RZcY9S8Pzy9X7sF7Wy5v97YDcka8JoY+Y2x5BurAZQwih2oJBM15/hW/pC
	NGdSNlKNaWW27XQ63CY18lp09MOvW3ihbXZ1Wa+WJ3A+vPQuzC1gZPw3ypLdqQVenpftnar6LbrLI
	G83+hvP4ET8fwJ6hwcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUcaz-0000000ATfi-3mlP;
	Thu, 26 Jun 2025 02:44:13 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUcUO-0000000ASOx-2VSL
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 02:37:26 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250626023722epoutp014e17e5bed84beb3dd61b7fa304bb1bc9~MdzlDXWny0833508335epoutp01r
	for <linux-phy@lists.infradead.org>; Thu, 26 Jun 2025 02:37:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250626023722epoutp014e17e5bed84beb3dd61b7fa304bb1bc9~MdzlDXWny0833508335epoutp01r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1750905443;
	bh=9jzUBK4rfaWiMXa828Ff+bfipS/KVj9eyi+oP2TMhHY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XFthsoYhxPVBZGIn4ijlvQNek8TKNJelMJMeyFEhhavzpoDc6kfiWhcdk6fyYZD8Q
	 Ytevyj9Q2Codlab+gL6zX33Mizb1yq3jMlSvBZrNK9pHUC4063pb/9XAznWFoLVELO
	 vfr4QYNoAkg4dkU7UMdM+3pUAKdb7EYwajTNg0hM=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250626023722epcas5p36a5140741b9bd88cc7b90a44f9c9d3a8~MdzkMXEq-0375103751epcas5p34;
	Thu, 26 Jun 2025 02:37:22 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.179]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4bSNBR5LsWz6B9m7; Thu, 26 Jun
	2025 02:37:19 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250625165258epcas5p4ddbbcfa60703f3682b94ae4eb814da7e~MV1UxW_BP0913509135epcas5p4s;
	Wed, 25 Jun 2025 16:52:58 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250625165255epsmtip289f7380990344ec0cb7618be15119205~MV1R5dbAo1750917509epsmtip2I;
	Wed, 25 Jun 2025 16:52:55 +0000 (GMT)
From: Shradha Todi <shradha.t@samsung.com>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-fsd@tesla.com
Cc: manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de,
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com,
	Shradha Todi <shradha.t@samsung.com>, Hrishikesh Dileep
	<hrishikesh.d@samsung.com>
Subject: [PATCH v2 03/10] PCI: exynos: Reorder MACROs to maintain
 consistency
Date: Wed, 25 Jun 2025 22:22:22 +0530
Message-ID: <20250625165229.3458-4-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250625165229.3458-1-shradha.t@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250625165258epcas5p4ddbbcfa60703f3682b94ae4eb814da7e
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250625165258epcas5p4ddbbcfa60703f3682b94ae4eb814da7e
References: <20250625165229.3458-1-shradha.t@samsung.com>
	<CGME20250625165258epcas5p4ddbbcfa60703f3682b94ae4eb814da7e@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_193724_954470_26CBBDBD 
X-CRM114-Status: GOOD (  14.99  )
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

Exynos PCI file follows MACRO definition order where
register offset is defined in ascending order and each
bit field within the offset is defined right after offset
definition. Some MACROs are out of order and so reorder
those MACROs to maintain consistency.

Suggested-by: Hrishikesh Dileep <hrishikesh.d@samsung.com>
Signed-off-by: Shradha Todi <shradha.t@samsung.com>
---
 drivers/pci/controller/dwc/pci-exynos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index 30d12ff9b0c6..b4ec167b0583 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -27,11 +27,11 @@
 
 /* PCIe ELBI registers */
 #define EXYNOS_PCIE_IRQ_PULSE			0x000
+#define EXYNOS_PCIE_IRQ_EN_PULSE		0x00c
 #define EXYNOS_IRQ_INTA_ASSERT			BIT(0)
 #define EXYNOS_IRQ_INTB_ASSERT			BIT(2)
 #define EXYNOS_IRQ_INTC_ASSERT			BIT(4)
 #define EXYNOS_IRQ_INTD_ASSERT			BIT(6)
-#define EXYNOS_PCIE_IRQ_EN_PULSE		0x00c
 #define EXYNOS_PCIE_IRQ_EN_LEVEL		0x010
 #define EXYNOS_PCIE_IRQ_EN_SPECIAL		0x014
 #define EXYNOS_PCIE_SW_WAKE			0x018
@@ -42,9 +42,9 @@
 #define EXYNOS_PCIE_NONSTICKY_RESET		0x024
 #define EXYNOS_PCIE_APP_INIT_RESET		0x028
 #define EXYNOS_PCIE_APP_LTSSM_ENABLE		0x02c
+#define EXYNOS_PCIE_ELBI_LTSSM_ENABLE		0x1
 #define EXYNOS_PCIE_ELBI_RDLH_LINKUP		0x074
 #define EXYNOS_PCIE_ELBI_XMLH_LINKUP		BIT(4)
-#define EXYNOS_PCIE_ELBI_LTSSM_ENABLE		0x1
 #define EXYNOS_PCIE_ELBI_SLV_AWMISC		0x11c
 #define EXYNOS_PCIE_ELBI_SLV_ARMISC		0x120
 #define EXYNOS_PCIE_ELBI_SLV_DBI_ENABLE		BIT(21)
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
