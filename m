Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0D8C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9365260F6C
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 09:51:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9365260F6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzL3uBct6CDbT/AQelvISc3Eu5zNCVxENv8See8wPCU=; b=avV2lzfWZXkOrr
	DDuwUst3VT9mbaX1s5udQ4Q4pX8GNONsnWg2Bbhi1Spjlh6R6QtGa3tkFxn+PRjXGoAlB+DiMeyRQ
	QSFK4Xq4xkcJyRWI/zgFSMQQAVXwxYBHjh+uz5c+vHk0hTwd2oGGZAi+Go0FkbzievRl91fObkAho
	hawr2BHKose5o73VSq6OcgSR5L+45xot+mz7bF28d3rq5SkW5XBWS7Xz+ETuu+rEX3KrfIKVXujn3
	fCmO97AAz/46suclhTFN80bSepJ0kqJDwa+SI3Q1+LCoWEGb9nvO8Y4zDbo8Y7od6WDZDY4nW+ZSr
	zWqfNpurvppAvDYfd54w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSFxG-001BOd-2t; Mon, 20 Sep 2021 09:51:18 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSFxC-001B9y-Hr
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 09:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632131474; x=1663667474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nG1+qtmEDFsFcOLpAMVYCqRxXWk4yUD9XWvxrO9U8y4=;
 b=OE6GK8ZZhJa3K1w63pnEwdBEPxCfXDQfJIxdKu57qh3S7UlSayhynWbA
 aO2moGB7YIekG9AClf/gPjEktWURw4Evbpmr2pbsuu/EGCTdiIFUd+hNf
 QYv55vgeAlz0mF0tKsH5TnB0t01+Vbu8d2QWuRuoa+c5cHo/9U8KoKhGa
 3CL5zeHTyLZkomJ+cSvoS02OQ3GkPkXXPrdnjOG8jxWDmJWSgtk+aXErU
 zw9wuMP45R/GXf5O/DzwsrcKmKMKQQcS8MR3vUvbxd+eB5p6kikpC6ocU
 MgY7LyQCOuFDjeoDjVdvKr20DrGBOktcKji+3MuErm0OlD57dprPL1BTV g==;
IronPort-SDR: 0/4JdHHAnTdixmi1+h8qKSF54uSsd5GNf0W1J8QZC9s8uYTPpMJgp681X64gAWuhj7lBEo2bBe
 4kXlYrPpmdNCiQH0CsXPbfmg7priVDZL29mFJF+MfVQmQR2Yku7xgrslpB/FFMXhQ3zQ9OYrWW
 hw3yoBWsor6tQXVXgMLVS88DFvyw/JezNNf1jYlToarXcicL4Q5ku4X2MyozxzDlKYnrDNY6c9
 LGhkXArdP5tbRQTexbsqzfhg0/ngvLA30Wlmk5PHygJbPvV3xDWexjQDl6rz4nENC+yPctb+11
 pweguuHzFbLzl3nLP/uryNp0
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="132434705"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Sep 2021 02:51:13 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 20 Sep 2021 02:51:12 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Mon, 20 Sep 2021 02:51:09 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [RFC PATCH net-next 00/12] Add lan966x driver
Date: Mon, 20 Sep 2021 11:52:06 +0200
Message-ID: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_025114_704080_2D071027 
X-CRM114-Status: GOOD (  13.98  )
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

This patch series cover multiple drivers but I have put everything in one
single series so it would be easier to follow the big picture. Eventually
this series will be split in multiple ones once we drop the RFC.

The Microchip LAN966X is a compact and cost-effective, multi-port Gigabit
AVB/TSN Ethernet Switches with two integrated 10/100/1000BASE-T PHYs and a
600 MHz ARM Cortex A7 CPU subsystem. The LAN966X includes eight ports.

In addition to the two integrated PHYs, the lAN966X supports up to
2 RGMII/RMII, up to 3 1000BASE-X/SerDes/ 2.5GBASE-X/KX, and up to
2 Quad-SGMII/Quad-USGMII interfaces. The LAN966X fully supports the IEEE
family of Audio Video Bridging (AVB) and Time Sensitive Networking (TSN)
standards, including the current IEC/IEEE draft 60802 TSN profile,
which in concert provide high Quality of Service (QoS) for latency
sensitive traffic streams over Ethernet.

The LAN966X supports TSN domain protection though IEEE 802.1Qci Per Stream
Filtering and Policing, advanced classification rules, and tunneling by
adding VLAN tags. Each egress port supports eight priorities. Prior to
scheduling, traffic can be shaped using dual-leaky bucket shaping,
IEEE 802.1Qav Credit Based Shaping, and IEEE 802.1Qbv Time Aware Shaping,
thus also supporting IEEE 802.1Q Enhanced Transmission Selection.

Low latency is possible though latency optimized architecture,
cut-through, and IEEE 802.1Qbu/802.3br Preemption. For higher traffic
availability, the LAN966X supports Multiple Spanning Tree, IEEE 802.1CB
Frame Replication and Elimination for Redundancy, IEC 62439-2 MRP,
ODVA DLR, in addition to ITU-T G.8031 and G.8032 linear and ring
protection.

The LAN966X supports IEEE 802.1AS-2020 (gPTP) and IEEE 1588-2019 (PTP)
time synchronization with time stamping in multiple domains in
support of Working Clock and Global Time distribution.

The LAN966X can operate either as a standalone switch or as a system
co-processor with an external host CPU. The external host can manage the
switch via PCIe or an Ethernet port.

This series provides support for:
- support for integrated PHY
- host mode providing register based injection and extraction

More support will be added in future patches.

Horatiu Vultur (12):
  net: mdio: mscc-miim: Fix the mdio controller
  net: phy: mchp: Add support for LAN8804 PHY
  phy: Add lan966x ethernet serdes PHY driver
  dt-bindings: reset: Add lan966x switch reset bindings
  reset: lan966x: Add switch reset driver
  dt-bindings: reset: Add lan966x power reset bindings
  power: reset: Add lan966x power reset driver
  dt-bindings: net: lan966x: Add lan966x-switch bindings
  net: lan966x: add the basic lan966x driver
  net: lan966x: add port module support
  net: lan966x: add mactable support
  net: lan966x: add ethtool configuration and statistics

 .../net/microchip,lan966x-switch.yaml         | 114 ++
 .../bindings/power/lan966x,power.yaml         |  49 +
 .../bindings/reset/lan966x,rst.yaml           |  58 +
 drivers/net/ethernet/microchip/Kconfig        |   1 +
 drivers/net/ethernet/microchip/Makefile       |   1 +
 .../net/ethernet/microchip/lan966x/Kconfig    |   7 +
 .../net/ethernet/microchip/lan966x/Makefile   |   9 +
 .../microchip/lan966x/lan966x_ethtool.c       | 578 ++++++++++
 .../ethernet/microchip/lan966x/lan966x_ifh.h  | 173 +++
 .../ethernet/microchip/lan966x/lan966x_main.c | 994 ++++++++++++++++++
 .../ethernet/microchip/lan966x/lan966x_main.h | 192 ++++
 .../microchip/lan966x/lan966x_phylink.c       |  92 ++
 .../ethernet/microchip/lan966x/lan966x_port.c | 301 ++++++
 .../ethernet/microchip/lan966x/lan966x_regs.h | 704 +++++++++++++
 drivers/net/mdio/mdio-mscc-miim.c             |  14 +-
 drivers/net/phy/micrel.c                      |  73 ++
 drivers/phy/microchip/Kconfig                 |   8 +
 drivers/phy/microchip/Makefile                |   1 +
 drivers/phy/microchip/lan966x_serdes.c        | 525 +++++++++
 drivers/phy/microchip/lan966x_serdes_regs.h   | 482 +++++++++
 drivers/power/reset/Kconfig                   |   6 +
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/lan966x-reset.c           |  90 ++
 drivers/reset/Kconfig                         |   8 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-lan966x.c                 | 128 +++
 include/dt-bindings/phy/lan966x_serdes.h      |  14 +
 include/linux/micrel_phy.h                    |   1 +
 28 files changed, 4620 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
 create mode 100644 Documentation/devicetree/bindings/power/lan966x,power.yaml
 create mode 100644 Documentation/devicetree/bindings/reset/lan966x,rst.yaml
 create mode 100644 drivers/net/ethernet/microchip/lan966x/Kconfig
 create mode 100644 drivers/net/ethernet/microchip/lan966x/Makefile
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_ethtool.c
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_ifh.h
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_main.c
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_main.h
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_phylink.c
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_port.c
 create mode 100644 drivers/net/ethernet/microchip/lan966x/lan966x_regs.h
 create mode 100644 drivers/phy/microchip/lan966x_serdes.c
 create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
 create mode 100644 drivers/power/reset/lan966x-reset.c
 create mode 100644 drivers/reset/reset-lan966x.c
 create mode 100644 include/dt-bindings/phy/lan966x_serdes.h

-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
