Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB70E606A32C
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 16:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1AfZGdHi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DbVSWC7V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pYWAMo/erLteqwDZm/tTCQ7WXwv0ri478kSG0XfR774=; b=1AfZGdHi0JdbyiINU3AE6+Uxnf
	Cghn9/BqHD8kib3vPvLT+a55Raroz+ujTBAd7DS/dRbfksTDLFf3xt8QvfE6P6UVLsRHrAu/7p6st
	3H36VkW12/SoO3URTC/jV1TPOasOqlp6PWlP55gNaWO5DGIKrY3wQf2/wn0Iegu274SGOpBq4uuoj
	6vJT4ixuI8bLZyY8zosSOOCZ0SBBT6h0hWkX6wsQY6QQvDIy9ay5KDbwngi0immZQkaMl4vYRu8Kf
	FVFUkpU5B/Dway0+iKV8071luK4QTbvN8bDfJNqzTUw25SGt34W3VZmcqKjSi3TSJl/7fbj3DkTHH
	XwwKV6OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnpP-0000000HTyL-1CDP;
	Sat, 21 Nov 2026 16:20:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUnpH-0000000HTvq-3A5a;
	Sat, 21 Nov 2026 16:20:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D20DD6123B;
	Sat, 21 Nov 2026 16:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C4B1F000C0;
	Sat, 21 Nov 2026 16:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795278030;
	bh=3l4SFbuOj5dk76CH8WLlUS1oJhbjHRne3f5AmVhjTLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DbVSWC7VKgufodPLITMDB7xUvKLbF3dKmi6jxzzF+KquLsBbu4vAbHWbQ7f8PneDK
	 jv/sGtfqJQuSj6RpB+9bE29OzEsVcs9J/Z6E8U09vqSUEnqQQ+jkYsVAVylh2B1Wqs
	 7N5eLpK+raKU+qUHpz6HFNTiq6vu/wNjakwBVo2o9eZcqGK6FKz4/iLVjzWB80JE+D
	 QO1hlzAROBWstC/lHeUbnDEzah8khFCkx8rHrz1UDGu1TQme47gbkTCdiW/zGEs0+n
	 DLmYoKjUZQANTtI+BIoMl1KOCj4U4OxbSOQ/YjU0WV8dKCVP91f9aLx1nr9DVUrqTD
	 6G5U4BQHmJ3qw==
Date: Sat, 21 Nov 2026 17:20:27 +0100
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
Subject: Re: [PATCH 3/4] dt-bindings: phy: cadence-torrent: add phy-mode
 constants
Message-ID: <20261121-wine-nautilus-of-courage-94af4f@quoll>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-3-da2db7125cd7@bootlin.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261120-phy-cadence-torrent-ng-v1-3-da2db7125cd7@bootlin.com>
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

On Fri, Nov 20, 2026 at 01:55:51PM +0100, Benjamin Robin wrote:
> Add the `CDNS_TORRENT_MODE_*` constants to
> include/dt-bindings/phy/phy-cadence.h such as SATA-LP and 2500BASE-X.

But why? Why do we need more of these properties?

> 
> These constants are used by the new Cadence Torrent PHY driver and
> are referenced by the `cdns,phy-mode` property of the Cadence Torrent
> PHY binding to select the PHY mode.

That's obvious, explain why you are duplicating phy type instead.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
