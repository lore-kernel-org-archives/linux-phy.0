Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6900BC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E97B61BE6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:15:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E97B61BE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4OlhT6qWqoQ8Xj7apavEZopTrVVRPqj4ahPJjQT8vk=; b=C5rhLwDqL/ngOL
	8Z2Tr0TuYiqWyIcZfJBjAQC+8LHvBnZ6HtwFVw4O8pVPjUtpuLjpcZitI/lOys73CmrrjcEq62ZWi
	YKnX1hOofQVqsESh4NkCcMgTfGARvDEau/GIp/FrsR89aSrZyv2wNfI0twOrh8l4rOqBdRRZiEBEI
	jgSgktGmZHwcszxogMgSCe7gkZiZgZ1ctmXWGtPIhnRVV2GaQqjELX4SjTHtzazqnbGiYB+BHL2Jd
	oW5vWK3d27KJIKESRhw+lMVhFB6kXOb5F3Wbb1qRbe/NxVserlG67J/KONH2HslrULdUQYHrVlcQs
	H5DDvkM0ZK+BoBu9wMcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvUW-001923-8v; Tue, 16 Nov 2021 10:15:04 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvUP-0018yY-MQ
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637057697; x=1668593697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Aqt80l1Y6tbSJAfiQi32uT4d2+Qm6+TpUaaH3QBLRUw=;
 b=cq6inByjR5oNSeCsagSww2jfuOoEDuwTSwgS/ZinyKUjUjv3oooay2I+
 qgVQRbIwZjGDYaZRmg/l9HeQOmvZurdsUt+UMfbuwdIJvMg4t1mwqyXta
 J9dnPy1YihLy273gCwYgAwoR1Fk+9tycQ1z+NEcbnr0/is4ghZyq1iuZy
 XN0rubDq1Z4bo1Dw+jjew9pzbqagCZql4cKWQudVlojsnsFN3X7ilFaMm
 x4ibc9P6KT/c2ExRfNu+B4A6qU2wHQiqoifdFIlMW+pC+iSldCHLkrRap
 IZFfl9UuDUZ9zBzTbYwwFUIMjN81y8b4VdQl/l31L9p3rGv9istgkY71n Q==;
IronPort-SDR: rs9dnnfEcHovf6tZaigQDdgATM2tySwW5i5ReS5q2HS34w6AJt7ZYk0L76SSJVCxUhMKyr1gNR
 kkwn+loo8cRKE22AN4qOh3IkH0pqagD4g3teIoDY4dR1Vh5wfDDOUwUvaZNRZAA1g9fq7X1l8I
 M6HdsIrKYo7ehhsSC4HfIYcxFOkA61TVLyv9VjwqKyYHDlbR384gZtYnA1lPR9jXk8u6KXnjLd
 4/LEOpcjcXYDMJwhFQQpP4KLoAeN15MaATs15o8/OCAr5sMo2vQ0LK15q+eoGVn+YajxkqmLAv
 I9nlnlmoT4ev8jV+yEYrbHR0
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="136710462"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 03:14:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 03:14:55 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 16 Nov 2021 03:14:53 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Date: Tue, 16 Nov 2021 11:08:15 +0100
Message-ID: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_021457_863137_5174C7A3 
X-CRM114-Status: GOOD (  11.64  )
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
device contains 7 interfaces, consisting of 2 copper transceivers,
3 Serdes and 2 RGMII interfaces. Two of the Serdes support QSGMII.
The driver also adds the functionality of "muxing" the interfaces to
different logical ports.

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

v3->v4:
- update description of the driver
- removed unused registers
- use bitfield operations in the registers
- add macros for PLL configuration
- move macros and structs at the top of the file

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

 .../phy/microchip,lan966x-serdes.yaml         |  59 ++
 drivers/phy/microchip/Kconfig                 |   8 +
 drivers/phy/microchip/Makefile                |   1 +
 drivers/phy/microchip/lan966x_serdes.c        | 548 ++++++++++++++++++
 drivers/phy/microchip/lan966x_serdes_regs.h   | 209 +++++++
 include/dt-bindings/phy/phy-lan966x-serdes.h  |  14 +
 6 files changed, 839 insertions(+)
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
