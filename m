Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC0DEC021A4
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 19:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cbByZ4fRB492Pdlrrorfqz9LQuwgOvKnN9Fhl9ij84o=; b=MscwzKsRno9LOynlSYohWknNZK
	kYDeu3CdBrK0ovnO7jecO6HHohVOKMF7+uyl51s27/nJiBtkluW7+7URkNHyJHB4ihLaYolCkBalp
	9hi5A9u6cgQIbARg7/NeC1y3jr5RGBZ60/EH4XcaE9esbgYFDWT6cgompbcnGclUud25c+ZdBXHxf
	ElAKv+QLZgk+KmO2xnnAR9jh/NFBjxkvSf9fQ8r1X1D9XtRSI61Re3a6Nuvh8rdXdv4s2qG7ZyvGF
	Use5OYCbzxpgeR8m5FslB0FVLNAzkwSJAUExpZ0XD84OEIsvNFRUrHoS4O2n29A6S8RU0CH93Xjzg
	RdD/fhuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tieS9-0000000CKUN-0L3L;
	Thu, 13 Feb 2025 19:00:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidZP-0000000C8Eq-28PC
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 18:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 55C7B5C58F3;
	Thu, 13 Feb 2025 18:03:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7FC6C4CED1;
	Thu, 13 Feb 2025 18:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739469854;
	bh=F3mVXg5snyDpxEsavZ/5IjthjylA1qbTG8dFGI27YYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qm9yNc2T/FZRL+nWkoWqyuclWyXIxj7RSCvd8Il+j9Mcr0q18gifQlmhE4Jqn/QtT
	 SHV5jzlLb+lJgNVOXSn63z76y+Ab9cQ/uBggC1lAEVvOvpJMRDdlJ7eNAqOL0k0vD3
	 8EmxbuLba8Z//xg/3GRX+7JX5hhPxSeMBAyFgX04i1TWpJYrULPt6OqVD+JM1wqM6C
	 jZ+/gP3k681pGkaYyHLuoIN3tn66OHhTGDdamLv9vrL3kdfMV/4mOLV+/STaB37IOb
	 odPhRLQZz0kNZMUsQ0bLZiVqKnrdXn1A3kIG5447I5PAaxpI+lgX6UV3+FiuroBz6m
	 k5bnVgDCx1VrA==
Date: Thu, 13 Feb 2025 18:04:05 +0000
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
Message-ID: <a98d8255-6267-4c4f-9b75-8f3fbdaadc90@sirena.org.uk>
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <173935301204.11039.10193374588878813157.b4-ty@linaro.org>
 <801b5364-129f-42e9-bf9a-a90d9eeb4629@baylibre.com>
 <CAMRc=MeXTvPnEPjOmPd5Vw0FYKHzndsB0SVjQErA4CY_0MGsMQ@mail.gmail.com>
 <7989a6a0-b761-416c-ad97-69bd23fdc2c4@sirena.org.uk>
 <CAMRc=Mea5imComkraP=v9TKsxLDoBm4XtbLL1QxCbhJ8d4uxcA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMRc=Mea5imComkraP=v9TKsxLDoBm4XtbLL1QxCbhJ8d4uxcA@mail.gmail.com>
X-Cookie: Take it easy, we're in a hurry.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_100415_629774_2E3724D5 
X-CRM114-Status: GOOD (  16.36  )
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
Content-Type: multipart/mixed; boundary="===============5151322650895452763=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5151322650895452763==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8dqGeFBusm2eevtX"
Content-Disposition: inline


--8dqGeFBusm2eevtX
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 06:58:04PM +0100, Bartosz Golaszewski wrote:
> On Thu, Feb 13, 2025 at 6:53=E2=80=AFPM Mark Brown <broonie@kernel.org> w=
rote:

> > If people are acking things that generally means they're expecting them
> > to go along with the rest of the series.  When you didn't apply the ASoC
> > patch I did actually put into CI but it was a bit surprising that you
> > seemed to be expecting that.

> There was no clear consensus. Some patches are still not acked.

What I would do in that situation is apply the patches that were acked
and leave the rest.

> No worries, I will take the acked ones. I didn't see any b4
> notifications from your side yet, so I assume the patches are still
> pending?

Yes, like I say they're in CI.

--8dqGeFBusm2eevtX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeuNBUACgkQJNaLcl1U
h9D7XAf/ZOJbznj+kR0nWMA9aMwpcy+sZtOGrPU2NlEuXbE9T6iSncOwANVAM/WG
qy0hFl8VWIWtR5k6vSTQqcIXIDfpzlG9WivypRx4LeCZf2k0NwqoTffiijgvzYzG
4+n/G6f1+tWy4gMxAWSiCWihVjnY6OzIdnwZ/h1OyIk1udqQlKCgJ3/wPbCh5HzM
nWQdusaZRMBjQrHhbtzsWbTuilCb5US2Hu0/eDDjxo1ebJizZm2oIr8mcdu51rSf
YlLi5/GlFwwo+ItSnnbI8Dl7BbrcLWr3MOXyLOSISKN4jA/VT+MKUU/NHl5FvsrX
4fwSx/1bsqjSeBP6FjEdoniRW8UjPw==
=t6DC
-----END PGP SIGNATURE-----

--8dqGeFBusm2eevtX--


--===============5151322650895452763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5151322650895452763==--

