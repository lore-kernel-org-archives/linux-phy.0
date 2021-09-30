Return-Path: <SRS0=P1CX=OU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16AD9C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D090961880
	for <linux-phy@archiver.kernel.org>; Thu, 30 Sep 2021 07:39:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D090961880
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SZBHceq9E1JhHV9D1Cpjb+Fm1yKkLZSq62yie6FFepU=; b=rrofUx46gOnHV8
	MdPT8h5F6xDuYraqebFayw2CX2ek0ZCrUtc7vso8FSeD4XtsUuSRBsLXAMZCj/zpNcF16fITbTvJ3
	TrECZhnMMBNTvov1TJNcwm2bZeisdon9GusChSiZpizRCaLQ1i32c68uPNrwWYVQn9+UqsH3Qmjq1
	g5zMf02u2hbMhCNuYOLJ59Z892Gqc6Yy2YkPIfa4tWNJMZLUEiYyZxNAUTdLPi5J6/hEfN+eT40X/
	IMSy8eR37x2oBF5Z22PlKTneoWVNcefVn+zXRFwOOIZorZlHFimxotumtnUyvdoV6sDS4kL27GDQJ
	RLHrFqFGbxH84ZxcxZNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVqfN-00DDOu-Cd; Thu, 30 Sep 2021 07:39:41 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVqfK-00DDNH-8r
 for linux-phy@lists.infradead.org; Thu, 30 Sep 2021 07:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632987578; x=1664523578;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OZhx3Wc97/jetcqXzisC549SCP5efiZyVPD52r34XrI=;
 b=inFATEiMEWAQWQ3pZt4MPDxCASlBth6hD/EaaUgPe5COenq4uubkudXg
 bB4PSWHOzRdIQpwE8Md8zuMzX4OSFq34kHf8g0Jdt+AAROj+Uc83AiPfH
 rnsWt4zPmBoiXExB7yo/7RDLskEFSkLbzQOY90aD+b0jJM1WmHlbVhqRm
 b55mGeGYloKGfDO4gILMrDgPghNZdktIINkM6rZNKHLbFg6PMsuDUw/zW
 3wpDYKpdpUY2x+QNjUwCHnnQ8kq5biyfPj+FHw2TXbY785sCfTU3SHs/f
 Oeu03QsjNFdYsEe2BnvGEnYUbcksiWM0SDo5XXi+ywfI14U8f0H7XwfUn Q==;
IronPort-SDR: +fcuMBAvv22U2Unajd/xbQgKD7Q+DIjHC6Nxm7BPKU+YyBpmOfH49uUTDWhry+mXnEZ5HyZJfW
 BBQD/D8yOkIstToHT/F4JzV3pbyF0J71eeCqUuJ/OdUque82mWChqm8Rq24hDAjhDYd45UvKI4
 tyAT/79e1x6Lo2WWLPrsqOgKrqQUOuQKFftud6dIerLA/rGYpGmy242R2eHE5RwSfoQwqs8aB+
 kU6Ql3eOgHcIu9pltg5xPcSPr+375TYsvwYEnafU7kI+jJreCNBDZkHRXsIogBcq+n1voivYh2
 WrJ+GxzoOwGLsocMNuuZSBFp
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="133752522"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Sep 2021 00:39:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 30 Sep 2021 00:39:33 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Thu, 30 Sep 2021 00:39:31 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <linux@armlinux.org.uk>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 0/3] Add driver for lan966x Serdes driver
Date: Thu, 30 Sep 2021 09:38:19 +0200
Message-ID: <20210930073822.2709955-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_003938_443730_909AFB77 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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
Serdes support QSGMII.

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

Horatiu Vultur (3):
  dt-bindings: phy: Add lan966x-serdes binding
  dt-bindings: phy: Add binding includes for lan966x serdes
  phy: Add lan966x ethernet serdes PHY driver

 .../phy/microchip,lan966x-serdes.yaml         |  45 ++
 drivers/phy/microchip/Kconfig                 |   8 +
 drivers/phy/microchip/Makefile                |   1 +
 drivers/phy/microchip/lan966x_serdes.c        | 545 ++++++++++++++++++
 drivers/phy/microchip/lan966x_serdes_regs.h   | 482 ++++++++++++++++
 include/dt-bindings/phy/lan966x_serdes.h      |  14 +
 6 files changed, 1095 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
 create mode 100644 drivers/phy/microchip/lan966x_serdes.c
 create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
 create mode 100644 include/dt-bindings/phy/lan966x_serdes.h

-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
