Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B00D1CDC6
	for <linux-phy@archiver.kernel.org>; Sun,  7 Dec 2025 18:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eDo5nZ1w+2fkoQUZC4lzPmhQFyWaHl96oleRjOf1co=; b=kOjgMqYI+4nyq2
	toifgUM65O9ItXutaDbuEEZGrURjh3LgqgGua5+qF+ZY0u+idjCJmJj7SQA9PTbDoKTYj0BbxtC1d
	XtgBJq1E2YrBLXSDUHcAEjVY+5m1+vXS3+xIzLGj5BsWWXdyzV95kvDwMccCgjXp1ThhpzbHsVvne
	oS5UpcK1N7/nB/ZR6FQfIWWvzT+gqyCofIQume0f5tMEb7ZGkkTQ9pJUmiOoJ5HyyhkipyE2eobQD
	SkASGhMT1HDtdOY31qb8WTBwA2oll5+1fwZVsyu8OiFH6iHOZ5/gsP1jparbKwYeKhB3Ig8R3fAc3
	W9bMQbtypJGMwqcNZAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSJoQ-0000000CARI-3aMs;
	Sun, 07 Dec 2025 18:48:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSJoP-0000000CAQz-0zs8;
	Sun, 07 Dec 2025 18:48:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 717FD600AA;
	Sun,  7 Dec 2025 18:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D25EFC4CEFB;
	Sun,  7 Dec 2025 18:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765133327;
	bh=i3PBFrjGBQBs0q3+aqCj3KcAnStBM/0oVzLp8ZbqdoA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CD8ThFBZDwJ9StM2NbaV5N6iNe4+vc30b3pEXddJ5Oo65Cmj3O9bdmORFW1sVXtmY
	 LC/YL4KVbdSODRsPq83UcIlFRUV8IxF24wvCw72ErJXBTWIKUELAKR6tJw5w6IEP85
	 u3p6oLIwTosCFTBxreZudIHlbc0hdl5qjEyo/KOIM2hpuUz13Rdh8WpILW6/CZt0mV
	 R0lUYB8JffGNoMwacw1v8aPFjO2IteAyUgyGJkJDp1ZeWQ2Qp7Ep5lfFeHVGV2rAPv
	 lFbDuPO+C5+12PXhp6ElYyqcAL4Eikvf9mV28JoGOOAxynDEG2QMAwLtpRwxlTSlUn
	 Rq/8Du/Y5ngFA==
Date: Sun, 7 Dec 2025 18:48:18 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: "H. Nikolaus Schaller" <hns@goldelico.com>, Romain Gantois
 <romain.gantois@bootlin.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org, Conor Dooley
 <conor.dooley@microchip.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Peter Rosin <peda@axentia.se>, Mariel
 Tinaco <Mariel.Tinaco@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Kevin Tsai
 <ktsai@capellamicro.com>, Linus Walleij <linus.walleij@linaro.org>, Dmitry
 Torokhov <dmitry.torokhov@gmail.com>, Eugen Hristev
 <eugen.hristev@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Sebastian Reichel <sre@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>, Support Opensource <support.opensource@diasemi.com>,
 Paul Cercueil <paul@crapouillou.net>, Iskren Chernev <me@iskren.info>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Matheus Castello
 <matheus@castello.eng.br>, Saravanan Sekar <sravanhome@gmail.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Casey Connolly
 <casey.connolly@linaro.org>, Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, Amit
 Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba
 <lukasz.luba@arm.com>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sylwester
 Nawrocki <s.nawrocki@samsung.com>, Olivier Moysan
 <olivier.moysan@foss.st.com>, Arnaud Pouliquen
 <arnaud.pouliquen@foss.st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Dixit Parmar <dixitparmar19@gmail.com>,
 linux-hwmon@vger.kernel.org, linux-input@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, Andy
 Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v4 0/6] Add support for the LTM8054 voltage regulator
Message-ID: <20251207184818.2ad7cef7@jic23-huawei>
In-Reply-To: <9b43da0b-61e1-49bb-acc2-392de3817db7@roeck-us.net>
References: <20251124-ltm8054-driver-v4-0-107a8a814abe@bootlin.com>
	<4053840.MHq7AAxBmi@fw-rgant>
	<732D3F12-0361-4800-8981-EF629B4C491F@goldelico.com>
	<3021060.e9J7NaK4W3@fw-rgant>
	<0E900830-E248-4F0F-A048-075EAF1D2440@goldelico.com>
	<9b43da0b-61e1-49bb-acc2-392de3817db7@roeck-us.net>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Tue, 25 Nov 2025 08:37:20 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> On 11/25/25 02:25, H. Nikolaus Schaller wrote:
> ...
> > Another suggestion: what extending the "regulator-fixed", "regulator-gpio",
> > "regulator-fixed-clock" pattern by some "regulator-gpio-iio-dac-current-limiter"
> > driver to make it independent of your specific chip?
> >   
> The name is terrible ;-), but that is what I would have suggested as well.
> I don't see anything chip specific in this code. If there is a need for
> a regulator driver which uses gpio to enable it and a DAC for current limiting,
> it should be made generic.

Agreed - something generic is the ideal way to go.

However, before going too far it is worth exploring what are common circuits with
these things to identify what parameters we need to describe how the DAC channel
is used - e.g is linear scaling enough?  You'll need to that to define a DT
binding. If it turns out to be too complex, then fallback to specific
compatibles in a generic driver to cover the ones that don't fit with a common
scheme.  A similar case we already have is discrete components as analog front
ends for ADCs - mostly they fall into a few categories and we have drivers
covering those, but some are very odd indeed and for those ones we do have a
driver even though they don't have anything to control as such - most extreme
case being when it's a non linear analog sensor. 

The mention of a DAC as part of the analog feedback circuit sounds harder
too generalise but that's specific to this particular buck-boost device,
it's board specific so probably doesn't change the above.

> 
> > By the way, are you aware of this feature of the regulator-gpio driver?
> > 
> > https://elixir.bootlin.com/linux/v6.18-rc7/source/drivers/regulator/gpio-regulator.c#L97
> > 
> > Just to note: I am neither maintainer nor doing any decisions on this, just asking
> > questions for curiosity and from experience and giving hints for alternative approaches,
> > where I hope they help to find the really best solution.
> >   
> Same here.

Only covering the thing you are consuming so not my problem to maintain either ;)

Jonathan

> 
> Thanks,
> Guenter
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
