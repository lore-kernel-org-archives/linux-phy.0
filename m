Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE69CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 15:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lIjdZx+kLkM84g6ROgp7TjUygmYP2d4HNXw94Tpeh8=; b=jTukjQ86RZP9gx
	DTLGJ82R+xthcA03Am6TUnwCL6oPTEF5NtKMFPeykSJvwsV0vzhJeeylEMFvJWFaINbPuIkLClc0U
	peOb0hUeQM61GQXbtY4TrYvVdfAr0eL7xckhqlCj66+3zIqjqyvRlwwIf/HphtM1mlC2HmdAxjWQ4
	Vxvn71KIXUnelORlFAN8rB5RMNsB5A4Xt03iD6PHxqeVe7AijfVxVRQTuILS5sFXm5ZcOVAxEo5RJ
	gEcfJj04D5r6oZeh5819O4ZSAw54pO4M2POK0eh9fNn6ZsTYHvAAS2Dn55heRc6kElMrnmiVDlArS
	QN4/k1NIPNRZXMCg+ZAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNYgH-0000000Bw8H-3y0f;
	Mon, 24 Nov 2025 15:40:45 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNYgF-0000000Bw7A-22ON
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 15:40:44 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-34372216275so4578337a91.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 07:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763998842; x=1764603642; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Llp8FG6WVJOxC42YZnLNsTS0zXwdgkxLlwBk+kzHwR8=;
        b=S/+s3ViPcrJG/bnOXYmP/AV/AU0J4/G7GnnNOw+j2PHnRc758/KOohmC9Xw0J7QwAA
         8NW1DCLBCiyrZ6JyQtVmJbDuhGRBInBiN2CPAc1gc0T6Ck3ve0AczYfI2fxNI9v+CvKR
         AQ1E+o2RjQtar1OkdK6EOLspin0F5XSVXXvTzg5fvOlWvlgZ6FN/oWOPzwjAL9w5xDhI
         BSnkihD59YQp0N2zEOd03vO189zdF8CpxyjNalAuB+Z8SDxaR76cEU9QR03XwR2l0VBr
         1EO7kzGCjYrG730vvb30RWjRJaHLH4HTs10NiRmCov51UGDtJ/1iT1wshhVT/xdIhfuT
         VBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763998842; x=1764603642;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Llp8FG6WVJOxC42YZnLNsTS0zXwdgkxLlwBk+kzHwR8=;
        b=DN4XAS3GifGevRU4DOsfKR9PXe2fDtJ+xmrDPjEJou3FQUWRR20FkSm+EzfoWerq+h
         /QDl8XA01jLnGdhL63DRO5h17ZSk2hZQsQFrWAAoIv8Ab88YZZ2sZBT3+qyBLCxNnwIL
         i/TQAjxS75wSgJk6v+x2TWrKoqPkX2KBPMdVSeVJAZ5KtjoTM8Tdn3CJ9qaOlHcxJESN
         W8CL2m7bb2IPutRJUiP0O2U4aupMXXHb89SDzSlbwHJ2UeJR8+HYkMOI6XrMPMmtLKN3
         u5nix4wjU12StckevYXtN7S0sdbwcotAozcThsRlx+zu8sPCmikcIGtjTX8bL2Q4+S/v
         hvpw==
X-Forwarded-Encrypted: i=1; AJvYcCXUeUiBS7kmGfZXNT0bxK3ErbOzrtAEV9TY2GaNQKlKkOPEIzYmqkB0y99vUUu7LdNwef2+bwaY9V0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNI8X3D9A2pxWf5djXeYB0fPL/2kUbrX9VAEP5hpAcV/0AH1MP
	S3nLasshzfHvtAJRXVIR/FfiiR1c0OlEfcbXJjZt274cglGHRSsdXzaM
X-Gm-Gg: ASbGncuwVq4gJXeWnZsEUZudlqDVtw97IRZajRirzpASiztKu5nNSxgpGIrxrJ9xXA9
	Z8L0IQwadK+ThINWFyAfrBWayIgkKPzygjjSLH3+ruR4ySSoGvGEUwPx2qvHoMIzagK0onbH0f+
	74lbpG+RTdPuoN05e8fHUrLS+zID6PBJNn2P4sCnvzq/yWOdDIVh332pV3JIb4dd1zKUCVmyTnf
	0c7BMa2frB+vLmmdrKdULzeSmtEf0wl88fBJgj7n5fjUMrGthXhkQVfdcZXzr3mMRSgCIg604Fq
	0cFyuxTWqPLkUW8MqOF1Rex7Sfr6lCxBPn6JlcKhD9TgpgjEClpxsXWwJOrn52RralE31Rdc1wH
	icq2UAS37aI9E6slGCTPPXBadgxl4S4UYfkARNLXLrpycZput47YTzTeOyYwzMj79KLNPrUbJ0A
	fcCQd8Vx9BkEpobqHLjq1OS0yYOq9xmPn9Q49tFQv499XnVPBehrEHrgL0YP4=
X-Google-Smtp-Source: AGHT+IEFPQhBfCYRI3nTm1u+iQCIbAQZlcFtON++Fnq7DdJGduD9vDQYDBrSvMWcgiV0KUw17gd6Yw==
X-Received: by 2002:a17:90b:5112:b0:340:bde5:c9e3 with SMTP id 98e67ed59e1d1-34733f2d207mr11198788a91.23.1763998842365;
        Mon, 24 Nov 2025 07:40:42 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5c8sm14034703a91.11.2025.11.24.07.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 07:40:41 -0800 (PST)
Message-ID: <da5457ea-c1ed-4c90-8743-fc982a02ed88@roeck-us.net>
Date: Mon, 24 Nov 2025 07:40:37 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] Add support for the LTM8054 voltage regulator
To: Romain Gantois <romain.gantois@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Peter Rosin <peda@axentia.se>,
 Mariel Tinaco <Mariel.Tinaco@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Kevin Tsai <ktsai@capellamicro.com>, Linus Walleij
 <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Eugen Hristev <eugen.hristev@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Paul Cercueil <paul@crapouillou.net>, Iskren Chernev <me@iskren.info>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matheus Castello <matheus@castello.eng.br>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Casey Connolly <casey.connolly@linaro.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?=
 <pali@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Amit Kucheria <amitk@kernel.org>,
 Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Dixit Parmar <dixitparmar19@gmail.com>, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20251124-ltm8054-driver-v4-0-107a8a814abe@bootlin.com>
 <24527d76-4f6a-4008-a369-23510d492a94@roeck-us.net>
 <23111366.EfDdHjke4D@fw-rgant>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <23111366.EfDdHjke4D@fw-rgant>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_074043_540125_E1F8A5AE 
X-CRM114-Status: GOOD (  27.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/24/25 07:13, Romain Gantois wrote:
> Hello Guenter,
> 
> 
> On Monday, 24 November 2025 15:57:41 CET Guenter Roeck wrote:
> 
>  > On 11/24/25 06:48, Romain Gantois wrote:
> 
>  > > Hello everyone,
> 
>  > >
> 
>  > > This is version four of my series which adds initial support of the Linear
> 
>  > > Technology LTM8054 voltage regulator. The driver supports a fixed voltage
> 
>  > > and a tunable output current limit using a DAC-controlled pin.
> 
>  > >
> 
>  > > I'd say that the most unusual part of this series is the usage of the IIO
> 
>  > > consumer API in a regulator driver. I think this makes sense here, since
> 
>  > > the regulator driver has to access a DAC to read/set the output current
> 
>  > > limit.
> 
>  >
> 
>  > I don't think that is a valid reason. Literally every driver measuring
> 
>  > voltages or current uses a DAC to do it. How else would one convert an
> 
>  > analog value into a digital value ?
> 
> 
> Sorry, I don't quite understand your remark. To integrate this voltage
> 
> regulator component into the Linux regulator abstraction, I'm providing a
> 
> current limit control function. To provide such a function, the voltage level
> 
> on a pin has to be controlled. AFAIK, the kernel abstraction used to set
> 
> precise voltages on lines is an IO channel.
> 
> 
> Do you think that using the IIO consumer API is not correct here? What other
> 
> method do you think I should use?
> 

Ok, I had a look into the datasheet. Unless I am missing something, the chip doesn't
have a digital control or monitoring interface such as I2C or SPI.

At the same time, you copied the hardware monitoring mailing list on this summary and
on (at least) one of the patches, but apparently not on all of them. This lead to my
apparently wrong assumption that iio is used to monitor (not [just] control) something
on the chip. I wrongly assumed that IIO is used to report chip status (voltage, current,
temperature) using an internal DAC. Obviously that was a wrong assumption.
Sorry for that.

Apparently you copied the hwmon mailing list for the introduction of an IIO namespace
and its use in a couple of hwmon drivers in one of the patches. My personal opinion
is that this should not be part of this series but a series of its own. That is just
my personal opinion, though.

Guenter


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
