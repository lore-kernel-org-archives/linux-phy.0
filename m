Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3385BC77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 16:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkJ3X9AzxwZF2arhzNCzL+VrQ0o/SAZgl7u6EVKZ51o=; b=uDqdW6s7T1u84X
	9YMNQBAS9tWosmNP587QPTxAnx29O0Z5IuZJSncu5jYhPZ3jrAprpjtxHCnJnax9Np/H9zo9KwJ7l
	FVLnJx7o+FmhpVzohtdtBDTkkKcY02HZjt6O+6hhPECObt/YdcZezscj6kiMVprgmihlJTIsA2Ilz
	CiAgnYbV8dfLBsepze8Q9Jwg3Jsn4Yw2LnkksgnHuA858e2eUQSZIduQylwR4W9iPyVNU/NV+aDGG
	XiL7ZvF+Qs9yER2hbDyolJiOn9lR9USEM7VGyJdhv6Gbdbu2zKvI+09Hdfix2H7z3FnitZhK6aZK6
	h+NiSvTWwngptm31ZYgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnM5c-00A5Ao-2n;
	Fri, 14 Apr 2023 16:15:56 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnM5Z-00A58d-0F
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 16:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=y77Vn1iQ2Yr8r94PJbu25E6c2t/sA9gRbZHB/9bHBWk=; b=sgynuWJ1+GOxbplFPJ2IKiq5oX
	/0JSnWlKYR9E1aamdcGDR2pOlNQXbnqQdu1Z5TcAiXan78/lTWDYRcvX/2vTAk6OIrn9E5UjMFrD8
	TaREFVUstQ4tCbiJYRTBJajZo4WrOzgEmroxCtNOFm1bon6dQdCmFT19UH/RGKTm5TwE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1pnM5C-00AIdW-9F; Fri, 14 Apr 2023 18:15:30 +0200
Date: Fri, 14 Apr 2023 18:15:30 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Herve Codina <herve.codina@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Message-ID: <c99a99c5-139d-41c5-89a4-0722e0627aea@lunn.ch>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
 <885e4f20-614a-4b8e-827e-eb978480af87@lunn.ch>
 <20230414165504.7da4116f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230414165504.7da4116f@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_091553_111428_41F99D3A 
X-CRM114-Status: GOOD (  32.23  )
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

> > When i look at the 'phy' driver, i don't see anything a typical PHY
> > driver used for networking would have. A networking PHY driver often
> > has the ability to change between modes, like SGMII, QSGMII, 10GBASER.
> > The equivalent here would be changing between E1, T1 and J1. It has
> > the ability to change the speed, 1G, 2.5G, 10G etc. This could be
> > implied via the mode, E1 is 2.048Mbps, T1 1.544Mbps, and i forget what
> > J1 is. The PEF2256 also seems to support E1/T1/J1. How is its modes
> > configured?
> 
> All of these are set by the MFD driver during its probe().
> The expected setting come from several properties present in the pef2256
> DT node. The binding can be found here:
>   https://lore.kernel.org/all/20230328092645.634375-2-herve.codina@bootlin.com/

I'm surprised to see so much in the binding. I assume you are familiar
with DAHDI. It allows nearly everything to be configured at
runtime. The systems i've used allow you to select the clock
configuration, line build out, user side vs networks side signalling
CRC4 enables or not, etc.

> Further more, the QMC HDLC is not the only PEF2256 consumer.
> The PEF2256 is also used for audio path (ie audio over E1) and so the
> configuration is shared between network and audio. The setting cannot be
> handle by the network part as the PEF2256 must be available and correctly
> configured even if the network part is not present.

But there is no reason why the MFD could not provide a generic PHY to
actually configure the 'PHY'. The HDLC driver can then also use the
generic PHY. It would make your generic PHY less 'pointless'. I'm not
saying it has to be this way, but it is an option.
 
> > In fact, this PHY driver does not seem to do any configuration of any
> > sort on the framer. All it seems to be doing is take notification from
> > one chain and send them out another chain!
> 
> Configuration is done by the parent MFD driver.
> The PHY driver has nothing more to do.
> 
> > 
> > I also wounder if this get_status() call is sufficient. Don't you also
> > want Red, Yellow and Blue alarms? It is not just the carrier is down,
> > but why it is down.
> 
> I don't need them in my use case but if needed can't they be added later?
> Also, from the HDLC device point of view what can be done with these alarms?

https://elixir.bootlin.com/linux/latest/source/Documentation/networking/ethtool-netlink.rst#L472

> Requests link state information. Link up/down flag (as provided by
> ``ETHTOOL_GLINK`` ioctl command) is provided. Optionally, extended
> state might be provided as well. In general, extended state
> describes reasons for why a port is down, or why it operates in some
> non-obvious mode.

The colour of the Alarm gives you an idea which end of the system has
the problem.

> > Overall, i don't see why you want a PHY. What value does it add?
> 
> I need to detect carrier on/off according to the E1 link state.

Why not just use the MFD notifier? What is the value of a PHY driver
translating one notifier into another?

And why is the notifier specific to the PEF2256? What would happen if
i used a analog devices DS2155, DS21Q55, and DS2156, or the IDT
82P2281? Would each have its own notifier? And hence each would need
its own PHY which translates one notifier into another?

There are enough E1/T1/J1 framers we should have a generic API between
the framer and the HDLC device.

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
