Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8780E81BDF
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 16:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqBP6KQnfmoBSVL5kj+ORpqSLkLHQj/BCiap/VPyFL4=; b=LUvpke5Fw5ymyt
	m+CK218Pqm0iQAZIx6pNlY6I2cF1eWbLcDcI6erJtcJsZULTsSTDR8a24TAivSsiZTNGeizdJrH4j
	SM/blsY2C1b5zc0jWVZwdy00hPIwIGW/uMuR615tTNlAvNFwPgiOWFrML1R6frDZF+dK61GF+bF+s
	r+ELttRVd34KTKh1qNVAhwBGniiAl/NEJUyw7Mg1/INVlVfIIwPL/gZaxAwRizm8+y6mdzJGI0JDg
	j4N/6qqoQQtdBReCk3tEshKRrfrEx1Ng0lqGUGeaWgCTq2gZSEm63BRf2lLmvxGErjXwY0cp76hDM
	7q1CwCjKctJ4gtUKoRyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpURi-0000000Ficn-2ns0;
	Mon, 09 Feb 2026 16:49:10 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpURf-0000000FicN-3v0y
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 16:49:09 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-59de77e2e30so4945437e87.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 08:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770655746; cv=none;
        d=google.com; s=arc-20240605;
        b=fXQ74JxUnMlk11Vir83s+AHAissdDYoTx4csErfFSTZGaMj0vP/FAl83C7sa6L0n2/
         6GqXnjA0ydBIZGKeqtx3FhYeKZG1kOCPWDZwlGjDL4jT3rNlApQBLgZ749ZrhMeA3Vki
         1dRw4TUu9XLY8vbLVx+yiBlpdaxYPGKw8DcmXnh/7OgWyhpIzmRfLqBXg6+Es1U2By7v
         ydfY8q8g1H9gDWhRkqiROWIr/p0KSeBSVhv/TsoARO0emqLw8OmJzxGxo06dBamuYyec
         twPvoYc5U1/+vRVi/7y1VYj/OwXppobELHEP1UDvGkiwJ9uW36F2cDc3rz1//AerJ/be
         APoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e972ACE1KBb81KyEkGcx+64PEjeQZgX4SBpIgZiZ/gI=;
        fh=zcHlCq0/RWGorY0sris+qqt6yG0fbKvhIKZFCu3/1Xw=;
        b=RSLYjdwzLvc/Yki4y4/6K41Q6T8S0H+0WEsy0kt/pcNFTF/Z2HEvZsM5LFu6t3dNMJ
         RypA50qztzB8lKjS5iXRdatKyxq07EnciSU7/rVCwPuhi2P5ekinNtuMG0YEh6dopBbM
         5D1QhJQBIRcMbw5JvsNlPQGdPh1JizCX5jEM3npUSXCOrO23oeyaVKqWiQrMPCjHNpyt
         p3AWETWWJoe1GDDxFVYHAs3nABhc0rCmplwJAg7qICUFQxl1ZWwiE1epslA3P7bevBvf
         lWJfzK6cUAGSKsT+438NSyshHOEbQOpIFqEstLOsHy6NWBNaFDrflY4azxilCB8rWehz
         UJEg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770655746; x=1771260546; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e972ACE1KBb81KyEkGcx+64PEjeQZgX4SBpIgZiZ/gI=;
        b=Q+/g2ZCeM2oWdDktEsv2ZtWi8gzytz0PLELgc9qR3CahGOoonqb37LE51pdbrSCbdK
         gn/X3UjDN2FRKueuRYQqvLr30tQwWpijq/8cu/N5dmBwmDZkg+ysgyNvMyCkVQY8+zgk
         JaHUZrpq0fKI6PMc9cKrb5P21NolAB1GOkKzqO5d4MzSkhiZUMLgV2oqlNSyEKAQBiFf
         ZcBO2/loM6gnUUvm06oAEq2DSINgpiZiJ6KOR2Jl+8VKNr/fnvqSSSOevOIb62m0Nc0E
         ZI2BswmePVhiBCFoW2SXcOud95G4Sl9RdBkukxIwD10IEDm790E7x5evNyVS/0uyDyeb
         WWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770655746; x=1771260546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e972ACE1KBb81KyEkGcx+64PEjeQZgX4SBpIgZiZ/gI=;
        b=Il55p7EYhetzMZn8xp5MmL2Yq3t4K9NuJP6hpq4f9cKcwk0lUy0TZ8lBNqDjrTuMuL
         CHPc20YNw+vc+b4cNVq3AtcW6fhtGr02k7RgkZaNl3Oqsh67ukJSpcKmJ3NlPkfCvRsG
         6tgDhl4fytKo1bvCtGzM1PIh3V6IS1khjR1ExQ0MD4LLuPK5N073TCDVVPza05u3WA9l
         +Wd6wd8/pOJuQsE76EJmDj26kygn2P4WLSG9zZ7FcLb+jT0ajy3Lp235mmz7nwO/6qeB
         VG/jWrW1Zens+tyW4TkPwBA9R4U1J0JuNe5Rn/7imNE6NYtbLlMV8KRrLDRR0EFbrhDO
         /4iQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEBMkRI24EQoBxWEUeulx4tE2IxPBpO0ROhnudj9EOi5wl4GQVV0O/g975BniYudKst14GywWk1PU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1ouHv7xHJ03q+arUmQZFbygJhJQA2/JTOw1VEr9hA2h2G5X8o
	NffITDtAnQGXcIOEp66SqCCIv5/Uudc7RXogZHBpP2tHFPPNAVYPPVEJ2VVlOZVmGRJ+BcxAZwq
	Y/a5ZQpN8N4aQ8mtKX+tjhy5NLLespGuYiQpB9Ms+Qg==
X-Gm-Gg: AZuq6aLYBz+Jq82gQb9w4stb3YlGw9Fl7kxmAZdemhoO69foemckCU+qvBHi121Ezlc
	zQJsdOx8KTFNncuSebNfhryo0AmwTEuuUV3g72ulXCMRoBh84cnRarWwF0xX/dPc1OWAEG+qWwA
	a5keYS/Oe4IfJ3Yhr47tunqICU7HzqFoM+L7gPd8fRO5n/46hvpZnRGWMT8FmRMM72uFREJknYH
	efWAncmxRgCpJbwiRkvPOYhoIhgEbbH53k1CALp32Kp+6pvyZR89Eli118hbE1kY4rqRKsJP0tf
	NOwpcnR8b/cYcFOBBgKhpLHU4uIY
X-Received: by 2002:a05:6512:3c86:b0:59d:e589:c977 with SMTP id
 2adb3069b0e04-59e4515c13cmr3221840e87.26.1770655745469; Mon, 09 Feb 2026
 08:49:05 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
 <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se> <CAPDyKFo2Zm2LKP6=m=fJEbo1a2ZpBn10EGaucFS7zGfGJV_6tg@mail.gmail.com>
 <793644d5-4d4f-8ee5-7fcc-369536801683@axentia.se>
In-Reply-To: <793644d5-4d4f-8ee5-7fcc-369536801683@axentia.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 17:48:29 +0100
X-Gm-Features: AZwV_QiQvQ7mrYQqbOHRiTV98ZgKaltKf6NrojsLO3GMYCFwqcEgvdtufeaSCsk
Message-ID: <CAPDyKFqCveBs-_VcWCm8OCegbpwnW3=0iGa2e5KUNmSy3TMA+A@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Peter Rosin <peda@axentia.se>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
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
X-CRM114-CacheID: sfid-20260209_084908_040185_114A1DEF 
X-CRM114-Status: GOOD (  24.59  )
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

On Mon, 9 Feb 2026 at 14:50, Peter Rosin <peda@axentia.se> wrote:
>
> Hi!
>
> 2026-02-09 at 14:39, Ulf Hansson wrote:
> > On Mon, 9 Feb 2026 at 14:16, Peter Rosin <peda@axentia.se> wrote:
> >>
> >> 2026-02-09 at 10:57, Ulf Hansson wrote:
> >>> I have already applied for v8 and it's going to be in my pull-request
> >>> for v7.0 in a few hours.
> >>>
> >>> Please send incremental fixes on top instead of a new version of the
> >>> series, then I can pick them as fixes for v7.0.
> >>
> >> Hi!
> >>
> >> Sorry for being late with this, but as the mux maintainer I'm not
> >> fond of
> >>
> >> 028ec00381f5 ("mux: add help text for MULTIPLEXER config option"
> >>
> >> and would not like to see it in rc1. Can you prevent that some way?
> >
> > Sorry, but my pull-request and branch was already prepared.
> >
> > Please send an incremental patch on top then I can pick it up as a fix
> > for 7.0-rc1. Unless you want to manage this yourself via your tree.
>
> That unfortunate. The patch series has not yet made it to the next
> tree since it has not seen any updates the last few days. What testing
> has these patches received?

The patches didn't make it to next, for some reason. I queued them up
last week on the 4th Feb, definitely a bit of a stretch to pick them,
I admit that, but I trust Josua to help with any kind of problem to
show up.

In regards to additional tests and reviews, lots of people have been
helping out with this and we have also received patchbot reports that
Josua fixed too, along the road. Moreover, the first version of the
series was posted already in November last year.

As I said, let's fix any of the problems on top, it should be that hard, right?

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
