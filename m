Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF0C7D73E80
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 18:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATWvtBx1ABhcCgoI0a12YEjhrj/Yn7Fp/rOwL9hNq6E=; b=BuvAq8iKVtMt6t
	Q1XcPkRbM7CYDsQlKJe4BioI1ezvgqrTSBfBG6aJTSX3qsq7D84aXDcrVg50XIzAb+kM5eJTvRrz2
	dMpJk17jGGCLykRJ2wcdDr9Mu2yBpfBkH4dJolrdR7Auu5Ckqq9fcW7805/GL8lA56ciq5wVPGSUT
	DYu2Wa6unYirBSLVSU4iiGCyQ06L0PoCRRD2FjccxwCOJKqvziP29WGQYktmeCXF0HuuUR8JElQyg
	hnUHk4HM86RLnTCb+ZFTifVWiTmSAyT2yL63wKLJH2WHOIYQW6dSsRzuiFdvENEgJF/a5GjjriGQa
	FPJZTI/TaQYpty0w8iTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlWXr-00000000UpE-1XAf;
	Thu, 29 Jan 2026 18:15:07 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlWXn-00000000Uo9-3qnw
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 18:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=kMwJ
	sRUTY1+8DlXqwrzudKGi67r8tcF8NN0fyMeA4OI=; b=mZrJQ+RDSMYjGwdVp2wP
	GzAkcvLuH78nOpPUuIN36eh/2nTSF5H9WVKg1Gmg98Jwk3KE3AUZoOaY9JBtHaGd
	Frd6gTcLDqOz5v1S0wcpf/bx9u4Xm+FZlru7a6OhVRjpeHbtFEry2iHyQJXKqXY2
	/B3zB2GINvd41izUXf2jojEJp70bEoY5c5ypI/7SNyTIfZTavHXwVYRki6HuVT7F
	aUZPwL1Kits1/RJUOAAJQGhN+NZ5MOjw+t/8xMuEaODY+opLGlWzIdKv2HTd98Tq
	3Gkv3tFwhSZKxdKWUNedaH5aHSJow2GI0M5IvYzVsb6SZgB2pxySgwEnEWqefkVf
	/A==
Received: (qmail 4159334 invoked from network); 29 Jan 2026 19:14:56 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Jan 2026 19:14:56 +0100
X-UD-Smtp-Session: l3s3148p1@5gh11YpJZEVtKXEx
Date: Thu, 29 Jan 2026 19:14:55 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Josua Mayer <josua@solid-run.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Vignesh R <vigneshr@ti.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
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
Subject: Re: [PATCH v7 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
Message-ID: <aXujn-jpKLcBeFPE@shikoro>
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
 <CAPDyKFp9StNf1eLaSETxC72=7sXYBmGFmHnv0CXysUGcYma5VA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFp9StNf1eLaSETxC72=7sXYBmGFmHnv0CXysUGcYma5VA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_101504_818419_6EAFD5BB 
X-CRM114-Status: GOOD (  14.47  )
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

On Thu, Jan 29, 2026 at 05:15:06PM +0100, Ulf Hansson wrote:
> On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
> >
> > Some Renesas SoC based boards mux SD and eMMC on a single sdio
> > controller, exposing user control by dip switch and software control by
> > gpio.
> >
> > Purpose is to simplify development and provisioning by selecting boot
> > media at power-on, and again before starting linux.
> >
> > Add binding and driver support for linking a (gpio) mux to renesas sdio
> > controller.
> >
> > Introduce generic helper functions for getting managed and selected
> > mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
> >
> > Signed-off-by: Josua Mayer <josua@solid-run.com>
> 
> This series needs to go together in some way. If you like, I can
> funnel it via my mmc tree, unless someone (Wolfram for the i2c part?)
> has objections to this of course.

No objections, I even acked the I2C patch in a previous series. Since
the series changed because of some of my suggestions, I want to have
another look at it. But yes, your tree sounds very reasonable.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
