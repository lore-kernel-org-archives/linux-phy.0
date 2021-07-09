Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D033AC07E99
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:42:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94FA1613D1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:42:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94FA1613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n0bNwfrPcOYbJqm+aclQ6qq06Gwy9P9ZxfjqgalAiUE=; b=TCX+z/vxEEENWn
	sQIGMKps6pD/YfQMWDqPSbs9Hni5erp6nTZ9TSxcs8tG2RX8zmB249ifZbOmqXkeQEfL53/Svpa7N
	cncBrmAwCCBdpwQLtKbqJZZXlrGySdlQh8fVR2p7kzysnSaLhoC5WaP2Pd0emMOAywo1zKLnEpo9o
	FqpVyKSn/dPynyIhdPSOEAyAWLIg1LVRMSb4ODIWT+wHlo4OCau87iOrSaOf2YXTBWkYuBknUTBsZ
	fRBCe7R7mxpBkySHZN+tb2IEztRciZ9GVn4jOA9xVVbvy3BwwdDHqJSd3rNgI7ncg0XV78d7vXQdM
	Sj3wyfIMw6LK5fkTI7UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nxQ-001Zen-3Q; Fri, 09 Jul 2021 10:42:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nx9-001ZVn-Je; Fri, 09 Jul 2021 10:41:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 390F5613D6;
 Fri,  9 Jul 2021 10:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625827311;
 bh=LIIAa/aqK4HB8FJB22iEgxigFKB0TfOTlDkd+ACAaEQ=;
 h=From:To:Cc:Subject:Date:From;
 b=l+AHKjtkC4zwuTRSoEPGei9fYxI51Dc8P8waNHA4MdpkUCBKqdWWk2+p2JofNH372
 AKD0zhy6ejV+UUO2ZEqD8Xr58XkRDTmx1J2an3JG6Rb5rtWbKcelyRmGTAWSpp1OAw
 s1vIKZJaHa13/cmHYiu6nk61+Yv7ekJM5lqTRf2rcmKKF+kCM32erCLOvk82/GGufA
 +0YCG6sCyJ3XKBBIh6J0lTUG2O9FSb5hco2KeV8/WN5ctCCHcbmlyMDsUeSqI/xoek
 aqumwamXfIfXiu1p/B3Y2FUfZzqHuCVKAq2ICK2dhriFSYiNtcD/16+LvyjscR3iWn
 2+MY7cCM889FA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m1nx7-00B5FP-3x; Fri, 09 Jul 2021 12:41:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v3 0/9] Add support for Hikey 970 PCIe
Date: Fri,  9 Jul 2021 12:41:36 +0200
Message-Id: <cover.1625826353.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_034151_753399_47415014 
X-CRM114-Status: GOOD (  15.63  )
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

As requested by Rob Herring, this series split the PHY part into a separate driver.
Then, it adds support for Kirin 970 on a single patch.

With this change, the PHY-specific device tree bindings for Kirin 960 moved
to its own PHY properties.

Manivannan,

Please notice that the last two patches are marked as co-developed:

	phy: hisilicon: add driver for Kirin 970 PCIe PHY
	arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller hardware

The first one contains the code you submitted in the past adding
support for Kirin 970 at the pcie-kirin driver, modified by me and
moved to a separate driver.

The second one is the DTS file, also modified by me in order to split the PHY
properties from the PCIe ones.

Please send your SoB to confirm that both changes are OK for you.

Tested on Hikey970:

  $ lspci
  00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
  01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
  06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)

  $ ethtool enp6s0
  Settings for enp6s0:
	Supported ports: [ TP	 MII ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Half 1000baseT/Full
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Half 1000baseT/Full
	Advertised pause frame use: Symmetric Receive-only
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full
	                                     100baseT/Half 100baseT/Full
	Link partner advertised pause frame use: Symmetric Receive-only
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 100Mb/s
	Duplex: Full
	Auto-negotiation: on
	master-slave cfg: preferred slave
	master-slave status: slave
	Port: Twisted Pair
	PHYAD: 0
	Transceiver: external
	MDI-X: Unknown
  netlink error: Operation not permitted
	Link detected: yes

Partially tested on Hikey 960[1]:

  $ lspci
  00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)

[1] The Hikey 960 doesn't come with any internal PCIe device.
    Its hardware supports just an external device via a M.2 slot that
    doesn't support SATA. I ordered a NVMe device to test, but the vendor
    is currently out of supply. It should take 4-5 weeks to arrive here. I'll
    run an extra test on it once it arrives.

Manivannan Sadhasivam (1):
  arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller
    hardware

Mauro Carvalho Chehab (8):
  dt-bindings: phy: add bindings for Hikey 960 PCIe PHY
  dt-bindings: phy: add bindings for Hikey 970 PCIe PHY
  dt-bindings: PCI: kirin: fix compatible string
  dt-bindings: PCI: kirin: drop PHY properties
  phy: hisilicon: add a PHY driver for Kirin 960
  PCI: kirin: drop the PHY logic from the driver
  PCI: kirin: use regmap for APB registers
  phy: hisilicon: add driver for Kirin 970 PCIe PHY

 .../devicetree/bindings/pci/kirin-pcie.txt    |  21 +-
 .../phy/hisilicon,phy-hi3660-pcie.yaml        |  82 ++
 .../phy/hisilicon,phy-hi3670-pcie.yaml        | 101 ++
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi     |  29 +-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  72 ++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |   1 -
 drivers/pci/controller/dwc/pcie-kirin.c       | 298 ++----
 drivers/phy/hisilicon/Kconfig                 |  20 +
 drivers/phy/hisilicon/Makefile                |   2 +
 drivers/phy/hisilicon/phy-hi3660-pcie.c       | 325 +++++++
 drivers/phy/hisilicon/phy-hi3670-pcie.c       | 892 ++++++++++++++++++
 11 files changed, 1572 insertions(+), 271 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3660-pcie.c
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
