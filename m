Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13785E81BDF
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 16:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Id5QGYJwg2AyI+ggk6fvBM5/32CxKzPiOK43iIXlkY=; b=ZBDVg4Xoui5IEp
	DqubKeSWpacnkjco6aGfjsr1g9LUTv+OI18pNoYP+J1LLjSYPSBPuo7Duw45HEJONJNHg5gqvPLwV
	A3aMKLGZtTheapQY08BYZ2p64CFPSZN3uM9pb8eMlSIIW/9NDx1jTvjlx5BZN7NWAcS4mpUzHEfyp
	JIcBZhRDDAmQfXhTYraju5iBxrbLml0IS63w5wijaIauDfKONeWpIVleByC7xedr0puYcQYFl99rX
	1wgyFKAw07fcKw9MahCDwdvZCADfTDe64QANqQDKNXeYRcJQC318zmRkceZU35A9DmFGHOrbxSMym
	BmFjHxvi2+P8RfoC8X6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUT9-0000000FimH-0Boo;
	Mon, 09 Feb 2026 16:50:39 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUT5-0000000Fil8-49Sw
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 16:50:37 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-59dd22b9895so6241227e87.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 08:50:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770655834; cv=none;
        d=google.com; s=arc-20240605;
        b=EkhjoFSeI5dx3hAXbtjZ2yZl0bIlGhZQyz0kL2XfdfdTjjmml96JjKmatTL9HJfJuk
         CLyRqtyb9xsdwgNehM7aMPBRLgGRNbR/FzEq3/R6ulzO1Q6M7ettvZBPPuZwxT38c+Lj
         Dd5klAxrNegwTpmiYo2TuKmQQQhz1qo34mdVXL+R3LbdKAA+HxAsXWMWcmpWTBQsjslu
         gWyFC4rCSnCPoF98rYQ02f3NS6RXRccTdoRx+lnQw5n3dJ89OVrA3hON60uICg5ou8Ob
         i2GxwpQop7vPuYMVx7pdel5r/T+/EVv92Mof+9X1IGItQYSTS5n2QY3b9v90wqF4qld+
         YkKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        fh=kMupAtCjnXT76oEKS41OourfXaDaMQIwOGDb/PFeSRo=;
        b=VXM0zL0KXW5hWgScO97mu0aiU3LNrK4j9CEUlS4VQayUq4sxawJRR4DrZt9h8drxAA
         ZjJ7McsRw2GGuo+x4l86slwd2c/5W86W2t3JPyBowAtcbQQy3HLXp8X1HY+pAM/UhIzc
         Bb4EW1+xwvgfB9//UG30w+6n1HsBro99U1tEzbgLP+v20NBbJAcTvWeCcwheKZmzeGtd
         ra/4TSGcUwKL+jB+tAzZ6YDJytK5gij0H/ScdlflhJZ+jc1CWcgggSHDadO1QP8fyFjD
         VvQ/DxUkv3g5AEmj9vJi2KtBG4p+gb53gr/vPpc8QS5ukHHXdbEFSs75dl5DplMjsVJ5
         R74g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770655834; x=1771260634; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        b=SxpJTljdB36cU0+0mIDgko2zMXdkXv4FvTRd1Z0TPLogyxOiqZE4wmbxCphL3J+uz6
         Rz6vo06LWIJ8LK2mx9/TzYIDN7kVidrA26czTy8EADZhj/Nwe7JzVJ1g5c1UpFULANh2
         hrxV93Q8hw/Ev0Dfh8frgh3W63dMhERWkwhkr48N4tutM101whHfBusoLFVdlDT9MW/w
         0VoPM7n1QykBkg+MJZ97n5jxWsIwRtD5VHYdMJ78za6Ss83M03Otr+uDnDjwMNeC9ZtN
         qMyV+mLoY1tVJmv1LkOj8PO9ry18v3Zxtu21KgKJmN+ZjPvcdHkwaSs0unIZVGuvBm8/
         IWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770655834; x=1771260634;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKH/BMQo6ZEQSBfwPQJ1yEwPkvmRFNFDphLlhHfoCFo=;
        b=oC/P7B/w9x/2Wew2RL4Ep+JnFxfxWOPEPtCsJp3bNf6yPzSE8eH6tQc080oXuZfh1V
         beWdJJyt9bhcIaAcWGlDV0fPsdzqB2CLluBjPFvSIm7+VJGNm2Bd9SD0y4OIr2w3qSsS
         LVrIgDL/HfEaycLS/31busmDogr5nFo8kas9Mue+wGY97Hbod5HVQBxNIzvDj0f/Yu1R
         POo/3i/XhYcn5WUv8VQG/c16I4CW5S/tnES3wc9/K+4ioJCT0Jd7SN1AHCJca4Kz67yi
         SRpn7aes4BH4KFhER6myVfoG4C7FmL5e9JKDCvAcGy0XAf/HKCUa117ej56aNxtwjcqF
         c+vw==
X-Forwarded-Encrypted: i=1; AJvYcCX9VS1CL6+n8PKPxIf3WqDddHtoQC4lJ/trPkFivFL8vGat3ohz0Zkva7XjAjlCme2XIM7sh+OCJdA=@lists.infradead.org
X-Gm-Message-State: AOJu0YznOYYCqKvDneNYjG1wInRX8C77VXW7y8ICiTPHFHVEeU6yT5Fw
	78I/fwOh2BmrtNauOfrGqnwj5/JBLI8LPQDgqnl9KTtHjSVjZ7zt5dqllIHozX5GBcAPmPBVE17
	fvEXVf+TMaHzxOyd2l0+uF4Rq9yoznYTZnAftD2i6kw==
X-Gm-Gg: AZuq6aJULr5iTulwgbmZkU1YXhJ/hbTqGJ+sVXLD2pJQNMyq2oouBEJD4LzqRjqV8Qn
	Wxq/VCbfi4yoTEEQT1OKCqItLiRLtg59tgL575BdyDaSpfgxrq7gHI2ijNdlai8YXnzbZL0HmRX
	9VvHstpwzsWqfpTwN7DtfUdOMmUW/cUtrK3p0NeM+4jfbHqLP2tk+B11l6KaykWcCgn7OK5fd1O
	2whlsbL9Jf/nKP4wutH2DJKpGaUmzXu2fLKwzP1FVLQkb4hbNzKD9IQ4/WX34CVDGmY7qxCGKrI
	WZQKWjUfRcbcmYkjGyX/44LWqKrX
X-Received: by 2002:a05:6512:118c:b0:59e:4d85:d82d with SMTP id
 2adb3069b0e04-59e5437754cmr14477e87.13.1770655833649; Mon, 09 Feb 2026
 08:50:33 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com>
 <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se> <CAPDyKFo2Zm2LKP6=m=fJEbo1a2ZpBn10EGaucFS7zGfGJV_6tg@mail.gmail.com>
 <793644d5-4d4f-8ee5-7fcc-369536801683@axentia.se> <CAPDyKFqCveBs-_VcWCm8OCegbpwnW3=0iGa2e5KUNmSy3TMA+A@mail.gmail.com>
In-Reply-To: <CAPDyKFqCveBs-_VcWCm8OCegbpwnW3=0iGa2e5KUNmSy3TMA+A@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 17:49:57 +0100
X-Gm-Features: AZwV_Qh1nXgInou2tkuYLPeqnXQDy8RDhZJ2fx9TuiqfqWwczkYvBAKEQ3MJW4c
Message-ID: <CAPDyKFrDLEzKrFY0GeevptDdRe7JAUzXgqM7fVtQ_PnYDi+N_A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260209_085036_070581_C0D0CEC2 
X-CRM114-Status: GOOD (  27.72  )
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

On Mon, 9 Feb 2026 at 17:48, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 9 Feb 2026 at 14:50, Peter Rosin <peda@axentia.se> wrote:
> >
> > Hi!
> >
> > 2026-02-09 at 14:39, Ulf Hansson wrote:
> > > On Mon, 9 Feb 2026 at 14:16, Peter Rosin <peda@axentia.se> wrote:
> > >>
> > >> 2026-02-09 at 10:57, Ulf Hansson wrote:
> > >>> I have already applied for v8 and it's going to be in my pull-request
> > >>> for v7.0 in a few hours.
> > >>>
> > >>> Please send incremental fixes on top instead of a new version of the
> > >>> series, then I can pick them as fixes for v7.0.
> > >>
> > >> Hi!
> > >>
> > >> Sorry for being late with this, but as the mux maintainer I'm not
> > >> fond of
> > >>
> > >> 028ec00381f5 ("mux: add help text for MULTIPLEXER config option"
> > >>
> > >> and would not like to see it in rc1. Can you prevent that some way?
> > >
> > > Sorry, but my pull-request and branch was already prepared.
> > >
> > > Please send an incremental patch on top then I can pick it up as a fix
> > > for 7.0-rc1. Unless you want to manage this yourself via your tree.
> >
> > That unfortunate. The patch series has not yet made it to the next
> > tree since it has not seen any updates the last few days. What testing
> > has these patches received?
>
> The patches didn't make it to next, for some reason. I queued them up
> last week on the 4th Feb, definitely a bit of a stretch to pick them,
> I admit that, but I trust Josua to help with any kind of problem to
> show up.
>
> In regards to additional tests and reviews, lots of people have been
> helping out with this and we have also received patchbot reports that
> Josua fixed too, along the road. Moreover, the first version of the
> series was posted already in November last year.
>
> As I said, let's fix any of the problems on top, it should be that hard, right?

/s/should/should not

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
