Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6425AD65C46
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTbFdxp0o/Rp3pp2i4B3rNd6QKogwAWzFppP9IQUX5k=; b=BDc7NBpXH1VUzH
	IuT7ln6Hvsh9PPeo5TjcJr0gIic9SYdrA7vW0C6mrPRVx4z3/w6NIiAYH4ZsZV2JvPZirlqi8gGOu
	lj0KZk4GPKkX0+hWi7ceyfmfNq7IIQ+r2PZKw55B8G2Evr5qL705xCNUEnPqEDFkIfFMPbr+C21iu
	E3VkrLrkcG4RZHrZ8L0c3Fc+xbICqGy9VZqX+q0T+tL9qpAURSd5sv83Si6j5BY+Su9lcT87e+sVC
	cwcxTcqfe88HBm3skBFfule2GZI4PQQu5OfIgd4ymBtrZNCd1EU61a60AkJvPPxHIRHWY7yGFi+R9
	yCKVlOEVJAKeryzUP4Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVro1-00000006sOQ-0YF3;
	Wed, 17 Dec 2025 13:43:05 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVrnx-00000006sNw-0ZQX
	for linux-phy@lists.infradead.org;
	Wed, 17 Dec 2025 13:43:04 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5942bac322dso6223346e87.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 05:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765978979; x=1766583779; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i+2rCMNUHkZI89lP4N4BumifdRKTsaBf6MC8t3850FA=;
        b=Fufc6gI5ArL8iUNGbTPsGDm8vG9p4/T/9Sfmic9Z0NeozEE+vvT9UNEY+BprDw09D2
         jOKTBRsv9sOiJsD38vCaGcH6FUGEaaw3HpDGzIzOCIPnkkB3tnHPvA+c9zMg4rJgMYxh
         9ATUE17e2/HP7pcBpP1tkIC6Zf3umZVQ7WbcYiOv0TxpAjtqrACWBOM2AZroVLjkCZTH
         +0YxLc2JTXA/Ah4sdHM1WfBIFhgskmwlupMjhZSPLsbPPbosor20JFV2cVeZM2PUaVyn
         ePx/PHYJ5SETSObDrHI0wgq9Bn1H3wHyoOfU8PLYHOS6f6GEFs3J/FGTON5lAHBxe5T3
         iaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765978979; x=1766583779;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+2rCMNUHkZI89lP4N4BumifdRKTsaBf6MC8t3850FA=;
        b=BX/w0t48dObmvuHEjHc7zCmAam7DUFkoZVjMnN5z98bdCi4/CLp75ON/lSfdRpVzXR
         EtNwZebG5A3q749172U1XoLTpOFbLP3Fh4auhI3cS3t5XHBkMEMc/EFyUD5PycBrsm5B
         FEgXkG8MRQrpzwAcYlbIQnktSWzKGLdqF7+/+Mq80yGRtWhwvPc3g00uU/332IKRg5P1
         KORgkb+YqJr8PHpx9vW/q83x3xKfPa3Y2YnDRQZEJaQYv9ILmoF9Xat2WLdSqCykDLJJ
         th5Eqb5sS7TW5uFIhYtZ+z+ebMmuURtpH3BwkzXWm7785+kmq381M2Zy67h5vd++enbe
         XGXg==
X-Forwarded-Encrypted: i=1; AJvYcCWIAOQvn8n+/taduOI863vCzl26Bc2+j9WCoKWdaMAKgdT7CTb+E243tsJlPucSfjkN5eUFrSBxqQE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHD98FeE8Dhj94/Ip+nrusX91Ni4yMqDd9oSrSY3K2pqYkeT/+
	6nKaplbT3/8K5CI3ky6RJNNDZOe9R9yHGDva5asN0fFeHkeWaLO8vJT6NZlqeY7RjNxUetre9hE
	jVksbHinjhYecoeCCIAysg9Pe8KxH04mlCRagRVKZ+A==
X-Gm-Gg: AY/fxX4+f6lvNAY0SdFs/W2RusTFDoKnovb7TGg4cuyTUZgTvNJYcG7WBEVSNorcEea
	mxtCetr3tWFwvTk7lvHc2n+U4U5aIMizpGBJ3OXsPO1eaBQyT8QBCReuhCLkmkGURhHZ/BeLhE7
	AIE3TT4x7NiNr24LuzCzaGrpzj/zE3FltigOOy8idCcL+2ALhjUpHGbRxXVGDPoXR0NMydvyD7/
	+vbTR3hSAuR8zhWXhjPcRUMz7GmKQjMxY2iUXPpeZ/KIoBgoYinBc+0TgwyEioLlsGU+cg=
X-Google-Smtp-Source: AGHT+IFQ7RFU2XYjhNpz4zPlGBfxB8IQy25jb9NHzoC5kJ0seGo5jh0pCCbvJquopiBKgSSVm6gg0z6EMwvFTEugGus=
X-Received: by 2002:a05:6512:3a89:b0:598:f262:15c7 with SMTP id
 2adb3069b0e04-598faa4d4c4mr4998838e87.25.1765978978821; Wed, 17 Dec 2025
 05:42:58 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Dec 2025 14:42:21 +0100
X-Gm-Features: AQt7F2rn4fUAIJmNzeBvaDU3HopJ0wrtd_f0H7TRKpgHGGrU8bW-ugZfTBQ1TVc
Message-ID: <CAPDyKFr7DCRs_E4VfrY9-NY8-bStT9oAZaYhUZDg_y3KEW9DWQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_054302_741017_E45BCED2 
X-CRM114-Status: GOOD (  17.01  )
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

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
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
> Changes in v3:
> - updated omap-i2c and phy-can-transceiver to use new helpers.
> - created generic helper functions for getting managed optional mux-state.
>   (Reported-by: Rob Herring <robh@kernel.org>)
> - picked up binding ack by Rob Herring.
> - replaced use of "SDIO" with "SD/SDIO/eMMC" in binding document and
>   commit descriptions.
>   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> - Link to v2: https://lore.kernel.org/r/20251201-rz-sdio-mux-v2-0-bcb581b88dd7@solid-run.com
>
> Changes in v2:
> - dropped mux-controller node from dt binding example
>   (Reported-by: Conor Dooley <conor@kernel.org>
>    Reported-by: Krzysztof Kozlowski <krzk@kernel.org>)
> - Link to v1: https://lore.kernel.org/r/20251128-rz-sdio-mux-v1-0-1ede318d160f@solid-run.com
>
> ---
> Josua Mayer (6):
>       phy: can-transceiver: rename temporary helper function to avoid conflict
>       mux: Add helper functions for getting optional and selected mux-state
>       phy: can-transceiver: drop temporary helper getting optional mux-state
>       i2c: omap: switch to new generic helper for getting selected mux-state
>       dt-bindings: mmc: renesas,sdhi: Add mux-states property
>       mmc: host: renesas_sdhi_core: support selecting an optional mux
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml      |  6 ++
>  drivers/i2c/busses/i2c-omap.c                      | 19 ++----
>  drivers/mmc/host/Kconfig                           |  1 +
>  drivers/mmc/host/renesas_sdhi.h                    |  1 +
>  drivers/mmc/host/renesas_sdhi_core.c               | 16 +++++-
>  drivers/mux/core.c                                 | 67 +++++++++++++++++++---
>  drivers/phy/phy-can-transceiver.c                  | 10 ----
>  include/linux/mux/consumer.h                       |  4 ++
>  8 files changed, 89 insertions(+), 35 deletions(-)
> ---
> base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
> --
> Josua Mayer <josua@solid-run.com>

Looks like this needs to go together or if someone can host the common
parts via an immutable branch.

Anyway, I am expecting some discussion or update for patch2 first.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
