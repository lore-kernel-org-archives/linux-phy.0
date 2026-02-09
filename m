Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E82E7E0BB
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 09:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3gS4F0WdLXfeN3aTMph4grVJMMMo4pR5yBBh0jXEQE=; b=z+kBClCfv9G6uV
	BrsGxc4XgTQRLKl+isIDbGGPq6wvBJRUXHikvHXhS2bVzX4N94N/1kkN9AOt8ZEFjLleqxfKksRTS
	1gybopYRZ6086kH3QVvP46Ul2tAztJfzNM4+EvyhPKq7oVjOgnDMDg/jUMSbbSlgpWz9bk9RceI+L
	mQ1AsZWKmVr62U6oa0A7HFzVawusKTNbMxLSjXKLxl9ud4zVL3RLXHOWzRe+OmE5WFsB/xFh+SSgz
	Jq7kPp/LmSm56uhhUw3GhCcDoXCNVsisfvlOPkgUWpLdK7KJTZUXzXS/McV2sOV4q5yHE6eN5SFv3
	I3PVUR5apHKKE1PQhNIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpO1e-0000000FCKu-2Sna;
	Mon, 09 Feb 2026 09:57:50 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpO1b-0000000FCI2-43zp
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 09:57:49 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso3172507e87.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 01:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770631065; cv=none;
        d=google.com; s=arc-20240605;
        b=I9vMreTBIiVjme+k8SN0b6VCmS5nzJkMLl3ZdWcR2TuRsJT1sGxFBRZGQjnjJePQQa
         AbYCHKCqi7QNvSHKVk8x8pcElHHWdrrTCurOchTJ5BJXLQUGF9G9gOegvvHb69bsnU2w
         mLhorxeTUFeOUDzVUgQ4qeQjoWzxED/Xa8Sr7kk9ICyiXpA9iFKrq+3Qrms/ihEfxc6o
         Eb4fwApacXvXxoED+2T5Bu5rpFPBj3HSmCP3vhmhRVNhbQg353Xs2pJ8BLBcISdW+QPh
         gEH1TENLTFZzAYeSpd8NBewZexcXQYteo54T7orjdIW8JGjnQydnj2oPSXPzeJfYyO29
         GeOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        fh=A5KSJa1sad/FZxTZRK1ip8dgb5cVAnbEvgI7MAqYahY=;
        b=WnS0pBQrhZFnPDIkMQSqPjdIY50CiQgO06nrbvogFnB4zvUcvDL9DPg1bUc1e7YvGn
         tnMxWENmxF207zE43SWq1/amov9gn1DvTnbCIDa1yOPoPhUUyUks0U7M0H6nUe6JllEp
         rriqPAgeUfkFHe4RftlCZSO9I3yphM4pShJXVc98T2T+mACQYVPihyS2CXHOLdxLzxKq
         mUORhFEd0WUvmGB7U1ufjwS7gUxFMUeccGENm1NLZEkCDs5g/Y6WOhNFSTtTPiuolgJZ
         pgq9cCNOHDjGdrpdFtxkLI8jDncSXi7pBm2YA8yrQt5feuCezyz0S6a/iTqU7bn/xvn8
         /fag==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770631065; x=1771235865; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        b=WC4ZP0U3FS36kXMYVk3JcY6h3uyYWPcBtn9+iX6Swt73zVNO9NzZ/OKLKMcrb/NzGG
         iqInQqhvVc8Z0od+mi9TS0AE7ckj7iICQ4kIBcgE6C8ayAzBaZGME6sWNQHN+5/PK2ZY
         vYXEoDh2lZkThI+AM3ATQMOpJmsevS2z1c8jYhMlnLoP2cZ2NPh630PHeNk+JK6krYeQ
         63ZebWnv2xSXW4TkIoUj/uCY52MYLayJiaPytTWVLASl7XXDDdMnqjkCVBYrjGFTQUj0
         4DMMpVvRdiMm4u7tee1N6tmE2ij4XFltc4YODYncRIDwY3o3okodhSubBcGWfYxTezJt
         j9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770631065; x=1771235865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzG/baFh/xjTaP0Ii0cvwWmrEVxPL+eR3yu7Xbk6kuo=;
        b=dFw6PXI9zZgFgSSm3OEVsr89E7+5GyS39xqlRP9U1GKsAm1PGN5AFbcRLaXyJwBgnO
         inI4u8419LKkTAPPLiLz4x97jXYUJkpYUO3B2rDplO3oI9RSVPpQrz/OsSdBo8fIN1WM
         dpxf4KiCvrJHmmIeeyLG0g9pI62oeNWv2IzrXUVV7EWFY12vUO+3RxHPrWaJS+NAA8cn
         STyP3O4AvTEE+gFPpZMK/ysMqp+NcxyVyEmgNwRLgYrjyvrujRdtyaRpwvs1m68Q56WN
         mCOXFz1fZBn+2RJ6WRVfxR780C2Pt97K1pL3mDEX2lTiscoQkKcfF4dfVHr4JVqbPLfa
         P/pw==
X-Forwarded-Encrypted: i=1; AJvYcCWrot9tkPJP+13ZwriFd/XzjEiklLq648d/CYFVOFIV5YOpCw0TyUytGv1ccaqrARMApLW6AvzcLFM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzr06Vt5D4sZ1kz4YqccznvYAaBOi28PFDsXnEmlhHaQuiTONtG
	+tWDBMcFhV1bQlbGzKa3bGT7/hx+dlXs4xFyhWqEJTZncTNGsYGWF0nC2pgjTHylG03kmCl+GKW
	r3e6WOMp+ql2qe0I3GuhH1fQCI9XUJsZbVdNdal2y+g==
X-Gm-Gg: AZuq6aIQw7HMqZMLRFQ9OzhXM9UJfvQzyx64Lod2TC0B2Bi7Qe7LJgroa4FARCNKeV0
	JtPAFjLSTQDxudPauYaRiPcC4Hrt/p9fonBthu8f3oif6POs0getjfZ7+thrTIe/ibqJMYYiQFN
	vre7eWfzJLIN9NgPx5OtUdRuVDMpgIl7VUo/xzUUIFbdT/Y/UQ/bHa4X/z/jgtHR3YK8vudu7el
	R2ery3nfs0Vt4qHyGe8CkKT86NGjiuMP7yLqvX2/xgVWBrFiZnPwBiIVHyLUK+hT9vhUiFs
X-Received: by 2002:a05:6512:230e:b0:59e:25a7:e46e with SMTP id
 2adb3069b0e04-59e4517351bmr3165761e87.36.1770631065180; Mon, 09 Feb 2026
 01:57:45 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
In-Reply-To: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 10:57:09 +0100
X-Gm-Features: AZwV_QjtuvXehDumL81rfo3XecEhBGMIVZdeTW9qGb9n_Rk2fTCxSh0YYaQSYSY
Message-ID: <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
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
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_015748_041833_32CAC0E6 
X-CRM114-Status: GOOD (  14.14  )
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

On Sun, 8 Feb 2026 at 16:39, Josua Mayer <josua@solid-run.com> wrote:
>
> Some Renesas SoC based boards mux SD and eMMC on a single sdio
> controller, exposing user control by dip switch and software control by
> gpio.
>
> Purpose is to simplify development and provisioning by selecting boot
> media at power-on, and again before starting linux.
>
> Add binding and driver support for linking a (gpio) mux to renesas sdio
> controller.
>
> Introduce generic helper functions for getting managed and selected
> mux-state objects, and switch i2c-omap and phy-can-transceiver drivers.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v9:
> - compile-tested on x86 with MULTIPLEXER=m/y/unset.
> - fixed Kconfig changes so that CONFIG_MULTIPLEXER can be selected.
>   through menuconfig / .config as intended.
> - updated trailers
> - document null return value for mux_control_get_optional.
> - fix build error for CONFIG_MULTIPLEXER=m, found with x86_64
>   allmodconfig: replaced ifdef ... with if IS_ENABLED(...).
>   (Reported-by: Mark Brown <broonie@kernel.org>)
> - Link to v8: https://lore.kernel.org/r/20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com

[...]

I have already applied for v8 and it's going to be in my pull-request
for v7.0 in a few hours.

Please send incremental fixes on top instead of a new version of the
series, then I can pick them as fixes for v7.0.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
