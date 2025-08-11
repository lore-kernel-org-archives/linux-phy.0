Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24EAEC87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 05:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQVl28OEoDDxw0HpJ9bFjB2fbDvUCavEbUh3U34lUH8=; b=K92jyoL3vxkbAH
	FOCJqFnk3F6ji28ZeBSE1PH1kcCTaQ0AS1zQUwPK2J9O6K6DTIbZFJMBCUv21Iv7ppP7ZxKZX9kt9
	InhpmhbPGNa7RAe1xFKPPEliRnvK9WHLYPTDNz54UcVX22g49QY0GLlWXmYiPjXZyH9REIenchlXz
	pwBQ50M6ew0oMAFARm5AaOBH01c/9RD8kxUTLJZ0xLhEIsWRqrIbVCctJvZ0OqS72M9at0sZ/etD8
	ChoCWaTZ2EmWeR0h0f5NUbB1QQxL3SfhlV0470beVHp8gTZmq2lAUKthauMpbpVTWsBSOlb5HvjtC
	YtgtWMFIunHwk2UJCxWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhJm-00000009rAi-3Mf4;
	Tue, 12 Aug 2025 05:13:02 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulh9I-00000009pSM-3kFA
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 05:02:14 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250812050210epoutp02f0070718405e7a9e88b1133b71be119f~a7GaiIs1g1104311043epoutp02U
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 05:02:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250812050210epoutp02f0070718405e7a9e88b1133b71be119f~a7GaiIs1g1104311043epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754974930;
	bh=9jzUBK4rfaWiMXa828Ff+bfipS/KVj9eyi+oP2TMhHY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ewzRzfjdD+rGZQUrb53CHsSWxmdMv4pv2LzRl54Dn7cmG9h5VafW9DawSKw/+6ihf
	 Q+3mkxtgza6Y2a/Une+vi+uHGsvYlyfZqei9XRri/R9c7KORlHsMZyhT+o6OlyPIq0
	 f+Rau/ceCdxg4O031Yxte+i1IqKSHS2CM8hJBkxc=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250812050209epcas5p3a662df55d72938c3f5a0dec5e6319438~a7GZo9hgF3131631316epcas5p3A;
	Tue, 12 Aug 2025 05:02:09 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.95]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4c1K9r2vyKz2SSKk; Tue, 12 Aug
	2025 05:02:08 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250811154707epcas5p20e96a10de3fffcaaf95861358811446c~awQPcuMVZ3176231762epcas5p2H;
	Mon, 11 Aug 2025 15:47:07 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250811154704epsmtip162c8233ab8832adbf5a91ec5952181e5~awQMuN8Ho2450424504epsmtip1J;
	Mon, 11 Aug 2025 15:47:04 +0000 (GMT)
From: Shradha Todi <shradha.t@samsung.com>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de,
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com,
	Shradha Todi <shradha.t@samsung.com>, Hrishikesh Dileep
	<hrishikesh.d@samsung.com>
Subject: [PATCH v3 03/12] PCI: exynos: Reorder MACROs to maintain
 consistency
Date: Mon, 11 Aug 2025 21:16:29 +0530
Message-ID: <20250811154638.95732-4-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250811154638.95732-1-shradha.t@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250811154707epcas5p20e96a10de3fffcaaf95861358811446c
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154707epcas5p20e96a10de3fffcaaf95861358811446c
References: <20250811154638.95732-1-shradha.t@samsung.com>
	<CGME20250811154707epcas5p20e96a10de3fffcaaf95861358811446c@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_220213_331642_E79FF6C4 
X-CRM114-Status: GOOD (  13.21  )
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
