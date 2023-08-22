Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AB21EE4993
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2hLxQ2K8P8iIUnoW3u7DrjxXNHGieXNaZcc+T8rC/s=; b=QUoBVZ1pnZvcEW
	ZvlF/1MtUIGsLM3dMHv05DEQ0QcORNgBUTLT84WYYDeHiV8KU40PpjkeV7PhCq9Qy2SpExWyM+/rf
	bE4Jo+1GbMFvXt47aoMjC3CFydfcHmNv/iZfzGRqT92hIZGzl5Ca2hOmCwVrdjW2SREjxT3Luqsxx
	HE4k0a8zSp1an7LUjH7RdTHL2a0SKFiO9cpdiDKEyiaYdPxdi+k1QxIoQJYGErqY8AbUueduDEo2q
	8tWWblRbZb1dssCUBH3G0x/OCXXo6aMFDKkU4Oyu3pFz3KdJdXWgZ193pqVMDOzG4lnNMdXU60GoM
	KSDzg7QEsJZwN0VkhnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYS5r-00GBRb-19;
	Tue, 22 Aug 2023 14:10:51 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYS5p-00GBQo-03
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 14:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=8pPiwscj/TJoZoXC5yZYpBYbUpkqoKV7y3ecZaEAFTo=; b=zo83phOskLZKRWDL0QANpRQ3DI
	N7MlB6Tzp80l7F8Rt7l9UMDcHCBOuy/xia6ED+QIXhqitOR6YLZuSQ/NizMWhBcqMs5GVFGjm4sKK
	j4smWST3zPvTy42XX++VS6daBxyF7h4F221yJciGGYDMrEK63/C5s3NElnrr9ll35ccI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qYS5l-004mmA-TH; Tue, 22 Aug 2023 16:10:45 +0200
Date: Tue, 22 Aug 2023 16:10:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH net-next 8/8] dt-bindings: net: fsl,backplane-anlt:
 new binding document
Message-ID: <36bb7d51-2fca-4d06-b78d-e411f67ecf56@lunn.ch>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
 <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
 <20230821203433.ysulh2bixfypbhsk@skbuf>
 <842f7ff0-d376-4f55-b72d-2db7ea827792@lunn.ch>
 <20230821215500.oap7ze73pu237pof@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230821215500.oap7ze73pu237pof@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_071049_049795_829AD099 
X-CRM114-Status: GOOD (  29.30  )
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

> > O.K, not ideal. For C22, you could just put the ID values in the
> > compatible, which is enough to get a driver loaded which supports that
> > ID. But somebody recently commented that that does not work for C45. I
> > assume NXP has an OUI, and could allocate an ID to this device in
> > retrospect. So maybe it makes sense to make C45 work with an ID in the
> > compatible? And get the driver loaded that way?
> > 
> > 	Andrew
> 
> There are 2 clarification questions that I can think of right now.
> Maybe more later.
> 
> First: Compatible strings per C45 MMD? Drivers per C45 MMD? Is there
> supposed to be an interest in that? I might end up needing it (see the
> problem description in the cover letter, with PCS and AN/LT block merged
> into the same MDIO address, but responding to separate MMDs)
> 
> Second: Suppose I add something like "ethernet-phy-ieee802.3-c45-idXXXX.XXXX".
> Do I replace just this with that:
> 
> compatible = "fsl,lx2160a-backplane-anlt", "ethernet-phy-ieee802.3-c45";
> 
> or also this?
> 
> compatible = "fsl,lx2160a-secondary-anlt";
> 
> 
> I suppose it would be just the first one, but going that route would IMO
> just increase the dissonance between the description of primary and
> secondary AN/LT blocks. They're the same IP blocks, don't they also have
> the same fake PHY ID?

For C22 PHYs, the ID registers are only used to ask user space to load
a driver which supports that ID, and then used to match a device to a
driver. We often say that if the ID registers don't actually contain
an ID, or the wrong ID, use ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$
to let the subsystem know the correct ID.

The device you are trying to support has the same problem, invalid
IDs, but its C45.

C45 IDs however work slightly differently. An C45 package can have
multiple devices in it, up to 32. Each device has its own ID
registers. So there can be up to 32 different IDs for one package. The
core will try to determine which of the 32 devices are actually in the
package, and if they are, what the ID is. It then asks user space to
load a driver for all the IDs it finds. And when matching devices to
drivers, it sees if any of the ID of the package matches the IDs the
driver says it supports. If a match is found, that one driver is
expected to drive all the devices in that one package.

I don't see a need for ethernet-phy-ieee802.3-c45-idXXXX.XXXX,
ethernet-phy-ieee802.3-idXXXX.XXXX should be sufficient, since all you
are doing it matching the ID against the driver. That matching does
not differ between C22 and C45. 

Saying "ethernet-phy-ieee802.3-c45" might be useful, because at the
moment we have a mixup between C45 register space and C45 bus
transactions. The drive is free to access C22 and/or C45 registers,
since it should know what the device actually has. But some of the
core might get the wrong idea without "ethernet-phy-ieee802.3-c45".

O.K, that the background now:

> First: Compatible strings per C45 MMD? Drivers per C45 MMD

So far, nobody has needed that. All current drivers are package
drivers, they drive all the devices in the package. At least for a
PHY, there is close integration between devices in a package. Russell
has commented that the Marvell 10G PHY does appear to contain a number
of licensed devices, but so far, we have not noticed the same licensed
device used by multiple vendors. So there has not been any need to
reuse code.

However, it sounds like the package you are trying to support does
contain multiple independent devices. So from an architecture
perspective, having multiple drivers would make sense, even if there
is no reuse. But are the devices PHY? Everything i've said so far
applies to PHYs. It does not apply to a PCS, etc.

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
