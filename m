Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48135C636C8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 08:09:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C99B61186
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 08:09:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C99B61186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fte1lWCF0ZphHLoqKnGAWzLFYH/NZtpFDtwtKadyHjI=; b=oehWCgD2bMB4pt
	EF1LvvY2gqGu9HPXgNQwsYtuh2z5gjMvQZmtcWWmXBWs33ZTB22HNFaemsueaHKyTY+G8nwyPRvrQ
	qu+9g4zdmHLB98ETmYo1NTQXwrw98chgxqE1L0MdlF3S75Q9CZJAPhStz+3wnJSeDmVScE6w+QzfD
	JveNvp73txyNvZv1A87IHKr7YOV0S7z12XR9o6SFz0H6pnZRk8wZKn52p4KC7LnLC9j3tb89VqR+T
	I+3n6sFwZRn0ruN/IplUSqTGEcr0leONyU4PT/SVysG6uf0rB/GXh+pYEsQILHc2FlDGTI6W+swN8
	V/ed8EbSTbtLqd7bUxUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5kot-00CALN-Gm; Tue, 20 Jul 2021 08:09:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5koa-00CAEX-CW; Tue, 20 Jul 2021 08:09:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DEC5611C1;
 Tue, 20 Jul 2021 08:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626768559;
 bh=e+Xul9N8c1v7gB2wnRvFCrDRd+DUo3Ljiy1Wx5Ar1dw=;
 h=From:To:Cc:Subject:Date:From;
 b=aVKd51/c6UC5DyduiyZkuD/hdQuCxpT2zD2ieQiEldob48gs90cJniL7n6aPzkJBS
 6EsNKqTOs3tSOnbFUCBZVCzIeI4uEKAHR0nS5E2gQRENTMl3apRHXe8OGrBBvMAhbu
 Qjmf56PDdGaqAr60xQnDN+kLCWdCcJqscE422ueRAi3/g/iOhqxr0Bg5IRRJE1MxiY
 l6pGP5mwRzqXf1vKm243FMkxYh3ZMI57HzvXVEWxUqOofZXXDr8tisRvaA+T27WXJe
 XTSu2cuOx6n55vhWW8ASiTU34Wn4pOofT51Dl5dTdADocrhxdHa77fBoJwqZnXL916
 On5eF4K1UKKhQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m5koX-000eT8-Bf; Tue, 20 Jul 2021 10:09:17 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v6 0/9]  Add support for Hikey 970 PCIe
Date: Tue, 20 Jul 2021 10:09:02 +0200
Message-Id: <cover.1626768323.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_010920_507514_FB4D93AA 
X-CRM114-Status: GOOD (  21.50  )
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

This series depends on this one:
	https://lore.kernel.org/lkml/cover.1626515862.git.mchehab+huawei@kernel.org/

It is available, with its patch dependencies against v5.14-rc1 at:
	https://github.com/mchehab/linux/commits/pcie-alternate

This series add support at the pcie-kirin dirver for it to use a separate PHY driver.

Yet, in order to preserve the existing DT schema for Kirin 960, it keeps the
Kirin 960 PHY inside the pci driver. I tried to find a way to split it while keeping
the DT schema backward-compatible, but currently the PHY core doesn't allow
that, as it relies on a "phy" property at the pcie node in order to recognize the
PHY driver.

Once the pci-kiring is modified to support an external PHY driver, add a
Kirin 970 PHY and add the needed properties for the HiKey 970 board to
detect the PCIe.

It should be noticed that the HiKey 970 design uses 4 different GPIO pins, one 
for each PERST# signal for each PCIe bus device:

    - GPIO 56 has a pullup logic from 1V8 to 2V5
      connected to a PCIe bridge chip (PEX 8606);
    - GPIO 25 has a pullup logic from 1V8 to 3V3
      connected to the PERST# pin at the M.2 slot;
    - GPIO 220 has a pullup logic from 1V8 to 3V3
      connected to the PERST# pin at the PCIe mini slot;
    - GPIO 203 has a pullup logic from 1V8 to 3V3
      connected to the PERST# pin at the Ethernet chipset.

At the first versions, those were mapped as part of the pci-bus, but the
pci-bus.yaml schema only allows a single PERST# GPIO. So, on v5, those
were moved to the PHY DT schema. However, as Rob complained, on this
version, I opted to add a separate patch (the last one) that moves those
back to the PCIe of-node. 

If such patch 09/09 is accepted, then this patch for the DT schema should 
also be accepted:

   https://github.com/devicetree-org/dt-schema/pull/56

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

Also tested  that Hikey 960 keeps being supported:

  $ lspci
  00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3660 (rev 01)

---

v6:
- Use an alternative approach, in order to keep the Kirin 960 PHY internal to 
  the driver, in order to not break the DT schema. The PHY-specific code
  were made self-contained at pcie-kirin, in order to make easier to split
  it in the future, if needed.

v5:
- added "static" to hi3670_pcie_get_eyeparam() declaration on patch 6/8

v4:

- dropped the DTS patch, as it depends on a PMIC-related patch series;
- minor changes at the patch description;
- HiKey and HiSilicon are now using the preferred CamelCase format.

Manivannan Sadhasivam (1):
  arm64: dts: HiSilicon: Add support for HiKey 970 PCIe controller
    hardware

Mauro Carvalho Chehab (8):
  PCI: kirin: Reorganize the PHY logic inside the driver
  PCI: kirin: add support for a PHY layer
  PCI: kirin: Use regmap for APB registers
  dt-bindings: PCI: kirin: Fix compatible string
  dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY
  phy: HiSilicon: Add driver for Kirin 970 PCIe PHY
  dt-bindings: PCI: kirin-pcie.txt: Convert it to yaml
  phy-hi3670-pcie: move reset-gpios to the PCIe DT schema

 .../bindings/pci/hisilicon,kirin-pcie.yaml    |  87 ++
 .../devicetree/bindings/pci/kirin-pcie.txt    |  50 -
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |   2 +-
 .../phy/hisilicon,phy-hi3670-pcie.yaml        |  94 ++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  70 ++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |   1 -
 drivers/pci/controller/dwc/pcie-kirin.c       | 408 +++++---
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-pcie.c       | 896 ++++++++++++++++++
 11 files changed, 1424 insertions(+), 197 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/kirin-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
