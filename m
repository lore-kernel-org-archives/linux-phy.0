Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E838FCB619
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 15:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrkrD50iHpE0UPFrAkA0HpxxRk1yjXu+jZWOoB6p+9s=; b=3SS6UwFfmT4OvZ
	g6ZO2lewqRAuD/nbu1nZ9raLzo13ykslyTBp4DEGASmPI4jEa646nd/2fJzrF1V7EPFvXiUcV18wm
	AObSnO82hYJgKVKz2GjPGQCBVZVKZ9OtrNll+G7kGPWTXa4clXQF8gt4xGLXRWUb7BRzsAdWb0uCE
	hfA8OgDvvzRHGxXeYHaXJA4/U8zJYwBt+t+20fQzKEK34i6wlA2oB/V1xFcEf8cDR0vFjoJ5aocxz
	IzQ7qT2dACcDZ5qm0zW1lE0jCe/N01DuINkWlJCVjTKW24ihL5GQq47HTVi9m59aRmTyTc1KlY+eJ
	1m6Lssp17VStriS69mWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXBS-000000042pv-14RZ;
	Fri, 06 Mar 2026 15:33:46 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyXBP-000000042pY-06Mj
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 15:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=KBd6
	sAoIvc/ReQGblbOAHX8AXDUJz9fRBaxG9r07VOs=; b=Hbxka07xb59E95jigF6r
	YNwjNCepu5JnygW4H7r0FYklcn7864U1OYPO8kHihdpMNZpNpFH/D4MMU8jdIUmK
	WTwECChK7cUTnffvbwPhP6t4NZVoNC9ZiCWtP99aniFMO93VFlSbWWtC0ppzDDe6
	UjfpVbScXGeJ96x/jPbv+byHe/naA91rOtIbyOeIjAGaMfoEaaA1pxS0Sws78Uef
	xrv67lTd/HW7HtSeBQhIOabOmS+2522zKIpukLY8x1FELzkp692Ddu6p5OAqJl7h
	NWqLqsBTWSfwpv9y5oTlaOirx44bT9cZ97PkE4pF4fDouilIGgQxLSoFgR1eaqHG
	Gg==
Received: (qmail 1689921 invoked from network); 6 Mar 2026 16:33:39 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Mar 2026 16:33:39 +0100
X-UD-Smtp-Session: l3s3148p1@mqj8xlxMOIQgAwDPXzF+ANZpdrMKUeLI
Date: Fri, 6 Mar 2026 16:33:39 +0100
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
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Jon Nettleton <jon@solid-run.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v11 9/9] mmc: host: renesas_sdhi_core: support selecting
 an optional mux
Message-ID: <aarz0wSQG527Eofx@shikoro>
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
 <20260226-rz-sdio-mux-v11-9-c2a350f9bbd3@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-rz-sdio-mux-v11-9-c2a350f9bbd3@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_073343_452493_0BCCA0A2 
X-CRM114-Status: GOOD (  11.01  )
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

On Thu, Feb 26, 2026 at 03:21:17PM +0200, Josua Mayer wrote:
> Some hardware designs route data or control signals through a mux to
> support multiple devices on a single sdhi controller.
> 
> In particular SolidRun RZ/G2L/G2LC/V2L System on Module use a mux for
> switching between soldered eMMC and an optional microSD on a carrier
> board, e.g. for development or provisioning.
> 
> SD/SDIO/eMMC are not well suited for runtime switching between different
> cards, however boot-time selection is possible and useful - in
> particular considering dt overlays.
> 
> Add support for an optional SD/SDIO/eMMC mux defined in dt, and select
> it during probe.
> 
> Similar functionality already exists in other places, e.g. i2c-omap.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
