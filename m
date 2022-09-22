Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B457EC6FA90
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 01:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSoZp6j7hj25MgjjlCKGuhtekwouBt7iPD/Kx4cYD9s=; b=Kou68GcFWuHWmV
	GZCwV9lUkpBjkq3B6Y5U1VBMT09myFuOJE1NYVJlQzn4baZocI4xOFFe7OseJYZ/7PSTVokguXuVJ
	LG0h4gKTJ5yDax7Iyx5OkPMw32mrwJVVjCZD7n7UUr7fGy4yeQSA4J/c3fYnvUCWUp4nJ3SUoKizl
	CSQjBY0pJft6kHQo8sAPTCzXM4oCn40fnjTRgDTZuxlCqcX3wuZT62veBZf8Mt1jX7sjjyVSNhVf2
	F/MiWawNkLRs+5iBzpL4Yn5RabxioBAkzj661ObNqk7yo/oQ9ix9B8G5uXQq4/q1GEK3Y1NU8flPi
	wfF8Zodw8SHPfhheh2Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obAfu-00D2rA-Tb; Thu, 22 Sep 2022 01:06:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obAfr-00D2q9-LZ
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 01:06:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 30ADF63341;
	Thu, 22 Sep 2022 01:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5789C433C1;
	Thu, 22 Sep 2022 01:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663808802;
	bh=Lqql20nTSnQlo3UFTHU7a3vI+xkva1fKFe3nZS5Lp4g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gPiukSsEugg8Lc4O5ByTkiYnYX0Qhdwg7dw2bwdf6wdRfIFOqi/yU0eOyW/JUi0a3
	 Rm7fIuhXfrXOeyjiUhOAq4Dk96KHtuLw7UHp5OM8AYzINZHpe6ZKXcfbtUkt2rIzRd
	 yzt4u2mu8MFg9bfEP2+9whv+iZWOaTS6+gZJGUlTL+kTP9c43PXH9KfzT6OqihKX2+
	 eQvAn4kJ2dCFOA2owCeuA9Y5yFcib6qF0Zsrigp9j8hM5OWZr1rbGlwujpaNdcHGYV
	 XH0AQeB7yPL+WQgyjHcKwO+ginr0XknOn+U+LAkG+zdTfbfVK8c4BO/zejrb14f839
	 QW5LEfavE2SaA==
Date: Wed, 21 Sep 2022 18:06:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
 <krzysztof.kozlowski+dt@linaro.org>, "geert+renesas@glider.be"
 <geert+renesas@glider.be>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v2 0/8] treewide: Add R-Car S4-8 Ethernet Switch support
Message-ID: <20220921180640.696efb1a@kernel.org>
In-Reply-To: <TYBPR01MB534186B5BA8E5936C46E3B6DD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
	<20220921074004.43a933fe@kernel.org>
	<TYBPR01MB534186B5BA8E5936C46E3B6DD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_180643_770384_B150687A 
X-CRM114-Status: GOOD (  13.91  )
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

On Thu, 22 Sep 2022 00:46:34 +0000 Yoshihiro Shimoda wrote:
> I thought we have 2 types about the use of the treewide:
> 1) Completely depends on multiple subsystems and/or
>    change multiple subsystems in a patch.
> 2) Convenient for review.
> 
> This patch series type is the 2) above. However, should I use
> treewide for the 1) only?

I thought "treewide" means you're changing something across the tree.
If you want to get a new platform reviewed I'd just post the patches
as RFC without any prefix in the subject. But I could be wrong.

My main point (which I did a pretty poor job of actually making)
was that for the networking driver to be merged it needs to get
posted separately.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
