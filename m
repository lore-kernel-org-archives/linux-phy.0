Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267E2D4A5EE
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 03:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uj2rFJtjnHx0JujObqCLu+8NJ4ko8YBLArxl3xmGXys=; b=BXhEHs2c9T+wJ9
	+99b1KA05Zc/ArFlptIqgFfIc59oRMWIKRiXglBvw04lwx8oQy8Oo3qluZr+PS67Cw+Xzhw32Olk/
	7TPS3LTQsJ2+6OwCxIgHluGV+s/MVSfdIWNnnDBbCKucxqNO3KR16gLoXC+ccKOToKdB/oHjK91SH
	EHvaFqbVWW908KYnwx8WpUaITGvgx9fJ2xpQOXrLlA6sQI4BqNBceepYfTLHI1wekb9zgkTtf+W4/
	h3BJoBdN/jWp4WZZgVro/tW9tys/9zHdUi8UDAxyFpUxriA9oo010Ccx0K9f669787Ua8mayJcyAt
	vlB5Z+IbGiIB25OCFPrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgaKG-0000000DWAo-2mGx;
	Fri, 16 Jan 2026 03:16:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgaKE-0000000DWAB-2fzg;
	Fri, 16 Jan 2026 03:16:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B04E560167;
	Fri, 16 Jan 2026 03:16:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BFD6C19421;
	Fri, 16 Jan 2026 03:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768533397;
	bh=B2+FCAQTC6FVsVubt6CQsBCJNComdynPbHPZmy46ChI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=OadD1y5pzThcRXgoOGbwyy0e3rC1wHFHn/FBWBj07osgVMonggwCQ8i9/uRKUtQrV
	 B6GWHgrlHd6WyvQ1VATKmGsDNNcrm7Ox0DUuCGCQHzqgL/s6qgceLdNAo++4UGLS3t
	 5sbDj1BVZau4SPy8PTe1tUFZNYjZ0xh2OLzBOUK8ImjRU5st7F3peTEWJMl+HckT91
	 Rb1gi7AUhdEAAM+/swupIlSqiaJXQZAuoKFOcn+NZbtiC2HMKbzIDc68P+jjLdamul
	 1KUDgLwQXNwcgUBDpGyu4lPCPiRPyij+kXEVxSMB3gs8hqJ0I3TpVM+HoaU3Vasck3
	 2AdDsM7LITAdg==
Date: Thu, 15 Jan 2026 19:16:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, =?UTF-8?B?QmrDuHJu?= Mork
 <bjorn@mork.no>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
 <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Neil
 Armstrong <neil.armstrong@linaro.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Eric Woudstra
 <ericwouds@gmail.com>, Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>, Lee
 Jones <lee@kernel.org>, Patrice Chotard <patrice.chotard@foss.st.com>
Subject: Re: [PATCH v3 net-next 00/10] PHY polarity inversion via generic
 device tree properties
Message-ID: <20260115191635.33897ee8@kernel.org>
In-Reply-To: <aWeXvFcGNK5T6As9@vaman>
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
	<aWeXvFcGNK5T6As9@vaman>
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

On Wed, 14 Jan 2026 18:48:52 +0530 Vinod Koul wrote:
> Subject: Re: [PATCH v3 net-next 00/10] PHY polarity inversion via generic device tree properties

You can submit the PR in reply to the series, but please rewrite the
subject to a typical PR format. Patchwork does not register this reply
as a submission.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
