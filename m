Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B67D6B07A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 16:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APxDVcC/mxRGw1388cup7qmEAOmFSt7n88NOM/W29kw=; b=NymNw7yXEfLJG1
	6cQeywegK+AkVvDE1szzha8Y+g2bpe/gYfhQgRZ9V4z94X4zj+Ew/ZiMrss5WKBQbPEGJvYx20D7p
	JvJBIL7OrzezJEt+gxdwkuHGPhB1KJW49hGfiHFIPqrqJZaRaNkhimplO069ukMdP+DmHwXMgydL5
	t8UEpUouWeOvblmZ3wfMEeOKrf8FJy/hwvRYIttU6xwEOiNRIPXjtJ2ahlOn5O/5y3cEJnLiNTvBi
	Cj6l2/KBI7e3SeIBTdVb2vz1z8CYewJgBAWiWYdJPikygsdHPOx0oouK0AGceSIOECk7rnu7pPUl+
	5Z1X43/gxe+eaW1MeYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUgP-00000000KTK-1QDU;
	Thu, 29 Jan 2026 16:15:49 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlUgM-00000000KSc-0lS5
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 16:15:47 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso1202665e87.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 08:15:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769703344; cv=none;
        d=google.com; s=arc-20240605;
        b=g8JbK4k29hPqmj4DS/j4ACM6V+aGYXy8c93/olXWeUC9sspveP83gZiuf5prNbSbj4
         2OEqzO0X7jbNrxWxZgeZltUJDwL5eRRGkzHaFcsO2HPcFC5Mv+IZhFDPsfejrUnYfief
         JBXQCpn9vrQT/dt6P1CWfWc1MHsD4INOt5SmuvphQpQy4OoCPGJaH7TDjeOmFjicpAYB
         8BnWu0VocrehN9QLIVUl2kjpgsxwoOWvHD4BGRFgbl2qJ6Zv7G9wNX6Lc9f1C7ogyOYo
         +F73wpQ8ztYNB6iJtOTaOcfPRjPpMlSK1TXd4e55siWBL1til3wu181CyMsSaNoo8xkN
         cqtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        fh=eEQsQPyOHWRY/HUxfv86+8x8GztgqK8kNvN211yWtFc=;
        b=A3SZSQxS/0YtfNgelaeIAdeYMAxgKPtkMsb/asbHkEU30DvDrYI8Hj7ZqTJ0ayXPFQ
         XHOSn3kDX1qvODd4J3uB/GBokcV3Z9jB3SBxyGSX/7vAkEOVCq/N3Su3lT359S9Kx8V9
         NXYSDnlh6J0M7apiS5tm/LEia4uSwOOvshD/a1Vdccg0zMTuKnKEz3QSkCfmf7GFUVKI
         UkW8OwekV98xf8t4Rer8vjkFFA6hFSNqeQICRDWkM3g8390NoesgPWtDizagH0EgwcAB
         N5QNO0GZMuHjrRvXCQfjOhpZWOqSYe8hmxjG3DukqTvKJk34eybfS+NdPu9LEq1wutf0
         O/NA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769703344; x=1770308144; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        b=hvK+9GtDPI1zdFLQo1Nw/9cbC+OGeykaEjsvBaIKWV0BbRtOJl78Bw+1SpfshrgdzC
         uwDqdnSrpO7zXepmdWbus6Aynj8FmIZVRUOSCKH8YeWKGg6+TVJfqf3ETRt0qoDRIWzo
         rOLon1jnn04GwAlNtierajxd5o+rAp1VJN/dPprM8tAt8dz7giBRdmNAn9iuSanX2LRw
         Z530/Sbe42eXZoDUw0J/2lwwPy5PFgjbbTTdXTdAyFN47glBfTmC4hooqoqEjof2Slk9
         PLkZ8M5sUBs2Z51Ilez8FkfAN/Vpw6hHobtxp9tW/c0Boj9sQeHP+iBBfRF/BIQIEFtv
         0BJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769703344; x=1770308144;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mcZyL8rlWiol7qHJKX4MkvpKMN+RPE+vXis8g5P5uMA=;
        b=UM8+T30VEHc0CmR97HKX3PO7B7X2J7GvHCS04CmQSDtL+HbqQHO17X/8bi89CIWN+E
         ZRcFF/lUOiXmUBje7+s+bfs5WCLax9VW0rTov83q7xPkx6PSUbvL1bbyntedsgmxPzFy
         fG6REbAaOcRU+ncPk+KE6j5k4wKWLjRpQRBWXYcoCjzX3cDtaRP0PwV7LHDTMTqzDGAz
         Zfd8q4ndqfnxGxE41VvEoHcAKOfPrsj4iUgE2TqLbp8AVJi5Bfi4eCJtY2SjP5oMBDy2
         sw5V4RN6HcJdFVziOgnjsBg/cCDEcBPO3k/vZnJsPHwtxgDoHfAzA7n9AD2FFvX41qOu
         WVhQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0oyxYwELgR2nAU443ws3ifCOs0HlCTq6vGrtoU1wFP+MJY8LqyjlIVvpstMEy4Op7aicEXpRgNaY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDnmY6ccUbdHRVr3pNl20kvKIwIkPl5YiyrV7CoAkuglagtJgH
	OP6Sde6M4YNMiRvuarOuXnUlu0sv4ZFyr6W4HYL5GOgaj2jdLaf1qiHK01nxixrUWxSm3FrvD2O
	pTCRttNQV3oNQAWhIK7rArS4UdnQiYF8kxkQmdcO6Cw==
X-Gm-Gg: AZuq6aLURTn96KE9Ahb3xKXwCl0SHsBH1u1mEHwmOCQs5MJFJSWlLvSca6XpmLp9lWR
	RbOCf6FKwWHI3NGZWA39iOTSV7LjvWloITNvUMJ8+iJumyrlKKa5plPxVFrcUPrpe4lh+29QuPL
	ygogrlL5d43Q4t412cwXQj7wqIkU+2RzV/AQ/5eT0BP3GpSdHQkUMcwvI69FmaiPsRJT4B0esIG
	h2AbymnKAkUFU9hVehaYVBti3SW2wnEokJBXIg144u+1StNzeIuYwKDSKsWFGxSsZf1wZqP
X-Received: by 2002:a05:6512:1394:b0:59e:15a:d704 with SMTP id
 2adb3069b0e04-59e04015669mr4368983e87.13.1769703343301; Thu, 29 Jan 2026
 08:15:43 -0800 (PST)
MIME-Version: 1.0
References: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
In-Reply-To: <20260128-rz-sdio-mux-v7-0-92ebb6da0df8@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 29 Jan 2026 17:15:06 +0100
X-Gm-Features: AZwV_Qg3mhJxcxsaaNM16DuqcQOXYrDFWwz2xcBsELVK6E8j4cCnjP0a7TG6aus
Message-ID: <CAPDyKFp9StNf1eLaSETxC72=7sXYBmGFmHnv0CXysUGcYma5VA@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] mmc: host: renesas_sdhi_core: support configuring
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
X-CRM114-CacheID: sfid-20260129_081546_274176_E1F8C5CD 
X-CRM114-Status: GOOD (  23.84  )
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

On Wed, 28 Jan 2026 at 15:46, Josua Mayer <josua@solid-run.com> wrote:
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

This series needs to go together in some way. If you like, I can
funnel it via my mmc tree, unless someone (Wolfram for the i2c part?)
has objections to this of course.

Kind regards
Uffe

> ---
> Changes in v7:
> - picked up reviewed-tags
> - fix Kconfig change to add the missing prompt for CONFIG_MULTIPLEXER,
>   and enable it by default when COMPILE_TEST is set.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - fix another kernel build robot warning: undocumented C struct member
> - Link to v6: https://lore.kernel.org/r/20260121-rz-sdio-mux-v6-0-38aa39527928@solid-run.com
>
> Changes in v6:
> - replaced /* with /** for devm_mux_state_state function description.
> - collected review tags.
> - fixed checkpatch warnings (space-before-tab, void-return).
>   (Reported-by: Geert Uytterhoeven)
> - fixed use-after-free in mux core mux_get function.
>   (Reported-by: Geert Uytterhoeven)
> - fix mux helper error path uninitialised return code variable.
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v5: https://lore.kernel.org/r/20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com
>
> Changes in v5:
> - implemented automatic mux deselect for devm_*_selected.
>   (Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>)
> - because of semantic changes I dropped reviewed and acks from omap-i2c
>   patch (Andreas Kemnade / Wolfram Sang).
> - fix invalid return value in void function for mux helper stubs
>   (Reported-by: kernel test robot <lkp@intel.com>)
> - Link to v4: https://lore.kernel.org/r/20251229-rz-sdio-mux-v4-0-a023e55758fe@solid-run.com
>
> Changes in v4:
> - added MULTIPLEXER Kconfig help text.
> - removed "select MULTIPLEXER" from renesas sdhi Kconfig, as it is
>   not required for all devices using this driver.
> - added stubs for all symbols exported by mux core.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - refactored mux core logic to silence ENOENT errors only on optional
>   code paths, keeping error printing unchanged otherwise.
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - picked up various reviewed- and acked-by tags
> - Link to v3: https://lore.kernel.org/r/20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com
>
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
> Josua Mayer (7):
>       phy: can-transceiver: rename temporary helper function to avoid conflict
>       mux: Add helper functions for getting optional and selected mux-state
>       mux: add help text for MULTIPLEXER config option
>       phy: can-transceiver: drop temporary helper getting optional mux-state
>       i2c: omap: switch to new generic helper for getting selected mux-state
>       dt-bindings: mmc: renesas,sdhi: Add mux-states property
>       mmc: host: renesas_sdhi_core: support selecting an optional mux
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml      |   6 +
>  drivers/i2c/busses/i2c-omap.c                      |  24 +--
>  drivers/mmc/host/renesas_sdhi_core.c               |   6 +
>  drivers/mux/Kconfig                                |   8 +-
>  drivers/mux/core.c                                 | 178 +++++++++++++++++----
>  drivers/phy/phy-can-transceiver.c                  |  10 --
>  include/linux/mux/consumer.h                       | 108 ++++++++++++-
>  7 files changed, 277 insertions(+), 63 deletions(-)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20251128-rz-sdio-mux-acc5137f1618
>
> Best regards,
> --
> Josua Mayer <josua@solid-run.com>
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
