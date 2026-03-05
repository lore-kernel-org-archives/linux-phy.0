Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC3AF3D31C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 16:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hniKwLzUqP7ooaLS7PqoZ2Js4SYUUlQYf/9eCLt1i5U=; b=aFnixsAlu+RQVx
	q1Xc3Cr7o7pcwYzkl4piYlc+aY+OAki9BVe00U40NIuLu4LWaSf72KkM1iaGZZPzfTR7KMGCFuZyU
	mNg1tdPvAwCQSn8OlDSvEiWgp8vxrp8G7dnfJMDgwJ0MxIYaxR0bMK7bvnkKu52Nhj0yGofmf5cOt
	ouhAx8crtHtmySrI0pkuoovYLq+bYXBq6rKTEnZOL7HrrzsaUtRHxm6hgnq07vWigB+sPkfNTaB6a
	5LOiv2JP1L2wQ+AVcNFycb7ZiZnQFNt17dzRJoWIXQgC44EQIg0Rmvs/jCdrx+TXCMbGGwv3wbyub
	i5VXmAaXuV3vWoRaRWWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyBQb-00000002CUI-2yIW;
	Thu, 05 Mar 2026 16:19:57 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyBQY-00000002CTw-45iO
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 16:19:56 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5a12cc20e71so935744e87.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 08:19:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772727592; cv=none;
        d=google.com; s=arc-20240605;
        b=RnEPiuJ+/kdzEJYT9E3kTKGlttdRjDm2BmnT0duiEj85k+4i+Ooqi2+/atf3N7fBp1
         QdBK6Npo3bhUOFL0VUSW4682gstoGor/XYMHVqPnwlDfcrVtS4tv4vWggqw80zTrlLp4
         Vgq2nz1gJU+c0YJmACcgtJef7ViAOksRaU7uXd6hvhdetkEdZJ+n+WhiJqLkTFpHiYeY
         8RcH4YR7ZlrOtdGOBCJXQV6hNZwrL01xyuSFuqtUcZ4ulzfKz1qwON23d5CPVsCTEuOn
         Ra69mdU/Hq+cRhPnwXlCITcsME1Z9+vTHRlKmeWq9TY3pnOKr8YWj0tEg2s7osE6eHdo
         igcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ClrW0+oPx++TxWQN/hIjl8TEzU24ahyY2M6DFRgObAo=;
        fh=g7P/8iItnvJDNmEVV9fYU13tYfo6A8NvI06aIE9SHXY=;
        b=RDZbRnBFP/56WWBBNyLmt7HBrpHY0JVXcrI0Bk1SMCubccAbQwv2jX73KaWiO7Hld+
         ISGh83O3JcyUDqibBeMlx6A8J8cuOtwStpQ1peFOm8RS3YWUHsTo4s1nKyBUNpb6zUD8
         QeziRWd1/RmKYl2P69NeRbXCGMCOFlZjInwQipnNoQ3plXhGJvXDqiRr/Yam/Vk9gXWK
         N/VY/75QNVS4k4FIoIlVRaLRTkJJ9aCxdY6R4BUJWfHYMz1Y8fCyNTL7zCtDPiv2pnxE
         X9SKxKrEcKOcMaNxRTc3nMEtLr6o0Uel6Hyvy5fVk3gVMWQ+RRc0xea3g1omFvG0f66P
         fupg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772727592; x=1773332392; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ClrW0+oPx++TxWQN/hIjl8TEzU24ahyY2M6DFRgObAo=;
        b=FIoTBYwh5eN9y4Nrt8DZJMiJqSsDECm7gckkVfGM+3WvoX60cuy4Z+Om7RgQRTKjhx
         0GhV7HKFmicnIrLktjZeemUdCK+q3xPb1NEDFLhB8pHoP3KTBt8dgfUAQQpV7ZMhBPpm
         vOb0x429ixOXFDNsAQ2lSMWqRq2L6yYybT2M7GhNy4hDQD7X4657AWpbgxp5gpjM7k1g
         PrMV0V1P52AWs1x9FVTOxVZsfwIPiDajmo7hwuOeooWW/BSPl4wQBI/gQmv2hX9ZNnq6
         XD9jGZFIOBd0t/I9WqnJMfW5lhxRi5AZ36hUI9WAbtJU0JkQU9mlMjcB4z+/hgMFQGz4
         WRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772727592; x=1773332392;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClrW0+oPx++TxWQN/hIjl8TEzU24ahyY2M6DFRgObAo=;
        b=WSmhigLgoTZ7TJqZV2gMlhJGMTCr/9Ca48mHnGKLiNZA4bMUU/GeFuBmSOQn4EhJFs
         UGsKgo4YhekwgOYVo+Jzd3v/I8P/SYAnNKa5T/DCTAoRI7T5YA/BfxPnoepCrK9rKsDB
         SLX1v6ATz9lb+OZTEWL2KhuHrdljHTDvFdL1rnwEAvJM0wPSRMlXW3IRhARRboNR26vw
         coHonv1JPP3cofKptDrGeUlejvcWcFlIDeLax8z72vMx/+F4yu6EjPM7FsixTPDUP/1T
         xkYTV8QOR82KS+NxhOa33XjY2gBe3vnCGiOLZDHlBLX2wjZpyQ6l686H5PNPuioQLFgJ
         FhPA==
X-Forwarded-Encrypted: i=1; AJvYcCW9ItAz0QNWnMFUDt+zXQ30DOQsod0LcfZUMW3I3rO4cpK3LDARWORCmGdNyekD0f1jA0RzSXiAhOQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwJx1IndQbQiHNIEgkroUNUbl2SkOVrGRAjxARbbBOFhj8Pzux
	ON3qXUqZ91BvUPURHcW0GTmd7KOnAT0UaiPsetIiIy2nUAfaqd32sMBuDB2+Ux4r8iAtRlL8nfH
	FowFQ/7/Y65dOlmxR81+rgsOIbhXGFhn8HdsO1UCejQ==
X-Gm-Gg: ATEYQzzHg2jGi2rXO7pQNBLiGijDR9rjV1ZaW8oW0i/Nb1JN/CY5mkJ2ouszEfVqI4+
	bGv84CdV4UMKdUa4cyy7791gWoJoR8VNXnV/2kFAgDXixIT9EoJWfYQuiUdw8WIkSheU5tU0Iut
	8B8lxjF6DsWOfS2BD5zxQ9i43aSoZWFutJ/tiM88Fanba+42ThfpLLZV5A8rAYrJqvHuEffqlZe
	V+UcEsgJIUBfcy3xQvZWrSkkTG+fctvxXZCqlqYzNl5lRNXKMgQsOz1iBX4Td3+YEFFSJzwNvAx
	/KrO5A7w
X-Received: by 2002:a05:6512:1288:b0:5a0:fe69:af2c with SMTP id
 2adb3069b0e04-5a12c339474mr1173761e87.33.1772727592278; Thu, 05 Mar 2026
 08:19:52 -0800 (PST)
MIME-Version: 1.0
References: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
In-Reply-To: <20260226-rz-sdio-mux-v11-0-c2a350f9bbd3@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Mar 2026 17:19:16 +0100
X-Gm-Features: AaiRm52HLUuRfxFPVPVExv-76gWZPV1pu-J_tp-8KI24bnstuTqUB205NGBVxZk
Message-ID: <CAPDyKFr5NZKEKpV2+GXGnzH9pyyj_TLmMCc3rac8h248srX_dw@mail.gmail.com>
Subject: Re: [PATCH v11 0/9] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Josua Mayer <josua@solid-run.com>, Peter Rosin <peda@axentia.se>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
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
X-CRM114-CacheID: sfid-20260305_081955_066267_F4CAF5A6 
X-CRM114-Status: GOOD (  18.41  )
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

On Thu, 26 Feb 2026 at 14:21, Josua Mayer <josua@solid-run.com> wrote:
>
> This series has evolved over time from adding generic mux support for
> renesas sdhi driver, to partial rewrite of the mux framework.
>
> Several drivers have started implementing driver-local managed and
> unmanaged helper functions for getting and selecting a mux-state object.
>
> mmc maintainers have requested that new code shall intreoduce and use
> generic helper functions that can be shared by all drivers, avoiding
> code duplication.
>
> This series is structured in 5 parts, each of which is self-sufficient
> depending only on the previous patches. This shall allow the first N
> patches to be applied even if the last ones need further discussion.
>
> 1. Rename driver-local helper functions to avoid name collision with
>    global version to be introduced later.
>
> 2. Implement generic device-managed helper functions in mux core.
>
> 3. Convert driver local code from similar patterns to use the newly
>    added global helpers.
>
> 4. Change mux-core Kconfig so that it can be enabled through menuconfig,
>    without an explicit "select" dependency from other drivers.
>
> 5. add dt bindings and driver support for mux in renesas sdhi driver.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
> Changes in v11:
> - changed approach to Kconfig making MULTIPLEXER a bool, and adding a
>   user-visible wrapper for menuconfig.
>   (Reported-by: Ulf Hansson <ulf.hansson@linaro.org>)
> - dropped the "default m if COMPILE_TEST".
>   (Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>)
> - improved kerneldoc line wrapping.
> - removed unnecessary changes to original devm_mux_control-get.
> - fix "reference preceded by free" in mux_state_get function
> - Link to v10: https://lore.kernel.org/r/20260225-rz-sdio-mux-v10-0-1ee44f2ea112@solid-run.com
>

[...]

To me, this looks ready for a new try. Unless I hear some objections,
I intend to apply this as material for v7.1 via my mmc tree on Monday.

The complete series will be available on an immutable branch, for
other subsystem maintainers to pull in if that turns out to be needed.
I let you know of more details on Monday.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
