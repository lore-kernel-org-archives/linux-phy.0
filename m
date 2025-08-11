Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0106C87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 05:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=J288FiOI4VQUd3KdWrYU9mwzL5u6dmIOiaXH0LeMgbs=; b=pTY8Z1d3Le6af+
	Lftt33PHCQI53UyiS8wPcnOgeLUzYGvvHcpOflC9/R7wDiJGTNJyGi41ZiodaQQRmdZfkO3kMNvkt
	3n/Fa1E8DRBE9JGd+yi2vtihMfimZQ4XNBQi7F7ksjgtVPpnv1IFXBJzFOBJkXPMuKT7SZ3xS1y8f
	s2TM3rz82beMZyUt0qWfjZW5CE1gdYjIrj++/aeWJoHfN6ntwkfY3pNFy5txgOKpbbIau3Lu0Oc+x
	Y0KkMDpFQPwyO5X3GNgEVsJqI4ZdNsrL2w4kjiwG+Q55i4BM/1BtMb8eokuRGmxD2WyKaSEDRZ/lQ
	56BVbW5YDrQVxfpopRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhHA-00000009qvu-1B4R;
	Tue, 12 Aug 2025 05:10:20 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulh9F-00000009pQl-14Jr
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 05:02:13 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250812050200epoutp04b9487e321ff09ea1f23a278d65940423~a7GRYFO0F1749317493epoutp04f
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 05:02:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250812050200epoutp04b9487e321ff09ea1f23a278d65940423~a7GRYFO0F1749317493epoutp04f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754974920;
	bh=Ssg3FkvIoDSUUOwewES1gLVGvgAbXp8l/yQiu6KJjHc=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ci6lQz4miqajsd/8Rs/2/AUFB41lbtFg+/DQAAp+/4JbmqhCoxwsOVSUQDrdYW4Wc
	 b8FwEywojmOukwcV5OLG/SNA+Ux55sRh14gpnYZTyrBorWHkoAgmB1Iw80HQpmR5mL
	 UfTS2FVOuAn6l6V4+mBclEvRnaWFOkgF0ckxm4h8=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250812050159epcas5p3396269eda3eaf4b1ac8882203783643e~a7GQfvMkD2901229012epcas5p3_;
	Tue, 12 Aug 2025 05:01:59 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.90]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4c1K9f3Hgjz6B9mG; Tue, 12 Aug
	2025 05:01:58 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250811154648epcas5p4e55cc82e0df7d44ea55e249fef63d5fa~awP_dUo6C0894708947epcas5p44;
	Mon, 11 Aug 2025 15:46:48 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250811154646epsmtip154a28e0d8f0bee70bc8cc6c53b295bd9~awP71Ue-S2450724507epsmtip1q;
	Mon, 11 Aug 2025 15:46:45 +0000 (GMT)
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
Subject: [PATCH v3 00/12] Add PCIe support for Tesla FSD SoC
Date: Mon, 11 Aug 2025 21:16:26 +0530
Message-ID: <20250811154638.95732-1-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CMS-MailID: 20250811154648epcas5p4e55cc82e0df7d44ea55e249fef63d5fa
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154648epcas5p4e55cc82e0df7d44ea55e249fef63d5fa
References: <CGME20250811154648epcas5p4e55cc82e0df7d44ea55e249fef63d5fa@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_220210_113126_403F62BA 
X-CRM114-Status: GOOD (  17.53  )
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

FSD platform has three instances of DesignWare based PCIe IP,
one is in FSYS0 block and other two in FSYS1 block.
This patch series add required DT binding, DT file modifications,
Controller driver support and PHY driver support for the same.

To keep single PCIe controller driver and PHY driver for all Samsung
manufactured SoC, we have made changes to Exynos files to extend
support for FSD platform and other Samsung manufactured SoCs which
shall be upstreamed soon.

First a version was posted as a separate driver file:
https://lore.kernel.org/lkml/20221121105210.68596-1-shradha.t@samsung.com/
This was rejected and request was made to add the support in exynos file
itself.

Then another patchset was posted to refactor existing exynos file:
https://lore.kernel.org/lkml/649a8d88-0504-5aa9-d167-d25d394f3f26@linaro.org/T/
This requested some major changes

Taking both these reviews into consideration, I have posted a fresh
patchset where both changes to exynos framework and addition of new FSD
support is present.

v3:
 - Made separate DT bindings for Exynos5433 and FSD platforms as not
   much is shared
 - Moved all common changes to separate patch for controller and PHY
   and added FSD related changes on top
 - Removed alias method of differentiating between instances of PHY and
   added two separate compatibles.
 - Fixed smatch issues pointed out by Dan and other styling issues.

v2: https://lore.kernel.org/all/20250625165229.3458-1-shradha.t@samsung.com/ 
 - Reordered patches for removing unused MACROs and renaming them
 - Fixed all incomplete DT bindings
 - Modified PHY driver code to adopt better design
 - Removed patch to add alignment data in PCI endpoint test driver
 - Added dts changes in the patchset itself

v1: https://lore.kernel.org/lkml/20250518193152.63476-1-shradha.t@samsung.com/ 


*** BLURB HERE ***

Shradha Todi (12):
  PCI: exynos: Remove unused MACROs in exynos PCIe file
  PCI: exynos: Change macro names to exynos specific
  PCI: exynos: Reorder MACROs to maintain consistency
  PCI: exynos: Add platform device private data
  PCI: exynos: Add resource ops, soc variant and device mode
  dt-bindings: PCI: Split exynos host into two files
  dt-bindings: PCI: Add support for Tesla FSD SoC
  dt-bindings: phy: Add PCIe PHY support for FSD SoC
  phy: exynos: Add platform device private data
  phy: exynos: Add PCIe PHY support for FSD SoC
  PCI: exynos: Add support for Tesla FSD SoC
  arm64: dts: fsd: Add PCIe support for Tesla FSD SoC

 .../bindings/pci/samsung,exynos-pcie.yaml     |  70 +--
 .../bindings/pci/samsung,exynos5433-pcie.yaml |  89 +++
 .../bindings/pci/tesla,fsd-pcie-ep.yaml       |  91 +++
 .../bindings/pci/tesla,fsd-pcie.yaml          |  77 +++
 .../bindings/phy/samsung,exynos-pcie-phy.yaml |  27 +-
 arch/arm64/boot/dts/tesla/fsd-evb.dts         |  34 ++
 arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi    |  65 ++
 arch/arm64/boot/dts/tesla/fsd.dtsi            | 147 +++++
 drivers/pci/controller/dwc/pci-exynos.c       | 567 +++++++++++++++---
 drivers/phy/samsung/phy-exynos-pcie.c         | 295 ++++++++-
 10 files changed, 1300 insertions(+), 162 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/samsung,exynos5433-pcie.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/tesla,fsd-pcie-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/tesla,fsd-pcie.yaml

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
