Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77769C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 13:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUqErQRsPjgq+/c9u2gYFMpGcIuM0rx+ROW5CHSW8gQ=; b=EGrAsVKTZo1Vge
	fDBZOpoaFqLp1csG7HbemTu3FALqMHUXkGY2Nbvu/BvrtdnC3j7aLFeESF0Eqq8imnO6r4bgUsVTd
	p0FY/SOY8NK3BNQ4fxUsokTCXZ8m53tFqookJ5VsuRGmG8ryqSys/t+EWxxeYkTLtqo7oMk5aUppH
	8xgg7/lbF6A1ACOQiaHZTw8mN64hGc8aWH8hwBkKnGBwQOYJLHk2oqvLSvPNDVMdIW49UGhxn2dUq
	mxLEVZpcwgYPPEFo9+cSiAU7C6WxXgvDD5IYoF8LQKxcOywrp5jG4rMPEDzHhE01QU7l/wvBLU6Pr
	FsnSKXdTBIMt3QK+G/pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6OO-00B3kz-To; Tue, 13 Sep 2022 13:56:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6OM-00B3Yp-Pb
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 13:56:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2B3E661451;
	Tue, 13 Sep 2022 13:55:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E301BC433C1;
	Tue, 13 Sep 2022 13:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663077357;
	bh=TAj//RYZI7UUscP5Cjl+wNFayZlSt0ot2cODGmmAMAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=stHlzwgtG7ynxu1zAlluKYeyQJoZik8BTEiKRH2ZteJlUMg6sq6LJefRxQZqDVXGT
	 lOg2655f/rNhT9OwO/U/bhvTNgrDXmMq/epgDb5LxfeLT9nB/6DrqSCxKWNWY50TPn
	 FdAVEeUigOT7FuJ2TQ4PLsMzXukNGrYIc6J25/ETsGBULMPAkzCeUgy4B0/r+TUNlo
	 5CZ57x9M9Ov1xg3iLfqRQjp2n+pB6hFgFly1pKaomnl4WW30x6EOwfhkmjDimwgTvp
	 EliuMAJeUwFqsx+5e0FQ+lv9TCRvzV2u0PrSjxCYs5CEr2qezJdRArK7epVDXmA4SN
	 uMTp0BlzxRcgw==
Date: Tue, 13 Sep 2022 19:25:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liang He <windhl@126.com>
Cc: kishon@ti.com, narmstrong@baylibre.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-phy@lists.infradead.org
Subject: Re: Re: [PATCH] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold
 reference returned by of_get_parent()
Message-ID: <YyCL6ajchUlX8q/x@matsya>
References: <20220705021526.281441-1-windhl@126.com>
 <YxIkGocG/WuwtI7d@matsya>
 <6e6f3989.4cf5.1830c86ff8b.Coremail.windhl@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e6f3989.4cf5.1830c86ff8b.Coremail.windhl@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_065558_885521_E87D6348 
X-CRM114-Status: GOOD (  15.84  )
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

On 05-09-22, 15:21, Liang He wrote:
> 
> 
> 
> At 2022-09-02 23:41:14, "Vinod Koul" <vkoul@kernel.org> wrote:
> >On 05-07-22, 10:15, Liang He wrote:
> >> We should hold the reference returned by of_get_parent() and use it
> >> to call of_node_put() for reference balance.
> >
> >And why should we hold and drop reference?
> 
> >
> Hi, Vinod Koul,
> 
> 
> Thanks very much for your review.
> 
> 
> As the of_get_parent() will increase the refcount of the node->parent  and the reference will be discarded 
> so we should hold the reference , with which we can decrease the refcount.

Right, that is correct explanation
> 
> 
> If there is any misunderstanding about the of_get_parent() API, please correct me.

Nope, just that this explanation is missing from the log...

Please add...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
