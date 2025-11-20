Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F080FCF8549
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/C5HBqulzKbG8b+SxAK3ftqOpuUZkEb1GKIdOhm9lA=; b=wkCdNeS1OetFNT
	srU/OAuR0EwhgL16CZw1YH8Ws4KtmMcN4GvkKi5mkJk771EJtjZKZsd9R28fGYj1DgLmDJobcEW2a
	ByG3LA8hfXZh8C/9LuUIEhsW48Zxc1T6hln7HLRnXpO76Wz9QrIgROpOdhqIfkdZNUb+0U8UfV10y
	4JTypNjCJ4+5Cu4g+hypR1YIjYXFbg1SdY/NZE6V+dRANdFvCmM20q7xbS3tPdp1FSgYnm2hdUnFV
	MRvd4ffPLovzqWyeK3FNLMxZgO7AeTvj1UgKEVAhKyS1PdiR5Q7NrX1ZSxu8Z6cowFz001F/niKN1
	x2p5Pzf20SjrdGnvL2Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C4-0000000744O-2jot;
	Thu, 20 Nov 2025 17:11:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bv-0000000740v-3FPH
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 398E0601E3;
	Thu, 20 Nov 2025 17:11:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55C10C4CEF1;
	Thu, 20 Nov 2025 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658690;
	bh=4gDXXfR4OBn+Cslup+GRLwS8qXLrh4q0g5uO3UkJ8II=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tmXb6Be8FhtMCgdNITbjBlcazXKHIevTC4ZaOulWLhsuqDAdWNYoYxnIQW+x+5yMo
	 o783cthk2L3cLPXEfMAtSaUg1pP9w3P9Bw/De1mJ4QMO6lDTGtJJT69kCJE99s/G6a
	 pykoKQFGSC79jLqRA5l9DEFDvxpfZxR0usVVNW1XCqjIO74o24ofboUKynRP1d1k5K
	 z6eB4xWNXxQRE1/z9iPWTQYxMTSiaH9g3J47AdUVJ1OKEZIKv5IbPLscx3FxNFQARF
	 PYZMSBdAYr435h4Be/TipdUmUPW4KQNW1F8GyToGo6gWOfsfRFfKAoyXiNaRR44Qo8
	 31OckAcxn6hUA==
From: Vinod Koul <vkoul@kernel.org>
To: yoshihiro.shimoda.uh@renesas.com, kishon@kernel.org, 
 geert+renesas@glider.be, magnus.damm@gmail.com, p.zabel@pengutronix.de, 
 Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v2 0/2] phy: renesas: rcar-gen3-usb2: Add suspend to
 RAM support
Message-Id: <176365868797.207696.14151835181332093165.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 19 Nov 2025 14:04:16 +0200, Claudiu wrote:
> Series adds suspend to RAM support for the Renesas R-Car GEN3 USB2 PHY
> driver. Along with it, a preparatory patch was added (patch 1/2).
> 
> Series is built on top of patches 1/7, 2/7 at [1]
> 
> Thank you,
> Claudiu
> 
> [...]

Applied, thanks!

[1/2] phy: renesas: rcar-gen3-usb2: Move phy_data->init_bus check
      commit: 79d9db7f7a0c94b2b505666513879ac470c7e12f
[2/2] phy: renesas: rcar-gen3-usb2: Add suspend/resume support
      commit: 942a7a6bf4c6a8661324539f686a34c9448610bd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
