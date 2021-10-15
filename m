Return-Path: <SRS0=Q62d=PD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA166C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 08:52:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAB9061053
	for <linux-phy@archiver.kernel.org>; Fri, 15 Oct 2021 08:52:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BAB9061053
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN7U8lOvM2vnbSFDgrd/uEYM6IjnRKncYEYxkgjta4A=; b=ABQjNEtOTGxmzr
	uiJp1GTgHGIbZarAVf4IW8N2a74K6I7oPvMOprTdaUIwO6vKJJmYpbVqBqJoH/PW548uJRFm+NW//
	oIeX7R4xEls8ejJD471SJrMd6QsnTqtTbvtR4ZthkKKX3XWl4samf8eL5PFI2pxauR2UJNBoeh+Vm
	ebjWMDoH40R77nOM1S6AS83HFjDZpBz8Q1GJ8PTsHK6A7SGnKHwmiv2bD5Pa2EaQMFu5C3BNSe86v
	1yn2fpTyNVRFRZASnUiMDmx0ZKX3uS+WlxLE9ttT9bclPTIE8wHnA3bg0Wj4F9pOjmlTIOIsxbQcw
	Mg0nVCtZOeHlRucr5zbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbIxO-0066Ox-Lj; Fri, 15 Oct 2021 08:52:50 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbIZc-005zPO-Hz
 for linux-phy@lists.infradead.org; Fri, 15 Oct 2021 08:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634286495; x=1665822495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v2/wdh25geUQc4WZEx7PPWApAsS6DjRgShuqkzLgWjc=;
 b=hrDG7Z3BA5tloCcXlw2pljulWGU8AIRyjrRTJGvO9UYBxhFyOtDfGI0w
 xAeaV40zCqy2U6O8zUqFLwf84jCc3ljbR49eA7MR5Obp27Z1DXxplfSi2
 SW+6SKL3E/zh3jLY5bRg15HppdlajWYFftKjVhu3kgWyT40AepTSJWPq4
 3oGd9u7i0Tm3jz+NC77oZ9fUkIuOyVzLJqIcYpyRG0oMlcpvO8iqIHjHs
 qOTWL0GF+RtCeMn5/uDnVj52olPNrlMqfT/F5jk6ePBEMIAGkc+BBFpsA
 Pcx74AfTRDBNnT6d/RH3J7aJR1ySn6yje1VfFOuRqOEY0o02Re1hopU5Y g==;
IronPort-SDR: KvEvlsXEeaAxDadhXz04g9fL5gozd+Ei/bzxt/j+UEvxoFi1y1AJG0Uw6E+MeNOJ5vl6MD1Hvp
 mMN8y8g139k4wc5fT0ZkGWvkhtQaqQXR6YY5f+DYTAAhPhQ6+Hl/5xsDJhzgerTAixnvajXvNE
 2rQL87E02PjP20uxQi+S8v0QeQkM0I6f6TTh9DMy78i5MxiDJEFhtCly9oiRdPLR4Q6O7eO59M
 ZfTKLYXQXUPyamtVe2rci4z6VTQ2mjEoLHUgtU63lO52IH8zZBRPTAoyulU1PBbGMKXCPh6eII
 DAw39jK2XX8WsABxsnYdS1bx
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="133108709"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2021 01:28:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 15 Oct 2021 01:28:14 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Fri, 15 Oct 2021 01:28:14 -0700
Date: Fri, 15 Oct 2021 10:29:42 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Rob Herring <robh@kernel.org>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <linux@armlinux.org.uk>,
 <andrew@lunn.ch>, <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: Add binding includes for
 lan966x serdes
Message-ID: <20211015082942.fpyanrg6on3wgzbp@soft-dev3-1.localhost>
References: <20211006063523.3962427-1-horatiu.vultur@microchip.com>
 <20211006063523.3962427-3-horatiu.vultur@microchip.com>
 <YWh2J32hZftzIi+F@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YWh2J32hZftzIi+F@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_012816_699037_9E95E4C9 
X-CRM114-Status: GOOD (  17.24  )
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

The 10/14/2021 13:25, Rob Herring wrote:

> 
> On Wed, Oct 06, 2021 at 08:35:22AM +0200, Horatiu Vultur wrote:
> > Add include bindings for lan966x serdes
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/dt-bindings/phy/lan966x_serdes.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >  create mode 100644 include/dt-bindings/phy/lan966x_serdes.h
> >
> > diff --git a/include/dt-bindings/phy/lan966x_serdes.h b/include/dt-bindings/phy/lan966x_serdes.h
> > new file mode 100644
> > index 000000000000..06e529473475
> > --- /dev/null
> > +++ b/include/dt-bindings/phy/lan966x_serdes.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > +
> > +#ifndef __LAN966X_SERDES_H__
> > +#define __LAN966X_SERDES_H__
> > +
> > +#define CU(x)                (x)
> > +#define CU_MAX               CU(2)
> > +#define SERDES6G(x)  (CU_MAX + 1 + (x))
> > +#define SERDES6G_MAX SERDES6G(3)
> > +#define RG(x)                (SERDES6G_MAX + 1 + (x))
> > +#define RG_MAX               RG(2)
> > +#define SERDES_MAX   (RG_MAX + 1)
> 
> I'm guessing these are used for the phy cells? If so, I can't figure out
> how and I shouldn't have to search the driver to figure it out.

These are just some constatns to be able to select between the
integrated PHYs, RGMII, SerDes interfaces. Because these interfaces
needs to be muxed according to the HW.

This is something similar with the Ocelot Serdes where there are only
2 Serdes types.

> 
> What's CU? What's RG?

Cu - copper PHY
RG - RGMII

I will create a new version where I will improve the log message.

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
