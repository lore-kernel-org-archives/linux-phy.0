Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1955C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:43:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1D8E61371
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:43:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B1D8E61371
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DaPWvE9qIE0CyY/8nZy2MNsTFQy62oek//XRTfT8UJ8=; b=orHqGQrJ8JDyzh
	zIBiBh/BObm5Jow5Fsm1i07JPgA7+7N0t8rvf6f+JONfISk3ZeGfIFZBJUc5NvBtta6if8DLTvzLW
	t9M+fesunltYugsuCL4VZA/oDpabZ/EvaOpx2tkfXxVPDt3SZcAH7PFR9TkNxyWq4BfGRvB4Xtgn8
	GbS1OdH3ZBM+5cAwuCNoq7SvFeKPNuePXwlFroyQ1+llJSkj7sQBxgWA6d3A8HIohn5YnhKvZxNvG
	lj2Tvevv0HBaZO1ddoPnEyjUo8McxOf4VN0Mnt0JACY9Gr2LTG+M+RTgUtqsIGhO5Ww06hx1V/msa
	UnQpgn4ah6eT3p/EEo4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md88A-0042M9-7U; Wed, 20 Oct 2021 09:43:30 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md885-0042Jl-Ch
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 09:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634723005; x=1666259005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z47sps6aiduYq9zxghfDWy+i1+XjGukGY3TIg6+nO8E=;
 b=lrNMzcL+1ONYw2ArdjPK9G8tXMLud7b/DqzZ2uk/F6SS3oTHQV34M9Ku
 7SKUZTWSfmdTBI8aq2iRfjva93hFEgMk9TaRQQP27h3tL1nXL/jHteEof
 7zvKmDmmJ6AWNq+FsDO3U5fc8EaAeXREz2a94WldiC/vPWdY4EaZjSQv+
 ikpCmc/ZoL6z58fq0Xw/KcByiwRSkl8KeXSREeFEnv0ThWKhH4RHYwknJ
 c/+l0AhDMt33ucAmDfVt5JsFtJbvaV7+dKbwp6x8Is/2xN/ObM7DmfcqR
 +lU2x4r2BxltG19v1w8R9MP3QKIXAuAUuVmuyB0+QVdm/+tK3fpatpqDj Q==;
IronPort-SDR: QQSo92EB/7JhmETOogVnU7TUkxzNwqKjrgWO9W8yEum2fMjDr8XJkMf8D1coAjiztkfJckzHRl
 oybA6kAVxn3gklJySDUT0OCpoSlLpzM72xSx9m63XYUqRm7cXZraEpugaamhoxq9e6wH2cIv8z
 Jre7MHFWlhF5HAfbGbxoKRthDNJ4gsLbSm/lKhKODWqYaUPKnY2y6dnHFxKRqyoVudqykCADpn
 vwIljsjfH3GLLhYVyAJ/ks843zblzbbyl2rEmChIvPgsY2vs31NmejolQa8v2nnHBZihqW/US2
 0URVBz8bOXvhtPgkUXTlAV4U
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="133739400"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Oct 2021 02:43:22 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 20 Oct 2021 02:43:22 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Wed, 20 Oct 2021 02:43:20 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v4 0/3] phy: Add driver for lan966x Serdes driver
Date: Wed, 20 Oct 2021 11:42:26 +0200
Message-ID: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_024325_530367_032289E9 
X-CRM114-Status: GOOD (  12.34  )
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
device contains has 7 interfaces, consisting of 2 copper transceivers,
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
