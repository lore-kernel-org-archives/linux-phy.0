Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11424E748FC
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 17:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV3gfG5kIOpODRJ0rhjbQzxZ1iFzWxZKUy8SaKSktZU=; b=EEZ80eMth/zsgm
	K2ggTYGbtGtZHttzZoEjQGfTk5OOikZQamtbPGOIi86fAtxAUr4bUH54xsDm/qN8Ncps3tj1SmP/j
	UhcZF6y4Gi2EHc1xf6Q26UmsMmM2Y+vuX9Zqrei+6VCyD1OhNTNmnsyModDgwi9I6n9r2St+H33xw
	Dx7uwffc2HjP4p+iydkIeaK5MzrBB390Cx20WlhSVsKutq63NSbLGq4xqmXn8GQmhU+TtxRjcU87I
	NwhNpJPYaKysNS+z8JyDkiOtU02OKTsfsiz1r7dS69pVtSmwf1cw5f4kC12wetTNvaztu1oNEnaxV
	YiGl3RuUcLmdFy09CFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnMaj-00D8dz-2Z;
	Mon, 02 Oct 2023 17:20:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnMad-00D8c2-0b
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 17:20:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 118FF60FA6;
	Mon,  2 Oct 2023 17:20:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21855C433C7;
	Mon,  2 Oct 2023 17:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696267211;
	bh=SLgvctAoGEpa0Dcyn2+NQ5w/1PZ3Zu/4iXSrOVqEPCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TnDzPwntJSzRxoK+QbW0s2Oo3Mrul/EyxvpchFeubFgW8ihyytBxTiqRDMhntzNGX
	 fvGN1EcFvonBwEORXT6RpZR3RoczTVwYmHEdLdmy0MNerqDxXZPHfseB/vjCAPmHJI
	 Asg3y5/ftypnvJ80OB3drCP4pZe2XMkCz3017NuSCBxXUoXINvhhkJEDFfszc38qf0
	 4xLja3cdx84i9zdaznQZsDBY5x+rnKmHokyEDfIrSydyzUPmx84oaLdBFjWNgxDJDB
	 qJof9G0qAE/VJeegTs61SLsbQm5qUn2ZmgaYgzD3/5zxdWWAuJA+hyxYZxvAIaEo0H
	 Es52BPm5mH/mQ==
Date: Mon, 2 Oct 2023 19:20:05 +0200
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
Message-ID: <20231002172005.GC92317@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-4-vladimir.oltean@nxp.com>
 <20230928190536.GO24230@kernel.org>
 <20231002131110.4kjkinc2xyxtdwbv@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231002131110.4kjkinc2xyxtdwbv@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_102015_290002_C29A6254 
X-CRM114-Status: GOOD (  19.37  )
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

On Mon, Oct 02, 2023 at 04:11:10PM +0300, Vladimir Oltean wrote:
> Hi Simon,
> 
> On Thu, Sep 28, 2023 at 09:05:36PM +0200, Simon Horman wrote:
> > On Sat, Sep 23, 2023 at 04:48:52PM +0300, Vladimir Oltean wrote:
> > 
> > ...
> > 
> > > +/**
> > > + * coef_update_opposite - return the opposite of one C72 coefficient update
> > > + *			  request
> > > + *
> > > + * @update:	original coefficient update
> > > + *
> > > + * Helper to transform the update request of one equalization tap into a
> > > + * request of the same tap in the opposite direction. May be used by C72
> > > + * phy remote TX link training algorithms.
> > > + */
> > > +static inline enum coef_update coef_update_opposite(enum coef_update update)
> > 
> > Hi Vladimir,
> > 
> > another nit from me.
> > 
> > Please put the inline keyword first.
> > Likewise elsewhere in this patch.
> > 
> > Tooling, including gcc-13 with W=1, complains about this.
> 
> Thanks for pointing this out. I guess you are talking about the c72_coef_update_print()
> function, whose prototype is mistakenly "static void inline" instead of
> "static inline void". I cannot find the problem with the quoted coef_update_opposite().

Yes, you are right.
Sorry for my error.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
