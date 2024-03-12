Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D501DC54E58
	for <linux-phy@archiver.kernel.org>; Tue, 12 Mar 2024 08:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oR/zbbLpoZFYtV/O7VYLH81QOPATegMNe4K52UulY4A=; b=gx+GPmtQVyC8iLX3KA4B3+9Th/
	a2orq2b+AjcP0xmkXHFumRtTcwDq6aq927KqcWnz3zMZJz1IVvQO/buQL2BaWRttsjRwQNTBgwMEK
	GzhYzUJA2sCm8qzR/cNB1GFtVepz+TwCi3TMYJmedlLIUH5a0NZjAbKQ8HkyISmRVoHQFbp8oV41s
	YF8hrA/g61vaVu5lRTAAAVITUW60hjFfg+h5UXUUBIqaKmwhy0Y1gYmovqIlFl4nCZXz1YT3r1Twr
	h7kmuZXVUGoe4qHnNpV63Kh2z1cbJ+Q8rqpJAvsG3YA9OpAaDYv6MZa6zsBi/tNcVY8uWi6jPxk0U
	c/B22MzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjx6t-00000004o22-1mnZ;
	Tue, 12 Mar 2024 08:03:43 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjx6p-00000004nyr-2fzd;
	Tue, 12 Mar 2024 08:03:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 67E5DCE12D3;
	Tue, 12 Mar 2024 08:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14D4DC433C7;
	Tue, 12 Mar 2024 08:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710230610;
	bh=7CSXkSa3VNcY7x9b6by6FO8IPWIdgHGiqUx6k0fKoo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GXWn4pMeQg4hJsAkIuEH/dvhu5T8dLwWVRrGftqgwMwBYiZl0C3puzKCtdzWFrN7p
	 gwR5tOBCsKepUM0L1+VQCxoLpLtMb6B+KZQl7ArGelO/pmj6hr4nfuvkGprlzZ3qmM
	 UeEfu90878dwAoUylCYtFeiih9QICuFvQ6UIISX3SRELBGMBKdCfjOTSXgP9M0jnpk
	 HmK5M6fp5QQhIVTKBncymtqYSzLtQlJEzp42lA1X9IulXYVq3/ffSL7iuQ3mSJ84hm
	 Ez7uopf+12pzCQL/d/3d60MrnRv9ZLk4k1/IvmKVVnBhuL1vt5xtdjT2l4AB7Bw4zU
	 udv4ffal4JQhg==
Date: Tue, 12 Mar 2024 09:03:27 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v4 03/18] i2c: omap: wakeup the controller during
 suspend() callback
Message-ID: <ZfAMT8CDW1VKW0qR@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
 <20240308084240.GK52537@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20240308084240.GK52537@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_010340_061187_DBB20FD9 
X-CRM114-Status: GOOD (  15.28  )
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
Content-Type: multipart/mixed; boundary="===============3248958270187542729=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3248958270187542729==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxnn2a5IXmQEXJ6+"
Content-Disposition: inline


--Qxnn2a5IXmQEXJ6+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 08, 2024 at 10:42:40AM +0200, Tony Lindgren wrote:
> * Thomas Richard <thomas.richard@bootlin.com> [240304 15:36]:
> > A device may need the controller up during suspend_noirq() or
> > resume_noirq().
> > But if the controller is autosuspended, there is no way to wakeup it du=
ring
> > suspend_noirq() or resume_noirq() because runtime pm is disabled at this
> > time.
> >=20
> > The suspend() callback wakes up the controller, so it is available until
> > its suspend_noirq() callback (pm_runtime_force_suspend()).
> > During the resume, it's restored by resume_noirq() callback
> > (pm_runtime_force_resume()). Then resume() callback enables autosuspend.
>=20
> Reviewed-by: Tony Lindgren <tony@atomide.com>

I fully trust Tony and I assume that this series should go in via some
other tree than I2C. So:

Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Andi, do you agree?


--Qxnn2a5IXmQEXJ6+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmXwDE8ACgkQFA3kzBSg
KbZneQ/+KWOJptPe830nsn7JfSUf3AOnK9q6xIxIiubJncJXVEeQU9CREDaUg9qm
bI/l+empAXTCyZjGwuEjah2mFlBcT1y1+hNXAPG0px0omBk/p774NjskL0zONP4u
rWQ6gc3Wl5cEyNBoZzUml+jdXYg8Ie2HL2Ymhxcpl4Y8bHiQT8WXyHdBDlD10hzK
Q7oKeMO4aaoBHrnb8GTIPJkm6XaYNJHV7fVwf/b8pzzajEYoRJasGIdhs0U4b2aM
gfC3C3/eTf035xZmqXvesTt0j3Kqbn5HxkcCG531iGpXUc6FthYKHHd77a46DwCe
pCzGtTo8o7ezUnYOdySYJic5ZJEChC795pdl4rsrHMRM5B/NseT9ieAIvisVS4Ll
mYQyCzW7jrhqT9A56/o+0rudG8LXs+b+MedNFDFcvCDv3LwWSt9imYDhvClKWMIJ
4I+rDBS0ONXz/PqMD77QIOtuILV85GvDrbrmFUSiIzP/LtbIpUaFoRBQFw6QSpKI
S3doeQqZayubO7DkMYhU4wrhSs5n6fKRHP4fr11VSclA8czlRuLKvm8vJrzmM5kh
WU8UXU/JXpUHdQz3GSbIcHEs5e3AJa0JdCN+4x+qgSI4FYH5rr+SFnqnX6qXXipW
+cNJyxzVT59Y4MQYLNhwXxa5FGwlKdOJuory0HQRv+qRip/+f8Y=
=P3pn
-----END PGP SIGNATURE-----

--Qxnn2a5IXmQEXJ6+--


--===============3248958270187542729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3248958270187542729==--

