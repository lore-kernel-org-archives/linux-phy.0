Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2219CE732D0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 13:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3Evgzq65h6yMBcHsI+JaleaJlsUuNIS8QZhNHL6spw=; b=OX9Tj5bcXNLpZA
	kGnIdVImAIxLWm31PjRSzK5npdcaNGOyCDPr+ZiCLMbq5Nt+tS90AUTN4My+ZQFXc0/4wc2Vved1x
	tcgusdBoe0304goABg0rpxI1hsjQOlRmBA4GoFBYuh7N1UjyJUyr5HYC2uKyimfkSGN3rN2KV6uKM
	5fnzovBYFlN8FthCZ3bWa1AJWnUgPejclK204nH6Ar4Ry1ZalqtTSrObh15b/6RtsqvS+f7af7/1L
	NpmT8pdxoPvH9fJCF8iJVIW4tshCeH0VMtWYhP7qCK74UBHtdNsOgzuJuP+AJSY1l2E24Y5aeWdwT
	rxnKrJeFsycNu64ZWkBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrCA-004Pmb-2C;
	Thu, 28 Sep 2023 13:36:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrC6-004Pi4-0f
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 13:36:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7107EB81C53;
	Thu, 28 Sep 2023 13:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29908C433C9;
	Thu, 28 Sep 2023 13:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695908199;
	bh=buWFvyKvzLE7yL9fD5WstGeTidrhh5FjGgosGmcwWnE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lRZGCX4uM6nkWatFx7vCXHkNlUNWjWo3yiUsyXT5+Lkn/x8HZJejO0I56+C12vAKX
	 mJorU9/7Rn6Ix0Ka5F16XmmPqoZp9ssId88f4t8jGBd5LG3pi3bYUgRYoyrjq/dSho
	 uY2qKIzOuhL41R7wpANqI/+vSXk08AD6BuvSdqIKwzx773+Z4U6NnerejQug+Kw1lB
	 xByiAv/JNY1zsOIEfRX7SVieCdeeCAn5w8+m5gTLdMzUCJT55WBUK+tOSakelTU7FJ
	 hgJuQcyIknhUrLOVHIfPUJ1dER7tKcRDGcTRvSbJiQ8GoVB5/Bm2tgTPp5vxcQ1ghX
	 AMYeIKxgZBZ3A==
Date: Thu, 28 Sep 2023 15:36:29 +0200
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 03/15] phy: ethernet: add configuration
 interface for copper backplane Ethernet PHYs
Message-ID: <20230928133629.GM24230@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-4-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-4-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_063642_528347_18F0042B 
X-CRM114-Status: GOOD (  18.07  )
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

On Sat, Sep 23, 2023 at 04:48:52PM +0300, Vladimir Oltean wrote:
> In Layerscape and QorIQ SoCs, compliance with the backplane Ethernet
> protocol is bolted on top of the SerDes lanes using an external IP core,
> that is modeled as an Ethernet PHY. This means that dynamic tuning of
> the electrical equalization parameters of the link needs to be
> communicated with the consumer of the generic PHY.
> 
> Create a small layer of glue API between a networking PHY (dealing with
> the AN/LT logic for backplanes) and a generic PHY by extending the
> phy_configure() API with a new struct phy_configure_opts_ethernet.
> 
> There are 2 directions of interest. In the "local TX training", the
> generic PHY consumer gets requests over the wire from the link partner
> regarding changes we should make to our TX equalization. In the "remote
> TX training" direction, the generic PHY is the producer of requests,
> based on its RX status, and the generic PHY consumer polls for these
> requests until we are happy. Each request is also sent (externally to
> the generic PHY layer) to the link partner board, for it to adjust its
> TX equalization.
> 
> struct phy_configure_opts_ethernet is valid when phy_set_mode_ext() has
> been called with PHY_MODE_ETHERNET or PHY_MODE_ETHTOOL, same as with
> other union phy_configure_opts types.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

...

> +/**
> + * struct phy_configure_opts_ethernet - Ethernet PHY configuration set

nit: please include documentation of the structure members - type,
local_tx, and remote_tx - here.

> + *
> + * This structure is used to represent the configuration state of an Ethernet
> + * PHY (of various media types).
> + */
> +struct phy_configure_opts_ethernet {
> +	enum ethernet_phy_configure_type type;
> +	union {
> +		struct c72_phy_configure_local_tx local_tx;
> +		struct c72_phy_configure_remote_tx remote_tx;
> +	};
> +};

...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
