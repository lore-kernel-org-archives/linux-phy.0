Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE10DC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wpX/2HhiPWNnwOzbKwQWKhTlWKqtqzNAkHLqMbqUS2k=; b=u7B/hJOR3YIkAaA/q+z2NtwAN4
	3qVPvcYb7aX+CNpftH7jHaDT+OKn/yFsROQyzDMKJm31zKpDQGIbwtRmOmmRO1q1P9SRY5Joha/p7
	fYfHuUbB54JxwhjVnMYHdYHW53wqG9Cf8E56kCdJeQBeYm/BsaXRWD2sNJntd0DkSg1Okl1N+7WTs
	u4MkJi4C5XW9eSxX5TKxEVVDpbw/GapLGXKM1jjrjn82aacMdz6I2tYoI7krNQ414ZvR053tMIaxZ
	F17INKlS3XyBeAH48tQcNbjB5fP3qMFPWEizzHOskGi57WYE1e3FozdVADrhltVNpEUfbpcRr2TQg
	ZAZdEdmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tevgf-0000000FODZ-1d8Q;
	Mon, 03 Feb 2025 12:36:25 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tevVk-0000000FMhT-1NXr
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 12:25:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E60A2A416D5;
	Mon,  3 Feb 2025 12:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8399FC4CED2;
	Mon,  3 Feb 2025 12:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738585506;
	bh=Yy5ZhC9XApBt7e/QvLBQSPY6sVLlD4cP7bLWazn+hTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WgyFBLHkuVy8bN5kDhkP1EGbAK7ioccPHVyLC25mEIayv3DJK7Tm2uRsQq2Jh0fAa
	 Int2NvfquWUvgrFZzmX67B845a0Y8UBFyg7F9lNoSnr141x2o7Hovef8R5iaJkW14L
	 O8Mw7GQg0x3bUmkm8V0HFhTiojVKh8J8yYO+/SA0RETVXQghpzP8Z6pw3Yuc9w2wuP
	 O/+dKCQy4+GohyTHCsRFy49HyIbtiUwOfs6Pip5+i0hyjjmkT3KjAT7BRymP6hhhlc
	 +7Lo9yiSJ7ER7dh3tF9j6L7ovChKtZABgfMeLV3WJ2J1EU47uFYiskzBnfxrlg6XKZ
	 xHQ+uFN17i2eg==
Date: Mon, 3 Feb 2025 12:24:55 +0000
From: Mark Brown <broonie@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
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
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org
Subject: Re: [PATCH 13/13] ASoC: adau1701: use gpiods_set_array_value_cansleep
Message-ID: <a6e7f5c5-6dfa-4478-9a18-85d0897c7ca4@sirena.org.uk>
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <20250131-gpio-set-array-helper-v1-13-991c8ccb4d6e@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20250131-gpio-set-array-helper-v1-13-991c8ccb4d6e@baylibre.com>
X-Cookie: May your camel be as swift as the wind.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_042508_430953_036C2F39 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5888324781622585776=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5888324781622585776==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QNJzo4TIn39F+gZd"
Content-Disposition: inline


--QNJzo4TIn39F+gZd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 31, 2025 at 02:24:53PM -0600, David Lechner wrote:
> Reduce verbosity by using gpiods_set_array_value_cansleep() instead of
> gpiods_set_array_value_cansleep().

Acked-by: Mark Brown <broonie@kernel.org>

--QNJzo4TIn39F+gZd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmegtZYACgkQJNaLcl1U
h9BWNAf8CyCYjo0Xa7gTkGLLmI7BwVTj9VwAQiohEN7S8mXh4x6BMNsbB+GhBmqK
2cqPWAhXgBCR1kvmebge+UItA8kk9Hm/vKTZ2fJEuzIYpyKG6wVv65lqUDTGme3j
svxI492/g6DoPUWI/ZaK8PUVOqmQNjE+wky7xOZdb2eG5WFl5OwmCxNLlXogEngj
cWS5wNOJfsvcnrpTUwUP3HFFMEqmCU+KQAvQrEDnNEi5ad4AHR9kElX7nlTRNvtQ
CEboCfNuVvPxROZwWiizYuHZ920bL96QbtbAOiaXsYF5okR3tpwqkS07hsFyNr0u
JaOgDbfFUiICPW9L9H5h2OFYo5ZpxQ==
=nBtG
-----END PGP SIGNATURE-----

--QNJzo4TIn39F+gZd--


--===============5888324781622585776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5888324781622585776==--

