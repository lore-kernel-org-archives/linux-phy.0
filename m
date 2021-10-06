Return-Path: <SRS0=SQnc=O2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB06FC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B01C1611CA
	for <linux-phy@archiver.kernel.org>; Wed,  6 Oct 2021 06:35:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B01C1611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySOJ4mYXhsj7w61NbzMXIEYQ/w8JGhv/EXgqudokMnc=; b=FciowuVPZWFXGS
	uxIsHxzzQ5nSIq9RFABCiNJuQvF1wtTvlaHJL+xH6xUlvdFBqWbdNY6SCGtBfpMWOquACHImSMxZV
	AegtOfmt8WlQOlZD+u5YyMKs2gtCsI8RwljITM7wmYihK4bI4udqEB3bluVOI/7xrLRYNyWCSTuqv
	XTVcG5l/6pukuO332d/J9BSnE8CfFJ869MjAjTiNH3LCXRquXTuhvzLrqdOtrp7bG5g6ZoZPXxJZx
	S0mwXVdIH+bS/trtYiguumgRKjCcsY8cNl/RcpsyGNodaP7S1elEl/Xgoq19hUI3o//kYUShmxHJp
	zz5bv2ghBcXjmHijoF1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY0Wu-00D2Wa-7K; Wed, 06 Oct 2021 06:35:52 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY0Wq-00D2SB-5u
 for linux-phy@lists.infradead.org; Wed, 06 Oct 2021 06:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1633502148; x=1665038148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ufDEsuY52pxxa0DVkU1pnc1ICkQqdqlQymHht+6zrl8=;
 b=jbqIwuTVbQX8Oo2qGlJ5a6kvBttvat66/0/WssoiWbpAzLTmX3w/isCV
 ELFDI0dJrTtnBwG1mv42UIOomlqLq78yCFRMzWmYB0kIO2HZ2lEYEzWBa
 GvL/1Qr6A2szGiDLi+VXcCip6KYg9W1kpmj6ibdtXuXjn9hr9rrMuKErh
 As0/pftxt2BxO3O33Oh24pOzrV1iOyNsztKm7aiqwzbrvmRlUV4wi4HFd
 BqupRAxXQKtKnJ7JwGtISvT7ND1dU1OJ1wohFevB988K9goTmjesptuyz
 st54lbU80Mwms+KGVxGLp55utfHqqtjL9O90VuZOFXYSxAwSAU+747oaR A==;
IronPort-SDR: YlY5HRoamUd/2cDhVE2+uPS5OeBqRrOP7pSr97Bm/C0czOttFK2vHE69F+LKG2lrLUepcXI/DU
 Ouuf7cCdERF2LxCqGzuaucNafVsiK65OPZW2jrzMqegKrnfZo3nPamXyIQNCW1sE9MGRfbqmse
 6p725H6HaNMkYh+8tSdtIFEPYSgfEhJWoWsJpqWTYYy/kxVhEVdFOUSUnYA3dw+kQUv6351KRx
 PCdpJRa19Fsn09001RmrDyUw8Or0qG96bokGo750ecllKPz+XR1pALjX2VpfgddO2IMtGWDoFx
 vlPSa2J52D1GWJPsdLiDVdND
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="134419733"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Oct 2021 23:35:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 5 Oct 2021 23:35:30 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 5 Oct 2021 23:35:28 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH v2 0/3] Add driver for lan966x Serdes driver
Date: Wed, 6 Oct 2021 08:35:20 +0200
Message-ID: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_233548_328876_FD7EF437 
X-CRM114-Status: UNSURE (   9.16  )
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

v1 -> v2:
- replace the regmap with iomem
- update DT bindings


Horatiu Vultur (3):
  dt-bindings: phy: Add lan966x-serdes binding
  dt-bindings: phy: Add binding includes for lan966x serdes
  phy: Add lan966x ethernet serdes PHY driver

 .../phy/microchip,lan966x-serdes.yaml         |  43 ++
 drivers/phy/microchip/Kconfig                 |   8 +
 drivers/phy/microchip/Makefile                |   1 +
 drivers/phy/microchip/lan966x_serdes.c        | 542 ++++++++++++++++++
 drivers/phy/microchip/lan966x_serdes_regs.h   | 482 ++++++++++++++++
 include/dt-bindings/phy/lan966x_serdes.h      |  14 +
 6 files changed, 1090 insertions(+)
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
