Return-Path: <SRS0=3fcd=PX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29EFC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  4 Nov 2021 08:57:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6FFAC60E9C
	for <linux-phy@archiver.kernel.org>; Thu,  4 Nov 2021 08:57:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6FFAC60E9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/IvAVNE10OPs7AYSAOU+1SLmpBKLJJ2Y3i+PayYbtA=; b=0TKNvFKhUQeEB8
	fqF+h4EUVggUR4nbe6GqaN4A3xHvTWCYSVTw/hhyFJ8Ak0/xu9UlVynrhqV7muZCIl+OrHKxlol5E
	TTQQ4zW0AyMz50iwuhy4NCtQnPkVMEVY2A1wSMnanNwal1NGr6wyM1sRFtSknqtgZQyrUC/YwipmM
	yU8gNdfDgILpNOSYtfqzI+4ixxR+RHW32fRrZQ6wzLvzmUHV83lr+HsB/L/114Gz4JgVrUYYMxCQO
	MDAHqhafKvUFtQieLNrJL2f4pjmIvKjPhjLw0MzWrt6yld6eeGTuufHK+r1g4vuBp1Z9Rt4fZj3YY
	adjylgnOvCAXkRfP5xRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miYYe-008Nzw-TZ; Thu, 04 Nov 2021 08:57:16 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miYYa-008Nxb-Mm
 for linux-phy@lists.infradead.org; Thu, 04 Nov 2021 08:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1636016232; x=1667552232;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=uYP98T1lWdkr5+qrsVnyqqWos9v2lmU4T/cfxWtY65g=;
 b=VdhYrec1elu3VdiToTgSq692PuMiPO7Fs3dKR5SUtuRSQ1Uk2qCBs4E8
 /WijluWaSTs8S1UeEbhP4yeYX3Z/IyrNOteq9+HNqhg2ODgeRZufI8IZk
 B12tTuUqfVf84IciGqmVx4EHQU72lhGo6KqulqK7/+DCoNdyu5Px69oo/
 kwX/TJAYniZpUT5YG+giLaqAaTHp0eBGSmxuVE3ygeBWaFRPkfj8rmZUg
 v1sUHyRDuzctoJHJ26M1p+SUCzMusKPFPH7dvXZL6xq7b8TBPb6bzwvvd
 HmOwT62ihQP7p91KlZgPUVjdxGEDgWeyYWJ5GbkvJax0I5ojkyCqCvrmt w==;
IronPort-SDR: Zu/2WzzgZHxh5zmp4AQdIS+JXQvZxh1va+aIBdVN/FDUwh5kAFORlUYQlk7a4+lmgyHsNj8Oud
 1V2eoNF62rhpsPDfiUZ3fWs4vb81nMZ50Zx910+QOG/GK3w37JZ4a4W83o9ARlW5NZIVDlN5j0
 mQ3f5DALmXxXZWh2AR22KsVgYFG0dE3AIh/q7KiQQQSeWWxBnuiO+RaC2fcQBElRHcbMrue3S+
 ZrDQW5TPNNDb3wUP60YGnJXDz0hp0XO5K0QeD+omiFLJqBOIjQPMynyuUHsGT4ihPHK5e18qYL
 zwZ4MbV6bYk1nEC76D3tZ17P
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="150696948"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2021 01:57:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 4 Nov 2021 01:57:10 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 4 Nov 2021 01:57:09 -0700
Date: Thu, 4 Nov 2021 09:58:56 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <robh+dt@kernel.org>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <20211104085856.tlvwwbpgyv2djdyz@soft-dev3-1.localhost>
References: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020094229.1760793-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_015712_784235_1E6FA866 
X-CRM114-Status: GOOD (  19.64  )
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

Hi Kishon, Vinod,

Please let me know if you have more comments to this patch series.
Do you think it would be possible to get it in 5.16?

The 10/20/2021 11:42, Horatiu Vultur wrote:
> This patch serie adds support for Microchip lan966x serdes. The lan966x
> device contains has 7 interfaces, consisting of 2 copper transceivers,
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
