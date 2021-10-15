Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B36C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25B806108E
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 12:40:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 25B806108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+f+UOvt7/yEgzgcE6XMU3r1FpjD/ENxjieIp4VdeOdc=; b=nQSnxhFS9NU1dS
	oUYhOKAnAxVnOf/vRLuHtbGRwNaYvvmgHAeWH9HPkX89pJ5OOodmmaL3DfHh3yMdsa+TCmDauImQ1
	YnHTCUlKtoyNA8/qgcmNhWLuTZPxmfMrsIXZ20p73t5Fdn/9VelpszyezxpODYcK33cuuOl/164gZ
	aWheEvXIoqPIribpcV1GoSFT12hAku+gmvfKoq/F1r0kv5bH4ybjUMmN8m8NFs61wupSkP/XyrkDw
	k6S31qET88T1bwydnyJ+TX0A2BgljfEL4LSDk02bcJHFoLB7qnEZ07kI1iNV/h7F13t7F+f4LI/aG
	PI2eCMHH190gGGHUvTng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbMVM-006x0Z-I9; Fri, 15 Oct 2021 12:40:08 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbMVG-006wuV-TW
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 12:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634301602; x=1665837602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=62ij9G57oyBa2LbZbUA2DQuKc+bkP7u3EcIzSJwqHlQ=;
 b=z3waH7FTsNF/al/83Fe533S6iQqCuiwh8zsmsRBB7sRVJ2SflNt7dEra
 SH7Q9eqaJHYPddSw1G1Z3WTuys85i56biB9yHN6nxsQV2hAhPu1Zg/W3q
 Vqx9b5st9hKIDycylQNLH90EFaJpeoRJBPNAVTC+6LLGzciYnf0ruf+Jx
 Ep8TqHcsNJ5DdpRbJNM+99Q2O+g+fD4gInIln73x1XzxovDZ0xVInfGAg
 WHy+mVg+Jo8ak8edyZwIU35de1XXTYdIcmMhZfvAWkWYdKitwwAN/umQO
 RpmwE2ICD51Qc+t5UmD3iaJXddDhSX78jWFzBhj/Ee73shZ401xE5kON6 A==;
IronPort-SDR: KacCpRsrocVRVtW9UKX13c3xumoF8k8BUQxUjsBKhfAwg9eRqM8yLX9U1niRytGHdwCu98UPuF
 7kFtE24C+NppyAVsdgDyNTfASYO8VJt/UU5i8Zk3bzvEV3WLE9aXLehIQTMKxm3iWbI0AsvFOC
 Z6HDjIzLbrtOM49DfV+q16qu+rVGrSVQbm+ZBjQqCa+GBgpKv9fbluCZUa2laZ6nE4BNztRyHK
 Jj/+TLTh9Sf1aUAP3bZzk3pU5GKPFwkef+gAPGuB5f9SX2FQQSNQUatcSrTGlGSKRCvNQpbBBZ
 izRQFnx3mdqozUfYXqoQ3uKO
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="73070425"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2021 05:39:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 15 Oct 2021 05:39:59 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Fri, 15 Oct 2021 05:39:57 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v3 0/3] Add driver for lan966x Serdes driver
Date: Fri, 15 Oct 2021 14:39:17 +0200
Message-ID: <20211015123920.176782-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_054003_150348_01A3491C 
X-CRM114-Status: GOOD (  10.13  )
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

This patch serie adds support for Microchip lan966x serdes. The lan966x
device which contains this serdes has 8 interfaces, consisting of 2
copper transceivers, 3 Serdes and 2 RGMII interfaces and 2 of the
Serdes support QSGMII. The driver add the functionality of "muxing" the
interfaces to different switch ports.

The following table shows which interfaces can be supported by the port.

PortNumber    Max Speed    Ethernet interface options
    0            1Gbps       CuPHY, 1G SGMII or QSGMII
    1            1Gbps       CuPHY, 1G SGMII or QSGMII
    2          2.5Gbps       2.5G SGMII, QSGMII, RGMII
    3          2.5Gbps       2.5G SGMII, QSGMII, RGMII
    4          2.5Gbps       2.5G SGMII, QSGMII
    5            1Gbps       QSGMII, RGMII
    6            1Gbps       QSGMII, RGMII
    7            1Gbps       QSGMII

v2->v3:
- remove unused includes
- add missing '...' in microchip,lan966x-serdes.yaml
- rename lan966x-serdes.h to phy-lan966x-serdes.h
- Rename CU->PHY and RG->RGMII
- update commit message for PATCH 2

v1->v2:
- replace the regmap with iomem
- update DT bindings

Horatiu Vultur (3):
  dt-bindings: phy: Add lan966x-serdes binding
  dt-bindings: phy: Add constants for lan966x serdes
  phy: Add lan966x ethernet serdes PHY driver

 .../phy/microchip,lan966x-serdes.yaml         |  45 ++
 drivers/phy/microchip/Kconfig                 |   8 +
 drivers/phy/microchip/Makefile                |   1 +
 drivers/phy/microchip/lan966x_serdes.c        | 540 ++++++++++++++++++
 drivers/phy/microchip/lan966x_serdes_regs.h   | 482 ++++++++++++++++
 include/dt-bindings/phy/phy-lan966x-serdes.h  |  14 +
 6 files changed, 1090 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
 create mode 100644 drivers/phy/microchip/lan966x_serdes.c
 create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
 create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h

-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
