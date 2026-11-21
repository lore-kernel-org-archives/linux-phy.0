Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BEF606A32A
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 16:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SYnibwoj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lHu0B9ge
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BLzM98aOqpGlXMLzvJzcKQVp4mQCrEZLBO+KauxcBB0=; b=SYnibwojAEHL4G7isr9GOImM/P
	VMR9+vmOcxnfuwQ5FK9MF7E1LWA98+54b7Sgz80LNw3Cw04x4hT1dHmudbohZxuXUtZlGS+ZIm6DS
	AuJTJDxzXnXnhnvCnQav8zHNcSS55aVWBPWTPlDXAHwXvoorjs9DdgClTT+ao5GKRmywaLOVW1CHQ
	4TGDAdud5NP7ebbApKb9e+EiYLtBG4eT6N8SVrgqzoLlVSLj6uqjIRCeJj5TL12BEI/pw0QW2NjNy
	rd2i84SyrN96ngsBIURZGthIaPSQkREE8VcjJrbF3wojGrEAqBhCwq7MaJ8Tv8Pd1wZiCb5UlrhDP
	ic6xlPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnlx-0000000HTee-20kG;
	Sat, 21 Nov 2026 16:17:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnlv-0000000HTeQ-1bm1;
	Sat, 21 Nov 2026 16:17:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 87F29611B1;
	Sat, 21 Nov 2026 16:17:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F7F21F000C4;
	Sat, 21 Nov 2026 16:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795277822;
	bh=gdjz1LX7YwW8ZR9qJXGevpRy6ijjFkmFKeIBd9X+uNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lHu0B9geJ6gjQjQkj5FaJIP1BDzXYzPHONIFc6s64QBr5LXV3OyfOiCqBgyG86ng6
	 1G6cBzs+QjWvMY/qMoXyPJQy6YTzyKe+ReuaOXOxVrd1B0L3z1DJ+SdwQeFdXvjBvr
	 PMIoPolU9tMlQqJ98GibuBozZl5/y9e+WHz9nklS8wRMYxn5gwJ45tBQZAk93mmaiw
	 4a56cGsYnKCYvPDY/VQ9cUT+SwhLT0uMY8Mq66seXQHamO36qIvX6QGwgUV/9USxJV
	 VjP2q2oZx60CThuPwFzVze/vzZoBPOiz4IbnpE4lhGqm/VurLpgth6wf2W8MUA+hRA
	 6H+prexwbdwkQ==
Date: Sat, 21 Nov 2026 17:16:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Benjamin Robin <benjamin.robin@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yuti Amonkar <yamonkar@cadence.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Andrew Davis <afd@ti.com>, 
	Vinod Koul <vkoul@kernel.org>, Chintan Vankar <c-vankar@ti.com>, 
	Abhash Kumar Jha <a-kumar2@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Thomas Richard <thomas.richard@bootlin.com>, 
	Swapnil Jakhade <sjakhade@cadence.com>, Siddharth Vadapalli <s-vadapalli@ti.com>, 
	Gregory CLEMENT <gregory.clement@bootlin.com>, =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, 
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/4] phy: cadence-torrent: rewrite Torrent PHY driver
Message-ID: <20261121-artichoke-sturgeon-of-karma-a7c4e5@quoll>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-4-da2db7125cd7@bootlin.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261120-phy-cadence-torrent-ng-v1-4-da2db7125cd7@bootlin.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 20, 2026 at 01:55:52PM +0100, Benjamin Robin wrote:
> The Cadence Torrent PHY (sd0801) is a multi-protocol SerDes used in
> several SoCs, among them the Texas Instruments J72xx family. Its
> programming depends on many parameters: the selected protocol (each
> associated PLL has to be set to a different frequency), the DisplayPort
> bit rate, the reference clock frequency, whether spread-spectrum
> clocking (SSC) is enabled, the number of lanes, and the PHY revision
> and technology (process node).
> 
> The current phy-cadence-torrent driver hard-codes, for every supported
> configuration, the set of register values to program. Because this
> configuration space is large, adding a new board or a new combination
> of standards requires duplicating dozens of opaque register values,
> which is inflexible and hard to maintain.
> 
> This new driver version computes the register values instead:
> 
>   - registers that depend on the reference clock frequency or on a PLL
>     frequency are computed at run time, from the reference clock
>     obtained through the clock framework and from the PLL frequency
>     derived from the selected standard;
>   - the other registers, which only depend on the standard type, the
>     PHY revision and the technology, are handled by one function per
>     register, using an internal table selected through a
>     standard/revision/technology key.
> 
> The PHY revision and technology are detected automatically from the
> PHY identification registers, and the DisplayPort link initialization
> and rate reconfiguration have been rewritten.
> 
> Compared with the existing driver, this rewrite provides:

10k lines patch!

No, instead improve the driver instead of doing bunch of significant
changes like:

> -#define MAX_NUM_LANES		4
> +#define MAX_NUM_LANES		8


mixed up with things like:

>  	/* voltage swing 3, pre-emphasis 0->3 */
> -	{	{.diag_tx_drv = 0x0003, .mgnfs_mult = 0x0000,
> -		 .cpost_mult = 0x0000},
> -		{.diag_tx_drv = 0xFFFF, .mgnfs_mult = 0xFFFF,
> -		 .cpost_mult = 0xFFFF},
> -		{.diag_tx_drv = 0xFFFF, .mgnfs_mult = 0xFFFF,
> -		 .cpost_mult = 0xFFFF},
> -		{.diag_tx_drv = 0xFFFF, .mgnfs_mult = 0xFFFF,
> -		 .cpost_mult = 0xFFFF}
> +	{
> +		{ .mgnfs_mult = 0x0000, .cpost_mult = 0x0000 },
> +		{ .mgnfs_mult = 0xFFFF, .cpost_mult = 0xFFFF },
> +		{ .mgnfs_mult = 0xFFFF, .cpost_mult = 0xFFFF },
> +		{ .mgnfs_mult = 0xFFFF, .cpost_mult = 0xFFFF },
>  	}

and with:

> -static int cdns_torrent_dp_configure(struct phy *phy,
> -				     union phy_configure_opts *opts)
> +static int tp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
>  {

...

> -static int cdns_torrent_phy_on(struct phy *phy)
> +static int tp_phy_on(struct phy *phy)

This is absolutely unreviewable.

>  };

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
