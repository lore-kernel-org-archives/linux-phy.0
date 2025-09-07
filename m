Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5078CCA1017
	for <linux-phy@archiver.kernel.org>; Sun,  7 Sep 2025 13:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTe/UUHxbvFGIUodwCw1FvjQDxkz7WbbiFKgnDzXX4Q=; b=c2gdQMvavvql0W
	Vp+xgRrdlJpTaAJ29lhxWwfW+a3/vwZCZghez/0SNotnm8dLtGy82g9u1qZRP4Xk2AoUxo2e9LkJt
	h3H3j1cYZQUBb/n6/VKt6NIfiMuhQU6go7UADfVTCGLISHm/g2jkfbpEDUxmGeN4MCvOmTL9+0E2Y
	+odxawabKxM89P5pbkNEWVYuUAk5IxWRSmB94Wv4m1tOI56mmMHCQLXc6XUDQNLc3PLy9dKeLydTv
	kIceHhF2varuxCmePl7yeVX0r+U+5igJXHHfq2bdh8ZVVX4EDPzgVbzFeBHab2FODPdxW8DI0tSVQ
	KEzPktxuxMy/G+ogrJSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvFHx-0000000BF5p-0Fxs;
	Sun, 07 Sep 2025 13:18:37 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvFF6-0000000BECf-1WGt
	for linux-phy@lists.infradead.org;
	Sun, 07 Sep 2025 13:15:41 +0000
Date: Sun, 7 Sep 2025 09:15:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1757250938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S/KUq6pSTXq+6IeioXoPeuwVExsq2hrUKmGGJELtuVI=;
	b=mFfJk3jPrq2PSVa5pryxIo9DqIP/tWcI51vlOz3BNmXJL/QW5ixV3gvPtQMTqLlhfFWoAj
	VyJs++CEOPsdCfp+Eb3m7RmwPM9ep8GBaKxBeBskm0o6AEvLj6/xNXMvXmJECEKnr12NzL
	8pd/TRi5r2iNaHU9W74lLCd9byKepNk0KGM1lRqaHRsJ2VuutCPFTYczDxhOJYBN/Otwhc
	HPb8MEZXCVHbh1lmNiRCvjkhMC0OvoSThpecM++4MbfBhJJcBfsGBcP0mKMbq7LojgXwfk
	Wq2OUStSnlP7T3L7CaEGPi4CLQgmIvIGgePoxVs1LRMbiKx9dmQCKnbjg7cINA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Anne Rosenzweig <alyssa@rosenzweig.io>
To: Sven Peter <sven@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
	Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
	Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH v2 18/22] phy: apple: Add Apple Type-C PHY
Message-ID: <aL2Fdd2Ls26pksJN@fedora>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-18-52c348623ef6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250906-atcphy-6-17-v2-18-52c348623ef6@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_061540_533472_97E7706D 
X-CRM114-Status: UNSURE (   5.20  )
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

In functions like atcphy_dp_configure_lane, I'm wondering if we want to
pull out individual registers like `void __iomem *tx_shm_txa_ldoclk =
tx_shm + LN_AUSPMA_TX_SHM_TXA_LDOCLK`, likewise for
MAIN_REG0/1/IMP_REG0/etc, just to make the actual pokes below a lot less
noisy.

Incidentally, the txa_ldoclk_bypass handling is another place where the
cond_set32 helper would shine.

---

Also, do we know what _OV means?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
