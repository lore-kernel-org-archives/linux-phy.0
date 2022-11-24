Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C57C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCbZme4xjZVQ2dWw5Uu2Bvktt+e4wPiDznNFBXOhQjU=; b=s/SgT1m5QNCETx
	K8ryLc8Sz2YsDe+mEy6b81m/3pg7/lcU3840IpvRGRKyG+uBKxouYSTM/bAFi45BD6PK7aG9Fe2pG
	iJm+F9Fm6Xt4D/7xflJ0SW4dGuJAj4GUgsMGbnEGmXItQF339j1iBHIxg3jpzWYFE0ArJipyIe3+Y
	p9YaGmp6JGB4YHUI5+OntWGDN6w9HIN0+Dm8ZuvWcXFmEeWMPYsi4FW2zV+kKjI8FdqnwvgWWTns0
	HaigdJ2K7Da4Kvu1SwfXKnkQhMP5YsUillxIUbBQFw+MEfk/0WhxpHubppd+yJ7LpXEWHakceltQ1
	y5pNRmy+CKPKwckChhtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyG7o-00AVm8-1W; Thu, 24 Nov 2022 17:35:00 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyG7a-00AVdA-DF; Thu, 24 Nov 2022 17:34:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6C979B82898;
	Thu, 24 Nov 2022 17:34:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F332C433C1;
	Thu, 24 Nov 2022 17:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669311281;
	bh=ZimMhVjHA71uL0p/U9neQ/CDzc18IyUZBXeajOZUTeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F6G06OHkw6Lw76Ptb8RrcCNwrJORwJ0uxyvjribBoTqmMheB4hPy0a1LCCFhLyRg0
	 NP4ZXhreHKZTWxkZ/xT2si1pC9MOQpzU5At5vRRTLQZii1ZGr20tojcpR9GhRJ7/Qy
	 GX9CehQ3oyGxNq60W8s+JdwLzIIL7hG6pPNP8prgRtxvcXn8M78Lz+3kTFNHaeh6DX
	 /yakbGdGyI0Xz0t5T+ekmfq18y7mTjksrWU1ruQFv46WoTMZvGoUpigKE7CXcZe6cd
	 g3EWvyFhNs4SbgLi4Ou0VJXfQBj04dULk2mtiZ4BbttmkF5GlIZTQWQerdZl+vUqFR
	 YMHR6F1AaVhIQ==
Date: Thu, 24 Nov 2022 23:04:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 0/8] phy: allwinner: phy-sun6i-mipi-dphy: Add the A100
 DPHY
Message-ID: <Y3+rLe4xrnR/Mmo3@matsya>
References: <20221114022113.31694-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114022113.31694-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_093446_644206_86F39DAA 
X-CRM114-Status: GOOD (  10.70  )
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

On 13-11-22, 20:21, Samuel Holland wrote:
> This series adds support for the updated DPHY found in a couple of
> recent Allwinner SoCs. The first three patches fix an omission in the
> existing binding. The remaining patches add the new hardware variant.

Applied 1 & 4-8, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
