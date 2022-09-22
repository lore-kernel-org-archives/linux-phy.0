Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78259ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 01:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcaB4toiqsjnA7vjhZOaR9Ol+WFVPX1YyzDZ1nDoPhc=; b=hq0vtQQNRWqY14
	iDjouTQu3a0ObkMgeglXY2fs8hDSBa1rQ777zc+d0c4/oVDElC3SIRW4oobbGFZiiN3P0DYurLcuL
	m7uPHs58n5kYwqj8zo4sJJ3Uru5DJ8Eu9JqDAFSInSIoyJg87N4xjoGLcUTnmaIUNaJPvjHVOPlEM
	ctNYk6Am354tu+GjKx8Hzlty5TtF0kz3BR3aMTGIgB2LShISxijMhdZ6a6hupZOhKr3R4yuQgEIdx
	EFPcwc5ZbnVdlCC3So7C4iRR0cNMUhe+rSj8WximLIWXpxrT5h8v4ESM5HNVM8wnKBPbWCA05ON/m
	xAKEKFBkPxX17jE9ckVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obArv-00D3iy-Py; Thu, 22 Sep 2022 01:19:11 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obArt-00D3ic-45
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 01:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=gZMvLQWwTExo10mo76cnJcxFdLAq2Xdyav4OP3PXoL4=; b=38186mXIsgh5H15k0jq064g7Nh
	f8wbR92vfbCTWafu5+Ikqra1vc2GjQN/ckQ1Rgg3trETUaDzXDpCYeNBMnlWnfxNPb+8jv7ahpbwb
	MH3H4zn+h3MrtsbUfGKFZmzEq12Merc3JdXNhEOzq2KJVVmP3DxG69pfc01r1SLIkJ54=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1obArS-00HU64-VZ; Thu, 22 Sep 2022 03:18:42 +0200
Date: Thu, 22 Sep 2022 03:18:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	"kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"edumazet@google.com" <edumazet@google.com>,
	"pabeni@redhat.com" <pabeni@redhat.com>,
	"richardcochran@gmail.com" <richardcochran@gmail.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support
Message-ID: <Yyu38hhzNcjFfgCN@lunn.ch>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921074004.43a933fe@kernel.org>
 <TYBPR01MB534186B5BA8E5936C46E3B6DD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
 <20220921180640.696efb1a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220921180640.696efb1a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_181909_185552_7B62130F 
X-CRM114-Status: GOOD (  22.16  )
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

On Wed, Sep 21, 2022 at 06:06:40PM -0700, Jakub Kicinski wrote:
> On Thu, 22 Sep 2022 00:46:34 +0000 Yoshihiro Shimoda wrote:
> > I thought we have 2 types about the use of the treewide:
> > 1) Completely depends on multiple subsystems and/or
> >    change multiple subsystems in a patch.
> > 2) Convenient for review.
> > 
> > This patch series type is the 2) above. However, should I use
> > treewide for the 1) only?
> 
> I thought "treewide" means you're changing something across the tree.
> If you want to get a new platform reviewed I'd just post the patches
> as RFC without any prefix in the subject. But I could be wrong.
> 
> My main point (which I did a pretty poor job of actually making)
> was that for the networking driver to be merged it needs to get
> posted separately.

Expanding on that...

You have a clock patch, which should go via the clock subsystem Maintainer.
You have a PHY path, which should go via the generic PHY subsystem Maintainer.
You have an Ethernet driver and binding patch, which can go via netdev,
Cc: the device tree list.
And a patch to add the needed nodes to .dts files which can go via the
renesas Maintainer.

At an early RFC stage, posting them all at once can be useful, to help
see all the bits and pieces. But by the time you have code ready for
merging, it should really go via easu subsystem Maintainer.

All these patches should then meet up in next, and work. If any are
missing, the driver should return -ENODEV or similar.

If there are any compile time dependencies in these patches, then we
need to handle them differently. But at a very quick glance, i don't
see any.

	 Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
