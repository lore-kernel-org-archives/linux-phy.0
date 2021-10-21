Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43303C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:09:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1138F60FD8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:09:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1138F60FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HnKrEUgvwDGEZhB1SONX9CqPk9v2tek+UNpkR91IhA=; b=CfMiZXgPOr109b
	a0jkgvTZVIcXtKeiFYUCH+OyxALOLAag7d6jyRaO0Z+9ygKwRgAgdIgeFCSM6qwcLM59B9vuDxI9u
	bwvDYqmPC8X2/6Zre7wfq2CoOMQkH2yLViJ+3ygXz6YHYpOSniZCV1u/4mvu2zcT8ZT0oI3EOy2Hg
	hJdVhtBcIGddwhhx0IWhRICEe254vGZ2NPsFBslpBHkMhc+3ZcXLdWpP+8Mzuy3THcWY7ZzGvWYqz
	UtNoignMxZnGpC23CNmcBy3uTRAHYsb4S/CCTMihIVApSB8kWsJv8NcrxliaA5DklE0rFG9fDPdnP
	CbYP847RZQ+ZL6bdB+5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdU4N-006yF7-IX; Thu, 21 Oct 2021 09:09:03 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdU4K-006yDe-S5
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 09:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634807340; x=1666343340;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ifSk/ar9zle6TUfdbkckP9UIu6NSYDdpfvg1NVg6IEY=;
 b=Y4yXiwgL9ylk4vqQORT8hFpFwmeb1pb67oxOudNyjJz7k4V/Xh/oPuOf
 Ts+GQ2Ip3eNxjfKnOPWSg8ASQCBRd1hCcuk41/T8jvC79eaq8LObZeInD
 Xan9jr067aVl7XJ9Bg1uRGnPFnNaoE3AdpcyjjZ76DdkTLdwuc6m607wo
 vOVEYsnmehZegPNkfBa+h8G4bWitRZv6AqlV/UREOWEoP+Un1siSz4h/y
 HChOIvm0XwmUoSMVmk3HBBAaDW8wVmAbkrjr3NTgBSKEhlteUA+dgZsyt
 8So9bdiaBjQnKgJA42ArWJ/keqhR9eseYZi/kvIir/YrgR2wMYrx+xLv3 g==;
IronPort-SDR: JVbCpvZRb87y5B3+hQcJR9mpIloPKgR5W+Y63f1qMxj2U2HfrPxW4eTyI8nckMUySfUArqY+fU
 KuxFjJefqys1kFEnt98KgOfdP/PxBaWYUpzzwF+VrV5jaJZfftbcqrVTORJatab/TRRvIN1Y8b
 vmCGxjbd9krqOt0X7mV6YeCJr9wbLOIGPauLC532VAtFAHEHQUECGYqEUro1oFSvXfEumN5aX5
 l8MEpVrzqAhBaglz+JcZisBiWclBRI19fl7ZKMR0c31U3eesooTchuBORzF75cvwNe4S5JMFkR
 beDKoSW8EX1f9LGFeNFLLNHn
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="141184758"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Oct 2021 02:08:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 21 Oct 2021 02:08:58 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 21 Oct 2021 02:08:58 -0700
Date: Thu, 21 Oct 2021 11:10:32 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>, <kishon@ti.com>,
 <robh+dt@kernel.org>, <andrew@lunn.ch>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/3] phy: Add lan966x ethernet serdes PHY driver
Message-ID: <20211021091032.ffaoncg5jjdwdeyg@soft-dev3-1.localhost>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-4-horatiu.vultur@microchip.com>
 <YW8HIHTCVgB+URJ5@matsya>
 <20211020091733.fxph2pq3xa3byvry@soft-dev3-1.localhost>
 <YXA3VVUGEjUR4HDC@matsya> <YXA6lZBTeA6aNxVD@piout.net>
 <YXEEcJHuEdFLPyCU@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YXEEcJHuEdFLPyCU@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_020900_952910_7A251FDD 
X-CRM114-Status: GOOD (  12.59  )
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

The 10/21/2021 11:40, Vinod Koul wrote:
> 
> On 20-10-21, 17:49, Alexandre Belloni wrote:
> > On 20/10/2021 21:05:49+0530, Vinod Koul wrote:
> > > > > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > > >
> > > > > Any reason why this is dual licensed, why not GPL only?
> > > >
> > > > No reason, I think I copy this from a different file.
> > >
> > > Please have a chat with your lawyers on the correct license this should
> > > have!
> > Dual GPL and MIT was Microsemi's policy, I'm not sure it carried over to
> > Microchip.
> 
> That is why they need to talk to someone and decide what license
> applies :)

I have changed it to be the same as the one on sparx5 because also
sparx5 is a Microchip product. On sparx5 we used:
'SPDX-License-Identifier: GPL-2.0-or-later'

> 
> --
> ~Vinod

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
