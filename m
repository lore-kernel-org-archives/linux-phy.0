Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C829DC44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 22:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl08xx8OvLsMjU1nfRz0pTXN39gh9ONf93f+o9Q9F0o=; b=EcHan8aMQqyzDL
	IE7jr3ngln1PfN8oT4yECvgjic+Mfl791a0S5Pgc5UHyt90tgFERNcsJYqu6fCp9LX5LiNbcmATJs
	i735Rc/G3BhQop6iwVOk4vLD89IWO8q8iZZywlOS5+QQa1gcjfA1ZAAvXsWju8ctjg5JolZaSkSYH
	2d2Lpoqr3KEg74QYXoXCnKlt3F3DaMac4iZ0CVl68Ekm6Wn/HJN+waR/98lRYfl8jleVkGBCrgJ6I
	3iMP/GfodM+YYG32WHYS0XqmjxArM8JG+/0q/BxPHZ0nUe8Lgx1xrudn7gS+59m04Agk7hCz295et
	3VdRYilPaZZknshDoIBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk83M-0000000G1df-28Of;
	Wed, 15 Jul 2026 22:26:08 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk83I-0000000G1bv-0yo4;
	Wed, 15 Jul 2026 22:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Icy4Hvg5BKzy0MO22FaDLrhFiZTRk9Gdc2zzdS1Erwo=; b=Dciz/F9g6FWjHSsbun+77shqW4
	0hQ9DtoRImUvzjKePBcn4qKxvrY5vP/Fg78ZZ2QEVawlWWLkD6Dw3aGwE6En0RfdKa6JimUgNaCWv
	/SOuLzXngpB3musTELt6CuuaQMQX4atCbfmwIxZ7kkJ8YzXCNExEnO0NuHKwTwRnlDNc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wk833-00CQuz-De; Thu, 16 Jul 2026 00:25:49 +0200
Date: Thu, 16 Jul 2026 00:25:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org,
	davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
	andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org,
	heiko@sntech.de, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
Message-ID: <039c2cce-e76e-4321-ba4a-cd80801f136e@lunn.ch>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
 <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
 <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
 <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_152604_279023_CE3A4C6C 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

> The current design
> ==================
> The dependency chain I chose is simple:
> 
>     stmmac (GMAC) -> pcs-handle -> XPCS node -> phys -> SerDes PHY

Maybe we need to be more accurate here.

In QSGMII I _think_ it is actually

stmmac (GMAC) -> pcs-handle -> XPCS node -\ 
stmmac (GMAC) -> pcs-handle -> XPCS node -------> phys -> SerDes PHY
stmmac (GMAC) -> pcs-handle -> XPCS node -/ /
stmmac (GMAC) -> pcs-handle -> XPCS node --/ 

There are four instances of stmmac, four instances of the XPCS, which
then all come together into one PHY.

When using SGMII, does it look like this ?

stmmac (GMAC) -> pcs-handle -> XPCS node -------> phys -> SerDes PHY
stmmac (GMAC) -> pcs-handle -> XPCS node -------> phys -> SerDes PHY
stmmac (GMAC) -> pcs-handle -> XPCS node -------> phys -> SerDes PHY
stmmac (GMAC) -> pcs-handle -> XPCS node -------> phys -> SerDes PHY

There are four of everything, all working independently.

Is there 1 QSGMII PHY and 4 SGMII PHYs? Or does one of the 4 phys
support SGMII + QSGMII, while 3 are SGMII only?

> 2. User misconfiguration: even with reference counting, if a user sets
>    `phys = <&combphy2 PHY_TYPE_SGMII>` for GMAC0 and
>    `phys = <&combphy2 PHY_TYPE_QSGMII>` for GMAC1, the same PHY would
>    be initialized in two different modes.

I would hope that results in -EINVAL.

  Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
