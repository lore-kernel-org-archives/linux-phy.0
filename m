Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2C9EE49A6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 20:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3cSL0EwcED9LB9lJM0LJzs+8r7t58wf/GpHPgzPa7k=; b=eEdj7PHVi7ipv/
	mD8GEq8KefNVyFmmfVtN448G7NrEvAF0PP2IIe/rCxl1LUgi6NH/vy/3jo1tsctPvQUzQor08wcjy
	M2mrk+FpOXKWmVzE9q8WqH1YQC3lyQ0VO7kvPLRd1qaQdKce/K+w2edbhwwwTJRThhtR0J8iK6WHo
	vpKcsclMmm+MJzQBfjOMWOZkXCdFuSigHbQNkAG9edhSI0bjNUEJxxw7X3kvLjxhzArZCrkbSm5PT
	K0UEZmsPMU/P7tMwOrIUQE96pATSoeRGViU3stLzai3B6N3KQC2Zh+cekI46J6YATCbrF0h8e2xWp
	IayQ+0au9qdXFQbXvW8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYBOM-00EeL4-22;
	Mon, 21 Aug 2023 20:20:50 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYBOK-00EeKe-1Y
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 20:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=8QFnkeTZWnnDd5JVWGSZY/oaBHKW6HVkQkmP0X/QEgA=; b=V1UQnhEYSo+85Eyyky7CxcENTu
	j7Ums60rmSNmLigbsdUMWqBXCwBhUCDXZP8E5yD+C075L9VxdlOOX6LRbUzhsGn0LSbZJQiAl17pG
	DT/kwGbdg4buXKPtG8wdLYrHvbP8xysUCoq8o9di8hB0ZFjf354hlalEX2Go218IAGyU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qYBOF-004ioP-I9; Mon, 21 Aug 2023 22:20:43 +0200
Date: Mon, 21 Aug 2023 22:20:43 +0200
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
Message-ID: <e3afb3d5-6efe-46de-81ca-7f0163c4b04d@lunn.ch>
References: <20230817150644.3605105-1-vladimir.oltean@nxp.com>
 <20230817150644.3605105-9-vladimir.oltean@nxp.com>
 <20230821195840.GA2181626-robh@kernel.org>
 <20230821201146.hudnk5v2zugz726p@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230821201146.hudnk5v2zugz726p@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230821_132048_540972_58FB423D 
X-CRM114-Status: GOOD (  11.69  )
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

> > >        - items:
> > >            - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> > >            - const: ethernet-phy-ieee802.3-c45
> > > +      - items:
> > > +          - const: fsl,lx2160a-backplane-anlt
> > > +          - const: ethernet-phy-ieee802.3-c45
> > 
> > What's the benefit of having ethernet-phy-ieee802.3-c45? Will it work if 
> > the OS only understands that and not fsl,lx2160a-backplane-anlt?
> 
> No. The "is_c45" bool won't get set correctly in fwnode_mdiobus_register_phy().
> 
> 	is_c45 = fwnode_device_is_compatible(child, "ethernet-phy-ieee802.3-c45");
> 
> With that bool set incorrectly, the MDIO protocol cannot access the device's
> registers.
> 
> > > +        description:
> > > +          Some C45 PHYs have no PHY ID in the standard location, and there is
> > > +          also no PHY ID allocated for them to fake. They are identified by the
> > > +          primary compatible string, plus the secondary one to distinguish them
> > > +          from a raw MDIO device.

Could you fake ID registers? Is this on any arbitrary MDIO bus, or an
internal bus with its own MDIO driver which could trap reads to the ID
registers and return well known values?

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
