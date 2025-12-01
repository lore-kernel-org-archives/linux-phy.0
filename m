Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1014D116F1
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 08:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoGF8eBgAP0WyK+njLYJ9EtkzHJAmXOSK67zBf0QdNU=; b=Z+KLNDLZmPxPD2
	L5QsocT4ZbaIMDQXS8nSUGjEwx3AqIfat2n+WMUQlOdtuSORtyYwqT1wrkHSaIcLeuFqTPUpgH4aI
	7AlEna8NyeOk284HAMg+1/n5RQJC0v4VambEmHUI9w2m5gyx/24roLeoDAsvSczBhNL2UatOEgQj4
	A0/LWu0IIuC03es80M/gUTx+vQcybiZnHljDGYDPE8wUIVOFb0Xy3sIcuFeAZlH79TD2XuPgWw0/7
	Wf3OkzFzQaSETnHzmYvAx6yXfZia9eT8eczhFOTUPgcwiPF24DA/izayInBcl3avIIYJpGNTWUNAw
	bdJkROv4QTyvinpO3+qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzQ6-000000037i5-1J8H;
	Mon, 01 Dec 2025 08:38:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzQ3-000000037hF-2vjM;
	Mon, 01 Dec 2025 08:38:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9179B40ABE;
	Mon,  1 Dec 2025 08:38:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCB9BC4CEF1;
	Mon,  1 Dec 2025 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764578282;
	bh=vgbgKs+CIgCE3wPA/E4Yb6WCwekK3Mvgjmi/ncx+CRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LRQuh49SNTjWYzSLBlfkC54mDUI09XOgjyRgmn11odtLc5TTQfWnuLNy4bSxNg/cK
	 0bU7fI2M136nd9qFVZm9/tEF33O1LDYZU4W4JKOOEySm3cMFu3uMKjEHBehsStNkhd
	 CKd5EDbtaLDZSvJQySIksO2D+vKI8m3oBwfYya7rusTqzkNXjuZIcXAs7vWQOs0O53
	 5KXYoGAvYGFO6W79QoXI1wlM3HqGhrzblroWDYv9ttbovUu9ArXDhL4EnLG6MqOKsO
	 +e7VyF6yeuj2Gg3P+Zdz7dpbr0qRI1hgx9aNMqrjJ63pH6D+I9mddqVq74kS4Y4tDo
	 DWgcPkMh2kFeQ==
Date: Mon, 1 Dec 2025 14:07:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Daniel Golle <daniel@makrotopia.org>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eric Woudstra <ericwouds@gmail.com>,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Subject: Re: [PATCH net-next 5/9] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
Message-ID: <aS1T5i3pCHsNVql6@vaman>
References: <20251122193341.332324-1-vladimir.oltean@nxp.com>
 <20251122193341.332324-6-vladimir.oltean@nxp.com>
 <20251124200121.5b82f09e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251124200121.5b82f09e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_003803_775967_7D0C7635 
X-CRM114-Status: GOOD (  17.75  )
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

On 24-11-25, 20:01, Jakub Kicinski wrote:
> On Sat, 22 Nov 2025 21:33:37 +0200 Vladimir Oltean wrote:
> > Add helpers in the generic PHY folder which can be used using 'select
> > GENERIC_PHY_COMMON_PROPS' from Kconfig, without otherwise needing to
> > enable GENERIC_PHY.
> > 
> > These helpers need to deal with the slight messiness of the fact that
> > the polarity properties are arrays per protocol, and with the fact that
> > there is no default value mandated by the standard properties, all
> > default values depend on driver and protocol (PHY_POL_NORMAL may be a
> > good default for SGMII, whereas PHY_POL_AUTO may be a good default for
> > PCIe).
> > 
> > Push the supported mask of polarities to these helpers, to simplify
> > drivers such that they don't need to validate what's in the device tree
> > (or other firmware description).
> > 
> > The proposed maintainership model is joint custody between netdev and
> > linux-phy, because of the fact that these properties can be applied to
> > Ethernet PCS blocks just as well as Generic PHY devices. I've added as
> > maintainers those from "ETHERNET PHY LIBRARY", "NETWORKING DRIVERS" and
> > "GENERIC PHY FRAMEWORK".
> 
> I dunno.. ain't no such thing as "joint custody" maintainership.
> We have to pick one tree. Given the set of Ms here, I suspect 
> the best course of action may be to bubble this up to its own tree.
> Ask Konstantin for a tree in k.org, then you can "co-post" the patches
> for review + PR link in the cover letter (e.g. how Tony from Intel
> submits their patches). This way not networking and PHY can pull
> the shared changes with stable commit IDs.

How much is the volume of the changes that we are talking about, we can
always ack and pull into each other trees..?

BR
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
