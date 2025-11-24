Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF70CFD313
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 16:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dv6DxLYOaXNHstKpNOdUW2L2/b5PEDXDGzwyI3IoMl0=; b=Ktmfip1Y0ztxrQ
	OpomaSz0IwzHDJsX6Tj7x5niLJkrP21kbSutt1nwh64N/7AwC6KptIruOZfbTex62Bf8esNTMK9ns
	eBvJU4/GQIE2+SgGhZl7nCj4zSsfc3R4TufKSkU1FIfK6rfANXvvnGyV3IwLuYd2iJoERsoOk/jjc
	TvaeuWTIvHhTJqBlwoXxvNybrj/rDhLg7oS2NAPTiBk/fPF3g7TD1+yU9UPvq2q7bleXaWXhwonVi
	Se9blRF+P9yzKKwNubjA1WOwP59xEug4YqmAaHcN34QKTEUKIvfxoYiySdLFEbB1TD0KSU2OaOE2c
	WIxQMYuuL3iYwFNO2W7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNZId-0000000BzBh-0DCz;
	Mon, 24 Nov 2025 16:20:23 +0000
Received: from mo4-p03-ob.smtp.rzone.de ([81.169.146.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNZIZ-0000000BzAw-3NqJ;
	Mon, 24 Nov 2025 16:20:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1764001204; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=Mi6ffgTzeLDd6by16LVPA9WBGsA3fZVxfsWD+cc37oI6ulg6dD65T95bJgc6HltKK7
    N4uWDZgtyOZZdYje8gbuVu9T95X4b6tGrirbXguEMFuLjxnmBeIEHwAlx2PfiDgOUf0X
    Y5unUlSKON44f9TwafsNmg1XK3HCWLwKQQjfA0arXHoDi0VhL9qaRszysZeC26RBdtLK
    YO6XinkyNSO/eRv4GXglIu2zaNXRdLUGDJVxoPF+Ebn7lEWzAKhSqULCVuldOiLIotTx
    q8gu653gQC85578icQWFyQi2iHeAZ1lQr+Y9ej1sK6GmFp8zfbiANYXvd+0sRoKehivg
    eixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1764001204;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=YAUaPVN/LGE+6Tp5hwdCL/oWm3I9gZiHnGqVnZITlYs=;
    b=cUCmeEBRlYbwM5vOtKFOqHLCauD/E9W7U80NSRAFCB7CoOMD6R2e9+FINz97vTBUxa
    EaSR9ryKUBDxRXQpAuCFmDrC0Vlz24ODRPRgx20QLtw0CMv6m9nQcIyaVoFA8Hxfe7Ns
    oRovNaPokz6MeFJr6evXGsdP1dQAe4qrW7Rhh8UKE+mmCQQTJhJXqs0jPA9JE2TMH1EX
    +yD6kiySzwCuyWvVMLnxzmucLJJrS/5Vb+Y87JuqTctbDFAEVk5grUxKLv8SBccG9mq+
    b+y8Oj/N/tdmVhKCQxdC+mP4Lcd2i8XJLq1ejg/w9WMfARWVbl5i+FddPbgbqtCDfNeR
    mgPQ==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1764001204;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=YAUaPVN/LGE+6Tp5hwdCL/oWm3I9gZiHnGqVnZITlYs=;
    b=FDRRuZGDOWIr7PVjsgzCEoc3WjvlYfn5g1ULeDbZRLMYz5CmpY7CZr3cK7UpgYkx0e
    MJeOyEuhc+s50fia250GETWkb2KyfPR/uu4luJS0hYtGHVYWjj1C0gj4wgXUQbE8ASZY
    8cbYgmpw+KOk576zSdy2+AnnWs2yoLYgND53GmUAS0eQCYLLfmWBhCTk49aW9cvhkbHv
    HX6d1mkeNCVs9FwkkOx2Oz+apKUpgSQwGiZb+KHXhrCBW37hjEaBQ2sr0RL/5DH+ejQ7
    vB8wAa9r1qfbx9RWiahdkadBDaB5zU34WX42srJQJlf0ZoT8+a2k/5Sm1R8szDOOpyRd
    RIQw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1764001204;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=YAUaPVN/LGE+6Tp5hwdCL/oWm3I9gZiHnGqVnZITlYs=;
    b=UpfJCvMrspS72WrTrjWL4jgwZQ8Vv8hqUUkLNHFb0/XXkbAeu7OKuXDGtFnCaVbnqc
    2w8c+jlmQ0tQ0RvKt+AA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o12DNOsPj0lFzL1yeT0Z"
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 54.0.0 DYNA|AUTH)
    with ESMTPSA id Qc14a81AOGJvF96
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Mon, 24 Nov 2025 17:19:57 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH v4 0/6] Add support for the LTM8054 voltage regulator
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <4053840.MHq7AAxBmi@fw-rgant>
Date: Mon, 24 Nov 2025 17:19:45 +0100
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>,
 David Lechner <dlechner@baylibre.com>,
 =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Peter Rosin <peda@axentia.se>,
 Mariel Tinaco <Mariel.Tinaco@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Kevin Tsai <ktsai@capellamicro.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Eugen Hristev <eugen.hristev@linaro.org>,
 Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Iskren Chernev <me@iskren.info>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matheus Castello <matheus@castello.eng.br>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Casey Connolly <casey.connolly@linaro.org>,
 =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Amit Kucheria <amitk@kernel.org>,
 Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Dixit Parmar <dixitparmar19@gmail.com>,
 linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org,
 linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org,
 linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 linux-sound@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Message-Id: <732D3F12-0361-4800-8981-EF629B4C491F@goldelico.com>
References: <20251124-ltm8054-driver-v4-0-107a8a814abe@bootlin.com>
 <23111366.EfDdHjke4D@fw-rgant>
 <563331EB-2460-4CF5-87B3-5FE60B18BB70@goldelico.com>
 <4053840.MHq7AAxBmi@fw-rgant>
To: Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: Apple Mail (2.3826.700.81.1.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_082020_283298_0439CFD7 
X-CRM114-Status: GOOD (  39.26  )
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

Hi,

> Am 24.11.2025 um 16:57 schrieb Romain Gantois <romain.gantois@bootlin.com>:
> 
> Hi Nikolaus,
> 
> On Monday, 24 November 2025 16:35:28 CET H. Nikolaus Schaller wrote:
> ...
> > > Sorry, I don't quite understand your remark. To integrate this voltage
> > > regulator component into the Linux regulator abstraction, I'm providing a
> > > current limit control function. To provide such a function, the voltage
> > > level on a pin has to be controlled. AFAIK, the kernel abstraction used
> > > to set precise voltages on lines is an IO channel.
> > 
> > I was curious to learn about this topic and looked into the data sheet:
> > 
> > https://www.analog.com/media/en/technical-documentation/data-sheets/8054fa.p
> > df
> > 
> > As far as I see the LTM8054 does not even have a programming interface.
> > So is it reasonable to provide a dedicated driver at all?
> > 
> > The figure on page 20 seems to suggest that there is an external DAC
> > which drives the regulator. And the regulator drives for example a fan.
> > 
> > So I would think of a driver for the specific DAC and ignore the specific
> > LTM chip at all.
> > 
> 
> In my use case, the LTM8054 feeds a DC output port on which various devices 
> may be plugged. Dynamic output current limitation and output voltage level 
> control for these devices is a requirement, as well as stepped voltage 
> transitions, thus the need for a proper regulator device.
> 
> The LTM8054's feedback pin can be driven by a different DAC, which allows for 
> dynamic output voltage control. This is a more complex upstreaming topic 
> however, so I've left it out of this initial series. There are other component 
> functions which fit in squarely into the regulator framework, such as 
> input current limit control and soft-start. But I understand that the current 
> driver might look a bit "bare".

So you just want to have some user-space mechanism to control voltage
and current limits? Can't this be done by directly controlling them through
the iio API?

Is this for a device that is already in kernel or planned to be supported?
Or is it "application support" for some SBC?

Are you looking for a virtual "glue" driver to logically combine several low
level functions?

> 
> > What could be necessary is if you really want to be able to "regulate"
> > the current going to Vout, some bridge between regulator API and some
> > IIO DAC.
> > 
> > And enabling/disabling the regulator by some GPIO can be described in
> > the DT already through a "regulator-fixed".
> > 
> 
> This is a possibility, but when you bring in all of these other hardware 
> functions that I mentionned e.g. output voltage control and stepping, you'll 
> end up with several different devices which look unrelated from userspace, but 
> actually control the same chip.

That is quite usual... I have often heard: user space must fix this as kernel
just provides basic functions in a harmonized way and integration has to
be tailored to the device anyways :)

> Userspace will also have to know about some hardware details to properly 
> control the DACs, such as the values of the sense and feedback resistors. In 
> my opinion, this bypasses the kernel's abstraction of hardware.

I came up with this argument several times in the part and got a lot of contrary :)

What I still wonder: does your hardware warrant an upstream driver for a
non-programable chip if a different solution (with help of user-space) already
exist?

Another question: is your scheme generic enough so that it can be expected
that other devices are using it in the same way?

Or could the power controller framework (/sys/class/power_supply) fit better?

There is an API to ask chargers etc. for battery voltage and current limits or
even write them.

There is also "generic-adc-battery" which allows to hook up with arbitrary
iio-adcs for measurements - although you need a DAC in your setup. Maybe an
extension here is a better strategy than a dedicated ltm8054 driver?

BR,
Nikolaus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
