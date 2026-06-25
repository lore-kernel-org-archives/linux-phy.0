Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1AF4CDE001
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 15:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLU0UYHHNkMgONIT7Zp4YKsOglZqid9I+mf9n4VCKTE=; b=WY0B4yK+C7i/AO
	gG/Cq7x9/k27yGj3IWjqgpUBSCiVWLiKrCAuArM2IRczF9FvsT4oxFPtmFjc/bSfjB/VFiIPS2psI
	OWhCNymUZRpsquCSSLk9OeyA+qUadfporhT9bltew1ShNxffqTkm1V/yLizGM1EKmmnehbOKPtNWp
	7cAgH31z7cBJnwPyer1yHKTJ2VYKPQG4C87toixUuDDsCVhTjgY2Kv16mqgQKLJi4wlPKqJGIKEBT
	tii4a8Xo1fpwiXQpUCACNgZ+tCzdsMHUWNjwj2VvngrLJowgb/UJG4VlhtaqqKQohrlaQ7Y0WxxXr
	zfhRXNIGb/lHfh++Js3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wclvW-00000009OY2-35X6;
	Thu, 25 Jun 2026 15:23:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wclvU-00000009OXp-45bR
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 15:23:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A5CB440F8;
	Thu, 25 Jun 2026 15:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25181F00A3A;
	Thu, 25 Jun 2026 15:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782401016;
	bh=IL26CsHIrio9igkJNe+Qqcof5uxEGMEOJx0qYBrwMP4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Q0u7dZSJz2xQ/zdxR6ZDtcNHfIqQVSwaIgBwGod/vY1YCKPHqmCKp5E6p2d4gPaNp
	 Q2cP7lchEwkfPSE0PevJghkKY/ZpY8xNyMTHQm0TcHE6nDEDi5eeMwXXXxfcS24Dja
	 rFjygUKb3x/PawcX4tzFCN5y635WS6WNUkF98IJZTO/5+ByUktEclxi4As2jhzLYqh
	 zFLZHdnpip1/erG5oWgK2xf2urSOLAe+VmZDAd6eJyUFItrttohA+Q0WEq2wOnZ/6N
	 6i38rMkAQb4brzdgFJJp3OM71Y39ZvV94F9GojG35J7eH4x5oQQSCwLVTjY+cUVHdg
	 tqr9zBDSxuoVg==
Date: Thu, 25 Jun 2026 08:23:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Aleksander Jan Bajkowski <olek2@wp.pl>
Cc: Petr Wozniak <petr.wozniak@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
 <hkallweit1@gmail.com>, "David S . Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Bjorn Mork <bjorn@mork.no>, Marek Behun
 <kabel@kernel.org>
Subject: Re: [PATCH net v4 2/2] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
Message-ID: <20260625082335.3d13d875@kernel.org>
In-Reply-To: <9f813a8e-8b9a-4708-b3b6-db4972adac35@wp.pl>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
	<20260624084814.20972-3-petr.wozniak@gmail.com>
	<9f813a8e-8b9a-4708-b3b6-db4972adac35@wp.pl>
MIME-Version: 1.0
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

On Wed, 24 Jun 2026 23:44:19 +0200 Aleksander Jan Bajkowski wrote:
> > For genuine RollBall modules (e.g. FLYPRO SFP-10GT-CS-30M with Aquantia
> > AQR113C) the probe now runs after initialization is complete and
> > correctly returns 0, so PHY detection proceeds normally.  
> The FLPRO SFP module still fails to detect the PHY. It is necessary to
> increase `module_t_wait` to 20 seconds. Most likely, during this time
> the module loads the PHY firmware from SPI memory or from the
> microcontroller (rollball bridge) via MDIO. Same probably applies to
> most SFP modules with a PHY that load firmware at start-up (AQR113,
> RTL8261C etc.).

Just to clarify is FLPRO a typo or a knock off ?
Do you want something to be changed here or you're just flagging that
more follow ups are needed if we want to cover more modules?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
