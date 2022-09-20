Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4FCC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwNujNPiny8qmKaov3UIGoW70N5+e5ml7BuiiX+o5+Y=; b=0OXGIyskO4KdZj
	n3U+lgrI7KcQMgNM2DI2eZjPRqv3Qrdanh5jwt6ykTFhTIt5MyRSKiUu8+dFHT6e2Rr/lOhpkj+Gb
	y9e8Bpo8rl1XpmtoSrEE8/kbpJgnDiDi3Lr9xxKNqhGjPEG/yp4uLpmcRJzXYamLn/aKz4bm6LpPb
	7PuPlrAels5hOozxFsYOiYX/uXjbFWGQk5X8XK5L8lnJ/XM1HjSCA+3HTjfzgmHttUoV31oaXldO9
	qJ0JJvvm1zGlooGfymaUNsa7tUCOsrPx0DFlJJI7mCRrmJzmfRcZoiaPXooH14nl6TqUUBZy9M8Kf
	DsDRCcvCnmgvlQ+4/67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWox-0011BB-V4; Tue, 20 Sep 2022 06:33:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWov-00119Y-Va
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:33:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6C3B7B824B7;
	Tue, 20 Sep 2022 06:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A531C433C1;
	Tue, 20 Sep 2022 06:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663655603;
	bh=Kx95UqRhjI3UeTGV/4rW6sPpJIP0PglZOZlpHtmZksw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UfhofTxj0ogMjG7dJh6lAOC7Si2KTr5/bdmSwuBOWBnEiaqyIHNwZH6ZGjO1UEaXQ
	 7dGG0KNm4YgB42U7O14fjhQQq6CC19TkVhmBTsTUEQi5oVDcPhNj5jXqtQbE6w01K/
	 ylRx/TihGFqk4SrJ6rXOcwRkqBqh7Fg4ofz83nb7clOPDztyYwZMA2SCtu2NEoDr0h
	 Q/GxevS8X6ccXvZ89gZwRucr558GXOTEaYDkmgxNwescnTdgDgL8u9RHJt9ka74xNJ
	 wDNz6Qpltfm6JQhwdB/NUfFaeg2nD6L0LtlsDLpJtxgwpb917MLKGWiIrWISMFsGcO
	 TmOueC1NkbRDQ==
Date: Tue, 20 Sep 2022 12:03:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: Jim Lin <jilin@nvidia.com>, thierry.reding@gmail.com,
	jonathanh@nvidia.com, balbi@kernel.org, gregkh@linuxfoundation.org,
	bhsieh@nvidia.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: tegra: xusb: add utmi pad power on/down ops
Message-ID: <Yyler0lWvEQeKiW2@matsya>
References: <20220816082353.13390-1-jilin@nvidia.com>
 <20220816082353.13390-2-jilin@nvidia.com>
 <YxS6FBeyS1Cs7xhI@matsya>
 <8d33abb0-51ab-67c4-50b3-ae95a5d9fb55@nvidia.com>
 <YyCVBVRQo+qPo5vH@matsya>
 <42ae1deb-bbdd-2a16-c671-0bc17d3e2647@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42ae1deb-bbdd-2a16-c671-0bc17d3e2647@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_233326_198407_281F8149 
X-CRM114-Status: GOOD (  16.20  )
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

On 14-09-22, 10:59, JC Kuo wrote:
> On 9/13/22 22:34, Vinod Koul wrote:
> > On 06-09-22, 10:43, JC Kuo wrote:

> > Thanks for this explanation... It helps!
> > 
> > Just a suggestion, can this be moved into phy_init() you have detected
> > connection in phy_power_on(), the transceiver can be enabled in
> > phy_int... Would that work?
> > That would work, too. However, because Tegra USB has separate phys for USB3 SS
> and USB2, I'd like to keep the USB2 phy operations as they are now, so that USB
> host and device controller drivers do not have to distinguish the phy type and
> invoke different phy stubs. Furthermore, PD_ZI=0 does really power on the USB2
> phy, partially.
> 
> For example:
> 1. in .probe(),
>     for_each_usb_phy {
>          phy_init(phy);
>     }
> 
>     for_each_usb3_phy {
>          phy_power_on(phy);
>     };
> 
> 2. upon detecting connection,
> 
>     phy_power_on(the_target_usb2_phy);

It should be always phy_init() in probe and once detection
phy_power_on()

that should be generic flow for all...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
