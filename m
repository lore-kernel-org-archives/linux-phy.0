Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20ADCC07E9A
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFA3A61279
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 21:47:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFA3A61279
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ypcP94ljM0E4PakDO+HQKEJVDT2M/6P10lgFE8dg6TQ=; b=k3Y81YDItYNsHr
	VBLTEvz75fu+6dVrjncM42AKG8x3Ed+mMVOsNxyB0I6M3NGXc90+9Cel0T5jKewmLIUnSl6v+Wlmj
	xWVOkHWQz8ifYb+o9d9D04IkXaiSQC5d5GB051ZzWrU7KFzVTgCH7iVgAhzVmbzDvoAxQmZnmRvTS
	ta5f9fDBb/0LtKGVDA/U+8hAsdXGLd37p10n22Xfp6lbErywlxclDJQiNud333KMVla+icZWHkMjz
	xL4YMXB7XsbfcZxqKVroIXkGzp8XgB4Rm+zppmfYIZD6MANf4kHkZmdiLJvlyed64zQG/Qkqniyk8
	IRj5OuM9If+UR2rE41hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m33lb-008Vhj-C4; Mon, 12 Jul 2021 21:47:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m33lL-008VZ8-Su; Mon, 12 Jul 2021 21:46:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7370E61283;
 Mon, 12 Jul 2021 21:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626126410;
 bh=A76EkqYiw8xU6iK26AVR4gpO0yvhJufnbCFehnXsBi8=;
 h=From:To:Cc:Subject:Date:From;
 b=Fs1mKSM6TgpgZey0UJenqO3qL0HDyVvZ8HHLiyzGxbvQ3rNzf1twwDiINu6Q19IBl
 Dnzcx3Ynr2fkmbXUkvYnTC8i3EjcoEPl92dj6ka2R2aiv3Z1eXZwJgNOjMk4qxLv7M
 pG0iV13LoKHcj4bSG6d1eGYVuhtQZNjd3xmtgt8h8ZbMIJS9PDH2nqDmSlMMAHj/Th
 rnq0ICOAGTq/OWxUn9FK18jsAeX7mbwTAGQR7uA9Ur5CwYed7XRkWADafHFrT2WLzS
 5OMgp9ITh4N9cmLJVsntDEIrkWa86Rno+fPJB5hgNO2sNkjKERn6y+Qljhcb9pGYEz
 x0G4a6uk0x7iQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m33lI-005VR8-4U; Mon, 12 Jul 2021 23:46:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 0/8] Add support for Hikey 970 PCIe
Date: Mon, 12 Jul 2021 23:46:38 +0200
Message-Id: <cover.1626126198.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_144652_015269_402C9B94 
X-CRM114-Status: GOOD (  13.94  )
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

---

v4:

- dropped the DTS patch, as it depends on a PMIC-related patch series;
- minor changes at the patch description;
- HiKey and HiSilicon are now using the preferred CamelCase format.

Mauro Carvalho Chehab (8):
  dt-bindings: phy: Add bindings for HiKey 960 PCIe PHY
  dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY
  dt-bindings: PCI: kirin: Fix compatible string
  dt-bindings: PCI: kirin: Drop PHY properties
  phy: HiSilicon: Add driver for Kirin 960 PCIe PHY
  phy: HiSilicon: add driver for Kirin 970 PCIe PHY
  PCI: kirin: Drop the PHY logic from the driver
  PCI: kirin: Use regmap for APB registers

 .../devicetree/bindings/pci/kirin-pcie.txt    |  21 +-
 .../phy/hisilicon,phy-hi3660-pcie.yaml        |  82 ++
 .../phy/hisilicon,phy-hi3670-pcie.yaml        | 101 ++
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi     |  29 +-
 drivers/pci/controller/dwc/pcie-kirin.c       | 298 ++----
 drivers/phy/hisilicon/Kconfig                 |  20 +
 drivers/phy/hisilicon/Makefile                |   2 +
 drivers/phy/hisilicon/phy-hi3660-pcie.c       | 325 +++++++
 drivers/phy/hisilicon/phy-hi3670-pcie.c       | 892 ++++++++++++++++++
 9 files changed, 1500 insertions(+), 270 deletions(-)
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
