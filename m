Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6D27C021A8
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 18:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=umLC2amU1++BG5kjZtgNtu4RH2lQQYAJ8D3neHXGP5w=; b=PvWmvI+sC/Whq7tMGiTTBzsdwt
	12DFQ8Q2lGcQf2bRs4ZJWvkBfB0foQzowlF+LysgbENu8qIB3mr0A626K+rCj5XovqkhKAsAETs3P
	31lHQ/4C26mrtWkz3VVZ6i62Q3h+IhaiaUHvgJVcMNTJCT4GFY6gCG6G4mkQi0eBhXFAXfcTUPkc7
	M42nrGqqEQ4TCsMwFYh0+uylSNfHY0BviyGQ+vNZNOGygw3VF3vtcGwBqS4aLNb1JgTVzHka+mFOk
	rooCMbTu59urwREYwEVqHcBKI7bmFWQ0EF1bTWLkq2R6kUmh92uCXKVZx8oVQPJW99XfsM/suluPJ
	AVd8uswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tidyv-0000000CFPK-1SIK;
	Thu, 13 Feb 2025 18:30:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidOd-0000000C5XB-2BEO
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 17:53:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C08455C56D9;
	Thu, 13 Feb 2025 17:52:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFEA1C4CED1;
	Thu, 13 Feb 2025 17:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739469186;
	bh=0/EZ08bVHan3Oir1oM3FqVRV3qOf4zQaimq6QliMxv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tS2lLmVdPvAZXUu/UmlDRziM1qm9d2Bg4NRvDv5uzGqDYiZOSrgzi5no2n9N++ZdX
	 oHRJkPLSZq+PrL7V5NEMyvzmmpeKsnPoXZNx42bTHsBpLj5Jxv68XPw3GHbduDjrJf
	 qgF8Tmb+/6RUUNVT83x9CWZ41jUMN0XZq7jgyJ5WVa6Gj6LLFiIvFLcNN2tyxGpUjt
	 VLVljmLmMshzHV7jEmI7CfmG6EC/KfO6/Y+nBzMu0p4O7UwC49DjNkXZsTy/8CPZiy
	 wBY1c5w+Vwg0jyxI9nrF7NKhxt0MDnJsutq0jwETD6vEkiF37z7pigNaiWF04Zbfop
	 X8TgFF+tmoELQ==
Date: Thu, 13 Feb 2025 17:52:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: David Lechner <dlechner@baylibre.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: (subset) [PATCH v3 00/15] gpiolib: add
 gpiod_multi_set_value_cansleep
Message-ID: <7989a6a0-b761-416c-ad97-69bd23fdc2c4@sirena.org.uk>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
 <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com>
 <CAMRc=MeXTvPnEPjOmPd5Vw0FYKHzndsB0SVjQErA4CY_0MGsMQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMRc=MeXTvPnEPjOmPd5Vw0FYKHzndsB0SVjQErA4CY_0MGsMQ@mail.gmail.com>
X-Cookie: Take it easy, we're in a hurry.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_095307_642272_C0438675 
X-CRM114-Status: GOOD (  16.70  )
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
Content-Type: multipart/mixed; boundary="===============2635710322549232186=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2635710322549232186==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZlXg6mnu447oqkvT"
Content-Disposition: inline


--ZlXg6mnu447oqkvT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 06:42:19PM +0100, Bartosz Golaszewski wrote:
> On Thu, Feb 13, 2025 at 6:25=E2=80=AFPM David Lechner <dlechner@baylibre.=
com> wrote:

> > Do you plan to pick up the other patches that have been acked
> > as well? It seems like most folks were OK with everything going
> > though the gpio tree since the changes are small.

> Jonathan requested a branch so I made one and sent out a PR. I figured
> people would just pick the relevant patches into their respective
> trees? For patches that won't be in next by rc5 - I will take them if
> Acked - just remind me.

If people are acking things that generally means they're expecting them
to go along with the rest of the series.  When you didn't apply the ASoC
patch I did actually put into CI but it was a bit surprising that you
seemed to be expecting that.

--ZlXg6mnu447oqkvT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeuMXgACgkQJNaLcl1U
h9BoDgf/W5CpihAHC/LYRf8SQvXiRwjxswvLLHFJuH31Mlm004xXbQEhnVGnx0y5
BQuUSIV5VBOy8sV3etF5jay1rfAtGlXAa6tfyCNLSjF6164Pa3MmGuNcxlA6mijW
bHTSKgw0661wFELE/2qvRoPQKQmeo6POj/IJBf5mM4u4keHyjlCm+3FaYkBMTz16
Plm2wDHNvrjxP4KKza3/uwwcSJTSQrVF2SXDqi/bFgV18RrljglU4KJAiM+K08OB
o0BJjYG+Rxesf072hc7kDvG/B3yk/8cC8bnDpdtIkeVN+dVcW2d7QktryNVqQgbM
xlC6PgwJOwzMzOkxSTgIUpQqYYa8nQ==
=Ir02
-----END PGP SIGNATURE-----

--ZlXg6mnu447oqkvT--


--===============2635710322549232186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2635710322549232186==--

