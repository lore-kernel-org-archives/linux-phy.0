Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A12E9D401
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZDxHl0oj6/rKBGqn7mpTMfxBoW6FOMdnPJE/NDUd9E=; b=H7y6/N4XHSoz3j
	Z+PNNpe/HE7verCCs72e4y+tdYn/g/4E+2c8ed6Qq6H/LirG0udwMc+moTLTqgbxiY+K4/84v61Wk
	lQBgoc+FpHk5prtHXOINPI4fQzHuaMprYXKP1tso6/DhOv+xr+OSsEsnjXbU2sK3mcG/dYWVMLfoG
	AD76/Jp41BaewIaoFJtsPtJT9MREEGMA2rJxgyvYfWzanOG/XCp18F986AKJGEBiitw5lqKCKTM4v
	yVVt5rA9vRKFs+XEy4V+vr+/vCNpBjKQeR0pw8VV8cfZ7/Na/sZvYauDysWii4LEtggLerNEy01MX
	RTlqeXz1l5hixoPrHI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefL-00000008eFk-22DL;
	Wed, 04 Feb 2026 15:19:39 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnefI-00000008eF6-2pRQ
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=1kjN
	zYV+DhUEOHybsWvNysvirHq9WhwXXhcWawVljJ4=; b=UtxhRZQpEveOkPj2Cp2C
	dfK9THyLx83FFhrJhcjtcva8peb3SR4ncBdcXL+MqGak8PQJzCxL6e2iFg8WZgqk
	HpVNGWbNzK1t1zrDE6sil1V/cu7mLOwVHLLouWd2a9qb4YCe2ohfIADm77lyELwM
	nbN4U5Jb4HUgwFAshA71Qirt41wlYNIqQ3Z7ICcm4/iTv2baBMC5NPkc57S9hbOn
	/oHzfRx6efQWPYgk73SiEfLc4nc+ayqeYgT/2sHmJhT/xuP6YsAns/Kn6/9aECeF
	uV7wvFGH9IJG2GBTVX39HKunrS7281jYQanuxOwlmXjaMyBdWCh07roFn2W2yxAJ
	aQ==
Received: (qmail 2408303 invoked from network); 4 Feb 2026 16:19:32 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:19:32 +0100
X-UD-Smtp-Session: l3s3148p1@OJFEFQFKCJ4qAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:19:32 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v8 3/7] mux: add help text for MULTIPLEXER config option
Message-ID: <aYNjhBJrmnjFainB@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_071937_790884_0CD1C16A 
X-CRM114-Status: UNSURE (   7.89  )
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

On Tue, Feb 03, 2026 at 03:01:36PM +0200, Josua Mayer wrote:
> Add prompt and help text for CONFIG_MULTIPLEXER to allow enabling this
> option thorugh the kernel configuration without explicit "select" driver
> dependencies.
> 
> Select it by default when COMPILE_TEST is set for better coverage.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
