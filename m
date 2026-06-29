Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B1B7C43327
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 12:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sscVDIeJHU0eOCbuQUTPRnnT5QAHR2P57Hpp2CCVWzo=; b=nFLOFYE9CXhmjd
	qLUKY5LsM2iG6zKzIb1AZKvJ8z1J0LVzJ70ueEgd1c2qow5i+J4a6+HeRAE1WnFGB8Pbe43M/T9pO
	FQttnUzUMIprUyZ6jFCHmn37keeiNi1UN0hBWYbrcm0Vpo3NRDRNPNG3smg/aP6XR9ZFRyUJFey7q
	cpoB0pNQUcKcEK9rMNEZqGpmBZ+I7P8iXnqQFQpYFaNW0uUGSFQZ5KbfPAJ5MJr4Zy3Kmh7ytPhaW
	pkHBUdsphVYa8916y99N3jXP4fe/gsRBJBRIVRVoLyY5ICy0k6shI37oiV8oUipQXNFzjBwPpVD7z
	rAWI0NV8uL0GEvA5Ftuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weB1t-0000000EXp0-3xai;
	Mon, 29 Jun 2026 12:24:01 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weB1q-0000000EXn2-3ZXd
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 12:24:01 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id EAB93C5145E;
	Mon, 29 Jun 2026 12:24:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CD8315FF96;
	Mon, 29 Jun 2026 12:23:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 49017106F0D1D;
	Mon, 29 Jun 2026 14:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782735834; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=0JWC3/HI5GLNMPJskSp8HrjRuViFmhXlpOl8T51fHMY=;
	b=ADtwEzyayQKbH7uffhbV5HjZb6jgSKm0ln+QaeWEfBtv4Avx6Pyn8AUMGtv5nwhQ78SZSn
	OVBILzWAJt3tUiqUvWTr5Q+m+gOlc6xPmtueWxm5nx8T6eH2naDh+0pTCchwDE2j73h4A1
	znJ1KT6cwoeJ/q4i+vJP+lTHG2hsEVPo1qMkrchzOERa5UVU1kYp+CT9N92OhwhLuekSPt
	lJPLpFCIxAtlpQYO1mSw3AihoJzPRIi7Sz78gjMsx6diQ+MLW3f9s+4z4ktT7bhTrKsQYF
	kb5re/z+NpY9QdxXnq5mwUF3AW0kX9qa5gF8Vuv3idNmffuiQ4BPlKva2gqsDg==
Message-ID: <1bdf0dd4-4f34-406e-ae97-f2ec5b540906@bootlin.com>
Date: Mon, 29 Jun 2026 14:23:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v5 2/2] Revert "net: phy: sfp: probe for RollBall
 I2C-to-MDIO bridge in mdio-i2c"
To: Petr Wozniak <petr.wozniak@gmail.com>, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, bjorn@mork.no, olek2@wp.pl, kabel@kernel.org
References: <cover.1782581445.git.petr.wozniak@gmail.com>
 <23e3931915c3ed2a14cec95f1490e43d30b225e8.1782581445.git.petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <23e3931915c3ed2a14cec95f1490e43d30b225e8.1782581445.git.petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_052359_094848_AC717C2D 
X-CRM114-Status: GOOD (  10.88  )
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

Hi Petr,

On 6/27/26 19:32, Petr Wozniak wrote:
> This reverts commit 8fe125892f40 ("net: phy: sfp: probe for RollBall
> I2C-to-MDIO bridge in mdio-i2c").
> 
> That commit added a RollBall bridge probe at MDIO bus creation time, in
> i2c_mii_init_rollball(), to avoid a multi-minute PHY probe retry loop on
> modules without a bridge (e.g. RTL8261BE). The probe runs in SFP_S_INIT,
> before genuine RollBall modules have finished their firmware/bridge
> initialization, so the bridge does not yet answer CMD_READ/CMD_DONE. The
> probe times out, mdio_protocol is set to MDIO_I2C_NONE, and PHY detection
> is then skipped for genuine RollBall modules that worked before the commit.
> 
> This was confirmed on hardware by Maxime Chevallier and Aleksander
> Bajkowski: their RollBall modules no longer detect a PHY, and work again
> on v7.0 (before the bridge probing was introduced). The Sashiko static
> review flagged the same path.
> 
> Deferring the probe to PHY discovery time does not fix it either: at that
> point a slow module may still be initializing, so the probe still returns
> -ENODEV. A proper fix needs per-module init timing (a longer module_t_wait
> or a per-module quirk, per SFF-8472 the host must also wait at least 300 ms
> after insertion), which requires genuine RollBall hardware to develop and
> validate. Revert to restore the previous, working behaviour in the meantime.

Sorry this didn't work out :(

> 
> The RTL8261BE retry-loop latency that the reverted commit addressed is
> handled in our downstream tree, so reverting upstream is safe on our side.
> 
> Fixes: 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c")
> Reported-by: Aleksander Bajkowski <olek2@wp.pl>
> Suggested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> Link: https://lore.kernel.org/netdev/20260624084814.20972-1-petr.wozniak@gmail.com/
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>

I confirm this restores rollball PHY detection on my side.

Thanks,

Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
