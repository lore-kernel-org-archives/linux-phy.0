Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F6CDCFD364
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 08:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R49UaZMvIlo3ztU4ENb5MeiWOfRWJew5PR6phzK0Kno=; b=Biycx+h8ANuDfrOhGvREnBcYcI
	Kvo86r6S+KFV7YjOxovp/yFv1KAaRlXKC2gRxEu6Cw6tiO+HrZjidajHlAaWtdVd9LwDlcRixOglp
	301UDken+yLpySHWYGlHMz2igqDOJvVrx8jJeJGFHHvYe0rag2gZUGBsKOtQpsIm1h2iiBV0EBilp
	wJG4EAFH7AgC/p4rg8g64wxQYII5s4oBjslib+MOqWlfma3ML7CGNCqtSyqsXpZa2FZJ75wYE6OMB
	6ZSBD63d9+s5lWnx13LaGoSwZa008iewXW8dZj/o0gz3A7joQQHCz+g1PqVJvf8suWQAFJofCRy8f
	49Q4HaZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNojo-0000000CzTK-2Ppd;
	Tue, 25 Nov 2025 08:49:28 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNojk-0000000CzRw-3bGc
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 08:49:27 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2ED891A1D3F;
	Tue, 25 Nov 2025 08:49:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id ED0C160705;
	Tue, 25 Nov 2025 08:49:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AC3511037149D;
	Tue, 25 Nov 2025 09:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764060560; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=HuMSYGIDhMghJy5e91DhSwAve9AYXs6y5j/c+i75skY=;
	b=W8ePq99oVgQ2uOhAUVduhMvpCSXIAoY+0yVa1mbwp1VdL8dko43eVADbIkwLEo/9T4klxf
	cOHZHbCYxkbFZKzwYcsAV0MplbMQBGfxqbi8NHWPE1hI/2RdGU1320tO0+n2I2vAPU7TRr
	zeqkiOKvhUSBhsjnyr8bW+E1eANm32KvV6h32TNOCwJHL37JfmE0NSohpsx8aXUMgwfLqf
	lx4OkrhMWjOOJFQ1gVMv//rYccFZ96Ub5IKcXq252JnvGotvhT4jzy3ydQOAA4+ytNAXQR
	HX0lQg+C3HV6XUvm89BY4fLtzKcSbLhkr3v6E7n0Cs3tAhGaoobXAOaL+QCrJQ==
From: Romain Gantois <romain.gantois@bootlin.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Peter Rosin <peda@axentia.se>,
 Mariel Tinaco <Mariel.Tinaco@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Kevin Tsai <ktsai@capellamicro.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
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
 Casey Connolly <casey.connolly@linaro.org>,
 Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>,
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
Subject: Re: [PATCH v4 0/6] Add support for the LTM8054 voltage regulator
Date: Tue, 25 Nov 2025 09:49:03 +0100
Message-ID: <22915450.EfDdHjke4D@fw-rgant>
In-Reply-To: <732D3F12-0361-4800-8981-EF629B4C491F@goldelico.com>
References: <20251124-ltm8054-driver-v4-0-107a8a814abe@bootlin.com>
 <4053840.MHq7AAxBmi@fw-rgant>
 <732D3F12-0361-4800-8981-EF629B4C491F@goldelico.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_004925_041893_5BA0018D 
X-CRM114-Status: GOOD (  44.43  )
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
Content-Type: multipart/mixed; boundary="===============1481915881159768686=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============1481915881159768686==
Content-Type: multipart/signed; boundary="nextPart7880843.EvYhyI6sBW";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart7880843.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Romain Gantois <romain.gantois@bootlin.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Date: Tue, 25 Nov 2025 09:49:03 +0100
Message-ID: <22915450.EfDdHjke4D@fw-rgant>
In-Reply-To: <732D3F12-0361-4800-8981-EF629B4C491F@goldelico.com>
MIME-Version: 1.0

Re-sending this because my mailer messed up the formatting on the first try...
Sorry if you're receiving this twice.

On Monday, 24 November 2025 17:19:45 CET H. Nikolaus Schaller wrote:
...
> > The LTM8054's feedback pin can be driven by a different DAC, which allows
> > for dynamic output voltage control. This is a more complex upstreaming
> > topic however, so I've left it out of this initial series. There are
> > other component functions which fit in squarely into the regulator
> > framework, such as input current limit control and soft-start. But I
> > understand that the current driver might look a bit "bare".
>
> So you just want to have some user-space mechanism to control voltage
> and current limits? Can't this be done by directly controlling them through
> the iio API?
>
> Is this for a device that is already in kernel or planned to be supported?
> Or is it "application support" for some SBC?
>

This is planned support for a voltage regulator chip.

> Are you looking for a virtual "glue" driver to logically combine several low
> level functions?
>

I'm looking for a clean userspace abstraction for this component, the low-
level functions in this case are those of a voltage regulator.

> > > What could be necessary is if you really want to be able to "regulate"
> > > the current going to Vout, some bridge between regulator API and some
> > > IIO DAC.
> > >
> > > And enabling/disabling the regulator by some GPIO can be described in
> > > the DT already through a "regulator-fixed".
> >
> > This is a possibility, but when you bring in all of these other hardware
> > functions that I mentionned e.g. output voltage control and stepping,
> > you'll end up with several different devices which look unrelated from
> > userspace, but actually control the same chip.
>
> That is quite usual... I have often heard: user space must fix this as
> kernel just provides basic functions in a harmonized way and integration
> has to be tailored to the device anyways :)
>


IMHO this is not integration, it's BSP work. As far as regulator functions are
concerned, the current status quo is that the kernel handles getting/setting
voltage levels, applying current and voltage constraints and other basic
regulator features.


> > Userspace will also have to know about some hardware details to properly
> > control the DACs, such as the values of the sense and feedback resistors.
> > In my opinion, this bypasses the kernel's abstraction of hardware.
>
> I came up with this argument several times in the part and got a lot of
> contrary :)
>

> What I still wonder: does your hardware warrant an upstream driver for a
> non-programable chip if a different solution (with help of user-space)
> already exist?
>


A different solution does not currently exist (although a userspace-based
solution could be designed). I just think that a kernel-based solution is more
desirable here.


> Another question: is your scheme generic enough so that it can be expected
> that other devices are using it in the same way?
>


Yes, the LTM8054 has a fairly common design as far as buck-boost chips go.
Things like feedback dividers on the output voltage pin are standard practice.
And since the driver doesn't rely on a particular way of integrating the
LTM8054 with other components, it can be reused wherever the same regulator
chip is used.


> Or could the power controller framework (/sys/class/power_supply) fit
> better?
>


I don't think the power supply abstraction is relevant here. The LTM8054 is a
voltage regulator, it doesn't have charge, capacity, temperature monitoring,
power limitation, or other power supply class features.


> There is an API to ask chargers etc. for battery voltage and current limits
> or even write them.
>
> There is also "generic-adc-battery" which allows to hook up with arbitrary
> iio-adcs for measurements - although you need a DAC in your setup. Maybe an
> extension here is a better strategy than a dedicated ltm8054 driver?



What if the LTM8054 is not used to supply a battery?

Thanks,


--

Romain Gantois, Bootlin

Embedded Linux and Kernel engineering

https://bootlin.com
--nextPart7880843.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEIcCsAScRrtr7W0x0KCYAIARzeA4FAmklbX8ACgkQKCYAIARz
eA6Qag/+O307fHl9Wqb40t4WIdZsKqQP0PcYGNlhz4T+SyyyFetdu7Un665acsjg
MdEMkudNxDehZTnsfTlNKsGzpu2OIAsiIlD9XKJFaAA1kAzdWA9xb8mT7lwnadD3
sa0EX7LtIT8x4BLkaCyTkCioE3FgLPhQCXC3fALmNojilfwl2Y5QXUuKUB230sPo
8ihY8Yj2rc5QmYZV9fSsC/HSQwVkXSU3T5Q7SjwfFSIRL2ZajuPycLU9QmHnOWGi
R02esa/1vRdYlVGcCwKSDG5JHzsRCRfsbXZAkIyMc3hQ6LgizTUyKQ+FM2w/68/w
1pn2H5N0D8uR/+WxXWPMMZ9hpklLkDec5lOlf3ZA4DOa8m6nDKROBx/eV/aLlgHp
imI2qqqmBqJjzO+x5ubkm/v5QP75ikGusNxuXcUACwQTNaif8z6YEekKvGd89taO
jvhQnSOWtFfYZRgVzpjbjgm+OZy+f6bACCzGI/KZ/KhAb1vwCz6hBkmg0Zh2c/hP
Wa3dcDp/pn5j3yP1E10jdA9G9AkxmSWN9VxNtRrGKynSiz3Z2ilWvze2SxlSN0vZ
tdlEhNz1/r/fZWcDyFgDwaCs/R6+RHtQoYnG/A+5aatiGdnE9/tngpQXOkjpr/ft
VMDXkLH4+MDGHExDw3PIBbSfWqmFssAmfriPh3xsAUUXcR/LvIU=
=eMhj
-----END PGP SIGNATURE-----

--nextPart7880843.EvYhyI6sBW--





--===============1481915881159768686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1481915881159768686==--




