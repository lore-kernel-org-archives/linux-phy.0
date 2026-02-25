Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89FA4FD374D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iq071HRnx0YrsSbmX0LRh2GdQGlqiT0RtG5vkBwoU5E=; b=WLVPtq0WVAMVwa
	sOVKTkM7z54iFCvrHaDRgltzpMTqGdRPLktLlNHchY2CF0yhS8z4o58T5wT/daJsKykQKThMIPeSk
	8Si8S6ZOgtvPSS1ayB1TVW2+z2LXFsnaXq+r8iYUfTMm1lTdiYjHlIf+y/715ECpqW1AYRwxVtQIe
	VYYENXIy9iSFULhUWCcIJcaP0rICnWuc9/TjHQj7c3swl7wdEzEKNkbA5yjv26/0VLOfCa7SgyJZb
	AVhzX/u7HRXLFVt0dfpNawa1+/iVBHh83VbZgb4o1GezxTEhI69rtCCKYVZrqlxuLoQJdlAPbMWpk
	cnyFRegTFg02Z+6A9FeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDxV-00000003zuG-0dCH;
	Wed, 25 Feb 2026 12:25:41 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvDxS-00000003ztZ-2osG
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 12:25:39 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so6263885e87.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 04:25:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772022336; cv=none;
        d=google.com; s=arc-20240605;
        b=gHP+4tZBWksShOBvwNU59soLGG0bINhxa0NfxctdU6j1dOK24K99uuEIw+C9tzIbqG
         yAv0y6Jkk00+5LE/8Vw4RDTpNbzNCUdv0e/gGrAw2mbstinPYNAakBkEZqlHx2IUGPK8
         3s8+rJjUWmWx6intAccNHu0aQY3wDe26NpsFwKzbQVB7s21sMaI/wY1nk5x0Zb6hKQIO
         nY2QxOaQm6bSvXXHvo5oM/Lh86uBsi283eQHetZvZ65UQKJqT6QC/letJu8/iASyDi6F
         gFL9kPSrv7RxHb7lkTkU6aOviFNWqkKyBIfwksQL1cmUd+kPhHA6AmC4nqzJBKY5+t1d
         tzig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ySl6ydztfTvafF7H4MeeeCO8Ou666oUNAgwfiGo+Y6c=;
        fh=h4GwS5xJaduVeBllfw/lRExs6yf4XgQZ34xbLT1lKGg=;
        b=SiKQPxQCqelulh2t5Bg+uzR6iwnEwW+8J/4N/6ctNwqG2VFVOiCz8QPMA6bRCTnC9g
         5IQ2fjxRL85AVpHZZrpMqu0oAJ573Z706h0BpaYU8Iw/nCoWDNyvu2dtsImzksWtXYvV
         Ix6sgRxLl+FIOKZLMwEZVV3mnB8gWbrdLm7Ep7d0/1aFzejqqfWjWKhPlWpXeajQwrl0
         lzUYgUqAFLI1OmSK9HxE9/Q88Y7pGSF5RwfkkK+4TkIY4hARucvRtywkixslbiz9AMn7
         /ciwAQATmriiXe2ckHeDGnZduqrHJKGR5P+YLUSlVCZNOLRB2m77XXL487DNc1BiWEGJ
         IPaQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772022336; x=1772627136; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ySl6ydztfTvafF7H4MeeeCO8Ou666oUNAgwfiGo+Y6c=;
        b=vnDIq0twGgqCNKj453YHLIfeghadB4bii+In7gZQ0WGRVHlBhaDx75AUJz273Pa8Bx
         +gC4e81WnHa6FxohrTEGRuRyr3n0qIsc6wYGrKezGu6PVQmPmLMxsOfK/buNQkDwmgSB
         Ekx+RhKI0TIdhcUSU83mQC53JTiiJqU5A14teRUbhb/63XIeXIK+judtJnQYHik5flVN
         geghO1Z1NYhgCz7iXgOYsaLRQAWzrkvpXrjoR5r+beg70N+kjosaTiUhTZ3mtuUt46zk
         1DeBZuKY1zDhsdYbW2w/gnp8aTIvVYOUfASL6BmVmpB/iBn52zTOmtpVV+aXgth6IGAj
         d4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772022336; x=1772627136;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySl6ydztfTvafF7H4MeeeCO8Ou666oUNAgwfiGo+Y6c=;
        b=pw2hCRUS7Dexq1aRrOC6flaxTKJnWDwl99dO4KXDXcg9ie6pTFJUPp3R/AIA0TkLNW
         cmgDoD4oeB0gXo37qMfKdoeFU3ZKfstiNRiN3aloODYrtPALWAGrZhWZuxCEQozP0p9M
         7UZu7bVCQwIePtNqKsTEjijCxyjxeASV6Z5DknlMLJHq8Yp0hIOxpWcuZCcH0N0Njyjr
         oTC3P3bVqbBwZQpNZoFjdP5IW/eLFwI9nO+K4Uj5et1dBTbAbmYwrxmTLf6x9XwLEEWd
         KqgMlsGyjvwqS+hQ2b1gCUaLvO2hDqmkCPOnVDHGXJalx2EWflifORBhDRNMj0bKMg8b
         9QUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbb1F/fA8I3od2LakDy7xdvT5ohvkpYJ6A4alzh8hQmRzWdtnFC4htpBvGmSyBYzMa1yLWTxdwFRc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEWV98kpzTl9AltgYc8RyXvY+/OKAUPPpGG+1rg6O94JUmj1CE
	RZ4iRhQzWiBAb3GrEHoINyJ3JmFw1AnhQlOilUYBtXqPssb7Hl0ZrwzXgzQSUka3qoheewo4hlY
	FVV422acr810wbWVYXs9Wm5xPrpO07QytMeUtwSHiLA==
X-Gm-Gg: ATEYQzy3XDLFKDXMqB7SkXX0XcRIJzytorZuAKNoIlk0SF7E3pnovAm2O+Plpl4wuvj
	N8z0Ox4EFqamEGpr2zgyz6eNicue6cTSel7FVbtI2N8xfUSsY/zrS/KrJA8hPXA6eK47RSaP46g
	vanyYHIkxalpOm5yoDHCTSbp06YZkeCXpIs8f0UVvqAzMLXZYv0e3PpyjTlZojrcM5tnXGAD+1T
	I2rtbJLkiN0y3mWCBXMG+t0Q8I2BkSsoSaEgvc6VzJ4w96y0rxUo8GawtzT/cXeOhR0kzqEo/AI
	jZwuu4n8
X-Received: by 2002:a05:6512:32c7:b0:59f:8e98:5dc4 with SMTP id
 2adb3069b0e04-5a0ed8a5ef7mr5479022e87.23.1772022335501; Wed, 25 Feb 2026
 04:25:35 -0800 (PST)
MIME-Version: 1.0
References: <20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com> <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
In-Reply-To: <20260225-rz-sdio-mux-v10-8-1ee44f2ea112@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 25 Feb 2026 13:24:59 +0100
X-Gm-Features: AaiRm51lt-nfdrgge9ulVu4LPr2JQVPo_YLU5CXuzn9PVqh2A9E2AaS4fZriRp8
Message-ID: <CAPDyKFoDZr33tQXofsZzPrJbZM=3VhpeeOk1GqvRA1UK=LO5Ww@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] mux: add prompt and help text to
 CONFIG_MULTIPLEXER making it visible
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Vladimir Oltean <olteanv@gmail.com>, Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_042538_766447_8B09F04D 
X-CRM114-Status: GOOD (  27.46  )
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

On Wed, 25 Feb 2026 at 12:35, Josua Mayer <josua@solid-run.com> wrote:
>
> The multiplexer subsystem was initially designed only for use by drivers
> that require muxes, and did in particular not consider optional muxes or
> to compile as a module.
>
> Over time several drivers have added a "select MULTIPLEXER" dependency,
> some of which require a mux and some consider it optional. v7.0-rc1
> shows 15 such occurrences in Kconfig files, in a variety of subsystems.
>
> Further some drivers such as gpio-mux are useful on their own (e.g.
> through device-tree idle-state property), but can not currently be
> selected through menuconfig unless another driver selecting MULTIPLEXER
> symbol was enabled first.
>
> The natural step forward to allow enabling mux core and drivers would be
> adding prompt and help text to the existing symbol.
>
> This violates the general kbuild advice to avoid selecting visible
> symbols.
>
> Alternatively addition of a wrapper symbol MUX_CORE was considered,
> which in turn would "select MULTIPLEXER". This however creates new
> issues and confusion as MULTIPLEXER and MUX_CORE need to share the same
> state, i.e. MUX_CORE in menuconfig must not be set to m while
> MULTIPLEXER was selected builtin. Further confusion occurs with Kconfig
> "depends on" relationships that could reference either MUX_CORE or
> MULTIPLEXER.
>
> It is common across the tree for subsystem symbols to be both visible
> and selected, e.g. I2C & SPI. In the same spirit multiplexer needs to
> ignore this particular kbuild rule.
>
> Add prompt and help text to the existing MULTIPLEXER symbol, making it
> visible in (menu)config without breaking existing "select MULTIPLEXER"
> occurrences in the tree.
>
> Select it by default when COMPILE_TEST is set for better coverage.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  drivers/mux/Kconfig | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> index c68132e38138..4f7c6bb86fc6 100644
> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -4,7 +4,14 @@
>  #
>
>  config MULTIPLEXER
> -       tristate
> +       tristate "Generic Multiplexer Support"
> +       default m if COMPILE_TEST

Allowing the core being a module makes things/code a bit unnecessarily
complicated, I think.

Similar to other subsystems (like regulators/clk/etc), the core is a
bool and the menu below it for its provider drivers depends on it to
be configurable, allowing them to be tristate.

> +       help
> +         This framework is designed to abstract multiplexer handling for
> +         devices via various GPIO-, MMIO/Regmap or specific multiplexer
> +         controller chips.
> +
> +         If unsure, say no.
>

continuing from the above comment, this would instead be:

if MULTIPLEXER

menu "Multiplexer drivers"


>  menu "Multiplexer drivers"
>         depends on MULTIPLEXER
>
> --
> 2.43.0
>

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
