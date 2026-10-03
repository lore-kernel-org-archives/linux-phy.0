Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4647ACA5FEC
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 20:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bf9/wxngqsV6+EUYcop9leimqIOid7qtt5YT1rEQro=; b=5A4p/WzxOS7P0j
	BE8isAk3Dv/JTJm6NzmgoKxszf32YVkfgCS9SbMI0qP7hST3jNjB6mjod7z9eYDRwRGYdSjX1JbKq
	rEN13jj5p2yOyKLSyHUKkyUFAjCMTImMXCaE1PbXNGqTwzYlvkIW44PlNFRR7rWHAvbhocQ03jwHY
	5+mKRwWJRBTE0+NEQjim/xadHZlxE5l/CvE0BEH+HKWD7gv3E1hx57yCZMZxbzG/8mEoeqCgzNY9h
	SxPYVV0QzEO5E7lSNubKmdoZdXpUuIm31n1dYWWskGAilAH/TlfeG5m/AqCQ4l2MK0aVgDBoO5fod
	Cv269xGGwhgVyFgj3WvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g8-0000000E29M-43YP;
	Sat, 03 Oct 2026 20:49:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g8-0000000E28o-0kFX
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 20:49:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9DA0A60DAF;
	Sat,  3 Oct 2026 20:49:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202781F0089C;
	Sat,  3 Oct 2026 20:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791060595;
	bh=yaWhz0cZdP0xugXEQZDKE9TvZ7j9aOoCXViN0I6PkgY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Gh2NYfif3zktSh1k/E+/4+WFz+ddzdFicfb4mcLn5hm+jhWrdPVZ28zB6ks69/fGu
	 y/EobQjdE97AacTFQKFP4pbS+J+FDN8pyNfqFB2PlLb5C3+8RveOTwilDwhFT4hRdd
	 Y4sVEbeDYLeJ8on4cDjRsR2awQrqTit3F/drcVJRHArsXBQjXA2tk1Q6SMPttw6o+p
	 HErOAbMPmAb8MFAIKmZgBpDGoWmsqpqjk96Xbky2uf/VkOwIPRyDU/ntoWcdRkE8Wl
	 cHUuf6o51XrdH+SjBbM9sMlwkBobC1y8aoPPJJiC/lFj5wIg6/3Qc+ptrc9QXAwg5b
	 iJ5oQky5Fj4Mg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Aristo Chen <aristo.chen@canonical.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Fabio Estevam <festevam@nabladev.com>, Lucas Stach <l.stach@pengutronix.de>, 
 Adam Ford <aford173@gmail.com>, Marco Felsch <m.felsch@pengutronix.de>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260903054811.9720-1-aristo.chen@canonical.com>
References: <20260903054811.9720-1-aristo.chen@canonical.com>
Subject: Re: [PATCH 1/1] phy: freescale: fsl-samsung-hdmi: initialize
 default rate
Message-Id: <179106059279.240943.2122705521584703079.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 22:49:52 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 03 Sep 2026 05:47:58 +0000, Aristo Chen wrote:
> The HDMI PHY clock reports 74.25 MHz when cur_cfg is unset, but does
> not establish that rate in hardware. The common clock framework caches
> the reported rate when registering the clock and skips a first
> clk_set_rate(74250000) request because the rate appears unchanged.
> 
> Consequently, a display whose initial mode uses a 74.25 MHz pixel clock
> can leave the PHY with its bootloader register state and receive no
> TMDS signal. Requesting another rate first avoids the issue because the
> set_rate callback configures the PHY.
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: fsl-samsung-hdmi: initialize default rate
      commit: c01ccf91b257741e9edc374a465126bae9ae4711

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
