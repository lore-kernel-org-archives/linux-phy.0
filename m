Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529EFC636D6
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 12:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+qbvg6+ZyoGGuik04wFShcpjKXqYPKd4juEqDn59vs=; b=s39F6wm3Sc7L61
	1y5eLpUT2XBiGXKk38kmpmCLgRWyZQEHMkRzUXWbykmM0ckHYoisZBsBglPlYAbU6Em7hU3/M/pjk
	HROWFvIZAIU8mVeSjvhG4rmqtbeivQmfGeGyLvAQsYtAGUYFFE7c2AktgMXhkjm0+tk2PEpmQHFMk
	GCmW2yfhxGnC4G2jApeuqVbO6F3RQp5PXUi4jS+37aa5yTdj1XDvdI0U0+HdfsSIrn4CHDBJds724
	VriVCHk80nSsvXGEzkT1PjeCpyA9TU90xm2Fm4E+XCA3jz45r/GlubK1qvGMVuUmXb+G3kXuE9cOR
	hONP8PfDyAZh+oCMCH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSdA0-00A7ac-Oh; Thu, 16 Feb 2023 12:14:48 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSd9y-00A7Zw-1Y
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 12:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jXVXv+gMvR8vAGRweMPPnCLdrzntR/BT09IoSKaeNek=; b=Gg7lbHJlh80SoTt5vF3lfnYtbC
	ee8SuciTUSmAa6J/7ILuVvBETYViroI6jqIVcW2OzThG98/oSh7X9mOfRUvq3j9jdsw5sV1drrAP2
	Os7viU81YxERtw2SiGSEmiPGj8JTDquIPPVOGBf22J8XQ1x6tJUm+9ZHP2iYshE85i6gKE/Mod14i
	LOh1aSkwmrCIRoxL6IPmMovm+9I5bAd2IO7JsItBA/kPQ6Yf9Jas/IGdLNTfvsjJ+pZV8paAyvE2t
	EgIMTTLq7i3dORB3J4Gsgwkw3OabyoSzJ2a4XntZQMrFBt6+klUwvnn2bjcDbPNanDMGsxpfv3mJp
	lR9VpmrA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49696)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1pSd9t-00082N-QS; Thu, 16 Feb 2023 12:14:41 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1pSd9q-0005pl-Rl; Thu, 16 Feb 2023 12:14:38 +0000
Date: Thu, 16 Feb 2023 12:14:38 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: Re: [RFC v1 net-next 0/7] add support for ocelot external ports
Message-ID: <Y+4eLmpX9oX3JBVJ@shell.armlinux.org.uk>
References: <20230216075321.2898003-1-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230216075321.2898003-1-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_041446_107604_4F7F7E8F 
X-CRM114-Status: GOOD (  21.01  )
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

On Wed, Feb 15, 2023 at 11:53:14PM -0800, Colin Foster wrote:
> Part 3 will, at a minimum, add support for ports 4-7, which are
> configured to use QSGMII to an external phy (Return Of The QSGMII). With
> any luck, and some guidance, support for SGMII, SFPs, etc. will also be
> part of this series.
> 
> 
> This patch series is absolutely an RFC at this point. While all 8 copper
> ports on the VSC7512 are currently functional, I recognize there are a
> couple empty function callbacks in the last patch that likely need to be
> implemented.
> 
...
> 
> Also, with patch 7 ("net: dsa: ocelot_ext: add support for external phys")
> my basis was the function mscc_ocelot_init_ports(), but there were several
> changes I had to make for DSA / Phylink. Are my implementations of
> ocelot_ext_parse_port_node() and ocelot_ext_phylink_create() barking up
> the right tree?

DSA already creates phylink instances per DSA port, and provides many
of the phylink MAC operations to the DSA driver via the .phylink_*
operations in the dsa_switch_ops structure, and this phylink instance
should be used for managing the status and configuring the port
according to phylink's callbacks. The core felix code already makes
use of this, implementing the mac_link_down() and mac_link_up()
operations to handle when the link comes up or goes down.

I don't see why one would need to create a separate phylink instance
to support external PHYs, SFPs, etc on a DSA switch. The phylink
instance created by DSA is there for the DSA driver to make use of
for the port, and should be sufficient for this.

I think if you use the DSA-created phylink instance, then you don't
need any of patch 6. I'm not yet convinced that you need anything
from patch 7, but maybe you could explain what patch 7 provides that
the existing felix phylink implementation doesn't already provide.

I do get the impression that the use of the PCS instance in patch 7
is an attempt to work around the use of a private instance,
redirecting the pcs_config and pcs_link_up methods to the
corresponding MAC operations as a workaround for having the private
instance.

It looks like you need to hook into the mac_config(), mac_link_up()
and mac_link_down() methods at the core felix layer, so I would
suggest looking at the felix_info structure, adding methods there for
each of these, and arranging for the core felix code to forward these
calls down to the implementation as required.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
