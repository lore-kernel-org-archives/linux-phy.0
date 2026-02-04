Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D5D7E9D3F5
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tASwM4mCcoovhNix5GihBkAmqmrzaGTEvU+HMuPLUzI=; b=lpJeGVW52jfULD
	UTfE3cjLU9NCEcVbymEnknlLFhP9Pjf5sIiAadfZlZbqwtqHbiD40CrgDIL2Srk3XD5Kx4t2n1gHP
	CoIg8OT5CUPxFqsYjwIwtn2UVTqkjZ+OrKsyyD0TfwEJ1E2rpj4thaEYBpIME1O+46yT12x+Iq3s9
	W82Ztpw4Uzj/Xq3s1igzTaVSo25vDMqfResSCHJRUxo15ilbVb705iWcHES0L4KHY2PPbR554z+GT
	lhjsx3PUWDm7o0X0euV4Dcu0fVG1YqLEy1TWtt63syKAVSFsrGfio29xgGCifziYC3xQd/+zBvHyj
	YbY3JKcwvchG16boBY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnef4-00000008eCV-3Ag2;
	Wed, 04 Feb 2026 15:19:22 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnef2-00000008eBY-2R9l
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=tfas
	ogbOh13N38230xubhMrZ3ndWq1FR/ZTYsvkPCVE=; b=JcjpCjHgvrmYVT5l70Bb
	sF50zCELOt4m5S7Zy6kG2fCS5q5BL83OWx4C4PkwYXmudyhWTE+pZvQ38x00TILA
	nPBRdeLEwQWqDcoLSB6JKH1OboZhMpQrC0MBtJ2WtHup5G2SArbgdyHQ3PfnDFxV
	QzNbIuxgnI0lzmDouvcLR950ZTtiIbp9PudSz43ZouKt4UGc8hXqxgfdSz5qgyUM
	66PjJrLBto3MbJh1umKbHgvc9OL50hJ4bU0H4VV14y1szYNAkK1JphscwzmlAZJr
	ePvocp2/GKkZY61J1C1OCL+D+InOKf9AOxTjxojgDT3/ONPLjfrUrVz75qO/xDnx
	1A==
Received: (qmail 2408096 invoked from network); 4 Feb 2026 16:19:16 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Feb 2026 16:19:16 +0100
X-UD-Smtp-Session: l3s3148p1@afZLFAFKApoqAAAQagvIAoH29ntsUY5F
Date: Wed, 4 Feb 2026 16:19:16 +0100
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
Subject: Re: [PATCH v8 2/7] mux: Add helper functions for getting optional
 and selected mux-state
Message-ID: <aYNjdKul53HalKdw@shikoro>
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-2-024ea405863e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203-rz-sdio-mux-v8-2-024ea405863e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_071920_898408_BC145795 
X-CRM114-Status: GOOD (  20.80  )
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

On Tue, Feb 03, 2026 at 03:01:35PM +0200, Josua Mayer wrote:
> In-tree phy-can-transceiver driver has already implemented a local
> version of devm_mux_state_get_optional.
> 
> The omap-i2c driver gets and selects an optional mux in its probe
> function without using any helper.
> 
> Add new helper functions covering both aforementioned use-cases:
> 
> - mux_control_get_optional:
>   Get a mux-control if specified in dt, return NULL otherwise.
> - devm_mux_state_get_optional:
>   Get a mux-state if specified in dt, return NULL otherwise.
> - devm_mux_state_get_selected:
>   Get and select a mux-state specified in dt, return error otherwise.
> - devm_mux_state_get_optional_selected:
>   Get and select a mux-state if specified in dt, return error or NULL.
> 
> Existing mux_get helper function is changed to take an extra argument
> indicating whether the mux is optional.
> In this case no error is printed, and NULL returned in case of ENOENT.
> 
> Calling code is adapted to handle NULL return case, and to pass optional
> argument as required.
> 
> To support automatic deselect for _selected helper, a new structure is
> created storing an exit pointer similar to clock core which is called on
> release.
> 
> To facilitate code sharing between optional/mandatory/selected helpers,
> a new internal helper function is added to handle quiet (optional) and
> verbose (mandatory) errors, as well as storing the correct callback for
> devm release: __devm_mux_state_get
> 
> Due to this structure devm_mux_state_get_*_selected can no longer print
> a useful error message when select fails. Instead callers should print
> errors where needed.
> 
> Commit e153fdea9db04 ("phy: can-transceiver: Re-instate "mux-states"
> property presence check") noted that "mux_get() always prints an error
> message in case of an error, including when the property is not present,
> confusing the user."
> 
> The first error message covers the case that a mux name is not matched
> in dt. The second error message is based on of_parse_phandle_with_args
> return value.
> 
> In optional case no error is printed and NULL is returned.
> This ensures that the new helper functions will not confuse the user
> either.
> 
> With the addition of optional helper functions it became clear that
> drivers should compile and link even if CONFIG_MULTIPLEXER was not enabled.
> Add stubs for all symbols exported by mux core.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>

I trust you guys with this one. I think the interfaces are useful,
though, so maybe like this?

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
