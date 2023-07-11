Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B6E6EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 11:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfRWmdSLLAt6XVG+HV9El2sB2Z4/uE7zt1pT5100P+M=; b=Z5HTyER8mvwCOH
	mtZOxARfbRor3gNouhPH9m4Gyrtl2X/Do3V7u0XKpH2Os3GJhrA6PVjzwnBMdNmKe9sVRiH9k6ULP
	5Bi4X64SrkkEJs5dsy1lMcw1brOhHgXHoJ+c46zrUr6voJWtcVaz07JlZsOTU8KIEovqncCj5KCG4
	0BXnWluLjkgYxrPsWsO1AHGoLRP2qRb2M9XvW6JK1kGQwvQet7yWLO3tSEXdv3+0RXL0oZpBxhc5Y
	c+aHZFkGld/8BcbKN1XSWHyY6sFe9QrDb7ors3hNTwLCPmNDSeYDw9xVgH2iB5Dyv+5hzqsSfN0bo
	QksbszQKmjUz0W3Y9m9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUx-00ElCe-36;
	Tue, 11 Jul 2023 11:25:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUv-00ElBo-22
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 11:25:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 490296148B;
	Tue, 11 Jul 2023 11:25:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A7C2C433C9;
	Tue, 11 Jul 2023 11:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074735;
	bh=P5JUmCuHjYtgHblM6krp4O3Esprol8uH6xKGMilXXJ8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JY5m9IjR8gK6cYqUtfmTgjqNt46Ws0PYVxphS2pIIUvTmH6sMr4VvCj5MKViRJ9go
	 /7q0oq8LkobGWKv7vd2ymQpkeeQ5cuVoZfznCLs4kEVKRPMFF2ShT1a6dFaz9fUKrc
	 KQ6rJDKW7kk6JwOTMdF1GpGnAf4zeDGeS5+H9qv48Pg4G/2mTGaxJDa+mgl1bpRbRH
	 5x5Venh7SWNYKflIPZbeL32DJJJKN4N0ZuPBus6idYdAuOU3Hv4cinbZBDo6Tcdrdt
	 j63I1Iv4FhSy8RXlHhiTVPfHU6lGIZkDX4FIjS3Eo/y+IkIFGDqmdetmj7kxf51b3x
	 iQgD6MLqA2R7A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Swapnil Jakhade <sjakhade@cadence.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marcin Wierzbicki <mawierzb@cisco.com>
Cc: xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com, 
 Bartosz Wawrzyniak <bwawrzyn@cisco.com>
In-Reply-To: <20230626105533.2999966-1-mawierzb@cisco.com>
References: <20230626105533.2999966-1-mawierzb@cisco.com>
Subject: Re: [PATCH v4] phy: cadence: Sierra: Add single link SGMII
 register configuration
Message-Id: <168907473193.198426.16749805293094708083.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 16:55:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_042537_710983_4E81CD87 
X-CRM114-Status: UNSURE (   5.33  )
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


On Mon, 26 Jun 2023 10:55:32 +0000, Marcin Wierzbicki wrote:
> Add single link SGMII register configuration for no SSC for
> cdns,sierra-phy-t0 compatibility string.
> The configuration is based on Sierra Programmer's Guide and
> validated in Cisco CrayAR SoC.
> 
> 

Applied, thanks!

[1/1] phy: cadence: Sierra: Add single link SGMII register configuration
      commit: 3e2744cf994493135491633e43cec8d453c71e1f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
