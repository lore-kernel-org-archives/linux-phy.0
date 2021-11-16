Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1EFC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:20:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9224561C4F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:20:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9224561C4F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASSiwBsxpQdQbc+Hf4WqnzO6fPYx9iuRPdHSWAM92iI=; b=lNMxOR2Lw1CtxX
	l5+SyzprhR5nud3Qs70WMUxQqpqQDXaggOhKSc0fy00/QYdaD0+QTDXeLCFjWs0SfuDHO6fJ7PQ42
	1/ZMVKyJeZCJpZVy0nu+hE2vL1HkD5IP5eyG6N3nU/xHIAOAWt7Ooes8I55FL75AxI3aOoQ+XR5lo
	NuSHtA8A4lv1/CivsDf6tinh8/2DlIdQ9G+YkQbOEMExvNpevFFVx2eFMtG26QzgL7Onk8S5RKqRt
	QLUDBukskjMBywI49TGCGbav3bHdFAfyvoH3xefFUrNJCao2dMInbfks4HNQVgrvCmXgHFLzesOnY
	dApFhZLloj3eof5XlQig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvZZ-001ABZ-54; Tue, 16 Nov 2021 10:20:17 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvZT-001AAj-Lx
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637058011; x=1668594011;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=m8W15a1kB0nLYDdrfk+rvxEdZSKbZUupLWjYQM6oGUE=;
 b=M5DtMrEY5rUMlnPyrzsyuQe9KG0CtN7h+vv/0Xc9mNBdn9nxbzlvIU+A
 2T1SWjxqCom4t0+IBgLh2bdwA9mUVm9XcS06eZT3lGkkiD8dtHgqQJ3md
 2UJuJKBFn7WcTqu0Aw3l66uLqd+gigFB7NPA7c4Q1Nl1aacSk5Jbxcm7B
 wjsEGjgI3V+CHqH+fkTIfINUTTr8gg+CK2AU6M1hybFYCmF6uFCEqwsib
 IbvxCwfLH+jFmiOrXpc/4tstxABOCYKfee+l7YJaDXLtlJkAwSO+4iL+v
 gA/RQ5c9QjsN5J5AEo7guf/6DFffpp8+3Tpgweur8YkYQREp1qksq0bUT Q==;
IronPort-SDR: 4n34fcCSukz9vWI6Hp+XCvNkuvIzQyTCpcm7aUJcq/KRkRR/m3L8Dc/7X5E+Pki48BULritxaq
 S8SfBWOvJXsL7B6RmeFHE560et+BiYa4xmrDIkV0l8sNABP5FV3ffBjj+uL4PvEPjOWPcDJ832
 QxGKyIlx92FSc040oCzA3vJN91kBdtClXmI8Fcf0tXP5K8UbotLgWy0Ll+zWOUSAUHvBwgWZK6
 kCSmbhU1DAKlFejG29dQVYyxdVkw7bPh36SneMWd2/cZaPhBU5fGWVo63rb+BAh7HnpoMneW9E
 LKzi3L5vfJ2Cp6yQkWvwsfIk
X-IronPort-AV: E=Sophos;i="5.87,238,1631602800"; d="scan'208";a="136710789"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 03:20:08 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 03:20:05 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 16 Nov 2021 03:20:05 -0700
Date: Tue, 16 Nov 2021 11:21:51 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_022011_808936_10CA133D 
X-CRM114-Status: GOOD (  18.69  )
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

The 11/16/2021 11:08, Horatiu Vultur wrote:

Hi Kison, Vinod,

Can you let me know if you have more comments to this patch series?
Otherwise can you ack on it? Because I would like to have the patches
merged via netdev if that is OK for you.

Thanks


> This patch serie adds support for Microchip lan966x serdes. The lan966x
> device contains 7 interfaces, consisting of 2 copper transceivers,
> 3 Serdes and 2 RGMII interfaces. Two of the Serdes support QSGMII.
> The driver also adds the functionality of "muxing" the interfaces to
> different logical ports.
> 
> The following table shows which interfaces can be supported by the port.
> 
> PortNumber    Max Speed    Ethernet interface options
>     0            1Gbps       CuPHY, 1G SGMII or QSGMII
>     1            1Gbps       CuPHY, 1G SGMII or QSGMII
>     2          2.5Gbps       2.5G SGMII, QSGMII, RGMII
>     3          2.5Gbps       2.5G SGMII, QSGMII, RGMII
>     4          2.5Gbps       2.5G SGMII, QSGMII
>     5            1Gbps       QSGMII, RGMII
>     6            1Gbps       QSGMII, RGMII
>     7            1Gbps       QSGMII
> 
> v3->v4:
> - update description of the driver
> - removed unused registers
> - use bitfield operations in the registers
> - add macros for PLL configuration
> - move macros and structs at the top of the file
> 
> v2->v3:
> - remove unused includes
> - add missing '...' in microchip,lan966x-serdes.yaml
> - rename lan966x-serdes.h to phy-lan966x-serdes.h
> - Rename CU->PHY and RG->RGMII
> - update commit message for PATCH 2
> 
> v1->v2:
> - replace the regmap with iomem
> - update DT bindings
> 
> Horatiu Vultur (3):
>   dt-bindings: phy: Add lan966x-serdes binding
>   dt-bindings: phy: Add constants for lan966x serdes
>   phy: Add lan966x ethernet serdes PHY driver
> 
>  .../phy/microchip,lan966x-serdes.yaml         |  59 ++
>  drivers/phy/microchip/Kconfig                 |   8 +
>  drivers/phy/microchip/Makefile                |   1 +
>  drivers/phy/microchip/lan966x_serdes.c        | 548 ++++++++++++++++++
>  drivers/phy/microchip/lan966x_serdes_regs.h   | 209 +++++++
>  include/dt-bindings/phy/phy-lan966x-serdes.h  |  14 +
>  6 files changed, 839 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/microchip,lan966x-serdes.yaml
>  create mode 100644 drivers/phy/microchip/lan966x_serdes.c
>  create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
>  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> 
> -- 
> 2.33.0
> 

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
