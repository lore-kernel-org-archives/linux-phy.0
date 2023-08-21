Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9066FEE49A5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 21:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr/ghqkNOGiJwIFAYO1dE48JDDHxWl30MgWZgna9igg=; b=2jX2T612I7Fswk
	4xlOBwbOD5jYZJnH0SKdXB4VZOGkWRy6cTavaD3xKLpXDUFHg7mrdsmDqFuQD1Ick9fegahSnHcMC
	tEmPOaxWWVVKWRnU2jub2PaZ5Ig8txv2GHiwShFCjy3fuF+D/19WOfFaJMoQeL7HP08NqDChggWmG
	tDg0OWY5UVWxRi7hJl9vf/Aorp9FWY307pLArajx/5LVvqkQ/7b+I42RZWt7QqOWfnSPWnUHFp43p
	R6ZxYMTXkhXgYJY4K1HfdC9/qkL9jUnP1bRD2dx1hqNqbYW1Tbm3Wr3Ffpu3GXe912BYtvsriKnDi
	SKRZ7E754kPikB3nxPZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYCAV-00EhcH-0o;
	Mon, 21 Aug 2023 21:10:35 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYCAS-00Ehbd-1n
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 21:10:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=6YAGYc+gu+qlxGlxjiPaMjWsQ010TzGyUv0/2pq1FBE=; b=KCLs3HQYE3H9GrtX9omI5lH7Zx
	NJzg2+JhkWxrNj17x6oqDsWSERoB+l4UnR4BOU3hkhg9Yz+pARM7wZqqxO+tsyTNQY8lPSgvc/cp3
	DJErsW3/c3y+V3HrEvs7wUjGyAZEEKqXYEU5lAchOoAt4BdNrZbAp61YifJx8SEtfvv0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qYCAN-004j3g-JL; Mon, 21 Aug 2023 23:10:27 +0200
Date: Mon, 21 Aug 2023 23:10:27 +0200
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
Message-ID: <842f7ff0-d376-4f55-b72d-2db7ea827792@lunn.ch>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
 <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
 <20230821203433.ysulh2bixfypbhsk@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230821203433.ysulh2bixfypbhsk@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_141032_598776_E1C02A30 
X-CRM114-Status: GOOD (  12.16  )
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

> But, there's already something else at those MDIO registers (where the
> standard PHY ID location is), in the MMD that the AN/LT block responds to.
> And that would be:
> 
> /* Auto-Negotiation Control and Status Registers are on page 0: 0x0 */
> static const u16 mtip_lx2160a_an_regs[] = {
> 	[AN_CTRL] = 0,
> 	[AN_STAT] = 1,
> 	[AN_ADV_0] = 2, // overlaps with MII_PHYSID1
> 	[AN_ADV_1] = 3, // overlaps with MII_PHYSID2
> 	[AN_ADV_2] = 4,
> 	[AN_LPA_0] = 5, // overlaps with MDIO_DEVS1
> 	[AN_LPA_1] = 6, // overlaps with MDIO_DEVS2
> 	[AN_LPA_2] = 7,
> 	[AN_MS_CNT] = 8,
> 	[AN_ADV_XNP_0] = 9,
> 	[AN_ADV_XNP_1] = 10,
> 	[AN_ADV_XNP_2] = 11,
> 	[AN_LPA_XNP_0] = 12,
> 	[AN_LPA_XNP_1] = 13,
> 	[AN_LPA_XNP_2] = 14,
> 	[AN_BP_ETH_STAT] = 15,
> };
> 
> The AN advertisement registers are kinda important to the operation of
> the driver, so I wouldn't want to mask them with fake PHY ID values
> reported by the MDIO controller.

O.K, not ideal. For C22, you could just put the ID values in the
compatible, which is enough to get a driver loaded which supports that
ID. But somebody recently commented that that does not work for C45. I
assume NXP has an OUI, and could allocate an ID to this device in
retrospect. So maybe it makes sense to make C45 work with an ID in the
compatible? And get the driver loaded that way?

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
