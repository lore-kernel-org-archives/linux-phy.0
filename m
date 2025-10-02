Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A61ECAC5B0
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 16:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e+MunG/BnizM8o6cNOPw0oPxkMagtvRLxEKbRfffxoA=; b=StRyYXB6ZYNe5PS/r8x2+fMRMW
	qQi7+takpPiyWhmN+uGFzykmGq+IbFulYH8f9nbuQHeO1y47q8C0BeyyvevBdwlFQ352tqfmON8RZ
	bEmVKISgn2+zHUAVZXCgBg2AtghWlHOncMsKvhHNTqMwCRZ7gcdONswwldxfGWsF6VTaIpXU3Cerv
	chGsplQlsGzoqwAF39RPXSUSHRWJiEcAGe5OK+Hj7AhQbcuSRaCpsxRBOhlyZR0d8275fYuQEZXtR
	sQCUZqJeA7WafFl6FPhcn3hSwZYUuMlUw3+v46Aa43oYV2V5uxpDKLKMoUg4ous4wFAuF7Lpyg0l/
	HYTz6L8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4MBL-0000000Aptm-488P;
	Thu, 02 Oct 2025 16:29:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4MBJ-0000000AptL-0ejM
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 16:29:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A4E543820;
	Thu,  2 Oct 2025 16:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2EA6C4CEFC;
	Thu,  2 Oct 2025 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759422564;
	bh=ZdjGzAzswD18S4BdgOHHvvyUqBw7n9vpfh3cd3YKYvs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T6XkexEv43I/dUlxhbUjMlqGhiJ8YjzlcX2+eKh0oUV/6g+/pX9ViiWZ6gJWxQm66
	 Qa4ulO0Q3ADKuWOu9hzE/TGq+Tw+HG20P9kblRIsRACM7TRI/Yihz1ukZIkj+SOT40
	 jLaVFrbmWCVd/9RBRkBgeP3HWe4VIAgRphmodnhonuzpl9WItmzffCT24dHr8hg5ix
	 KyrayACY5D3kT5cXWemgcB4PB6aGsT8BYiuYKRxj9FIGSRvACMFNAOEkaM8k2Xssu6
	 WHFtIVbkYYvKXIWqlaTYIca637YDaPsTmZRZrOwcwJsgmqhr9JxkUQbi1MDR9e/6iS
	 vnOjKDMqWsr8w==
Date: Thu, 2 Oct 2025 17:29:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/18] regulator: devres: Disable exclusive regulator
 before releasing
Message-ID: <ae2701a5-8662-47d3-81fa-30e832600423@sirena.org.uk>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
 <20251001212709.579080-8-tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20251001212709.579080-8-tommaso.merciai.xr@bp.renesas.com>
X-Cookie: idleness, n.:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_092925_242083_FC459946 
X-CRM114-Status: GOOD (  17.88  )
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
Content-Type: multipart/mixed; boundary="===============3433245230525147859=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3433245230525147859==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i0yfqqcy8kkWDcUy"
Content-Disposition: inline


--i0yfqqcy8kkWDcUy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 01, 2025 at 11:26:51PM +0200, Tommaso Merciai wrote:

You've not copied me on the rest of the series so I don't know what's
going on with dependencies.  When sending a patch series it is important
to ensure that all the various maintainers understand what the
relationship between the patches as the expecation is that there will be
interdependencies.  Either copy everyone on the whole series or at least
copy them on the cover letter and explain what's going on.  If there are
no strong interdependencies then it's generally simplest to just send
the patches separately to avoid any possible confusion.

> Ensure that exclusive regulators are properly disabled when their reference
> count drops to one before they are released. This prevents possible issues
> where exclusive regulators may remain enabled unintentionally after being
> put.

The reason we don't normally drop references that devices hold is that
we're allowing the driver to control if the suppy should be disabled on
exit, powering off something that's critical for the system just because
we're not managing it in software won't go well.  Consider reloading a
module during development for example.

>  static void devm_regulator_release(struct device *dev, void *res)
>  {
> -	regulator_put(*(struct regulator **)res);
> +	struct regulator *regulator = *(struct regulator **)res;
> +	struct regulator_dev *rdev = regulator->rdev;
> +
> +	if (rdev->exclusive && regulator->enable_count == 1)
> +		regulator_disable(regulator);
> +
> +	regulator_put(regulator);
>  }

There's no reason that exclusive consumers don't use the refcounting
support...

--i0yfqqcy8kkWDcUy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmjeqF4ACgkQJNaLcl1U
h9AMAAf/a7/Dl+mOSWjlNwJXNN3O9dRt53M6R2nyZ1lFI1ywA3IBNahOsbu9H52m
IC6X22AbKWOS3PBZxA3SJzkNlA9x08/X1AKn+vasCb5Z33B/Ec5I8PvloSIYJrdu
HwJAhuAMOMa1nIvHSXdK7snlDRgwxMOsyEEOkNYFFFkGaLsmGiiTDe6p5mI05e6w
3rm6ml9GEaw4yt0OGhCCBDZd8u+e79hNi51Vpw4lC8pwMJi3YrpkXb6mXdXD0Y3e
6fwmNZasbMIC6CYxxJD34jT17tZ9edOo2lg29Q/BzUFm0wEBW0XVWdM/e4RsfM/1
H75apJLagMYuTi325sMN0jpzEyQ79g==
=zosJ
-----END PGP SIGNATURE-----

--i0yfqqcy8kkWDcUy--


--===============3433245230525147859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3433245230525147859==--

