Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7E0C54791
	for <linux-phy@archiver.kernel.org>; Wed, 13 Mar 2024 06:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mtyx5PnwbVYp7RtgmXgqW7w45TWTVJAWgSWubNKbGtA=; b=4h8pljal8qpwzViYQQ2DU3g5dA
	Uv27ZoVwVXGH+fcT2P/KdEa6W6hL+KxUcDZrLxWxHAefp0IJIqKAaOwA4WQMhJvl3ZIMI9BZgwaB1
	UZ/vxK00GLbeetSqMS25cuGVYoPGSPhsefoepQc5RXmjiaJPcudB8T4+ujcgrv9EA6jw7NUQQBgVr
	8FgGFJths43akNIMlEFGy91aYd/LNYRRj+2IgSPC7eo7ZzeUdRZPU+ltoMfYkmovmMCeJA/QqO68M
	JGafTkY7Xv5i2kLNJSx5C8aUdwtY2MPOra2kKxRJ3qBnhe1iFB7SaZcEzXgZ/Bw1nzsrDwqmy6guZ
	lYNGGEAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkHzU-000000092gQ-1Rak;
	Wed, 13 Mar 2024 06:21:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkHzP-000000092e4-0u4k;
	Wed, 13 Mar 2024 06:21:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B2DA6CE1A1C;
	Wed, 13 Mar 2024 06:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D745C433C7;
	Wed, 13 Mar 2024 06:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710310880;
	bh=Kf6Rjwq8Q1L9x0D8vIvoKvL60yatJLvjveDYXD/c7gA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NtNihdWSavdZK7WJ7rW+uC0ywk1ZLKAmigCAUwxsZUA4LOLM8E2g9JQHQ7y+PfFbI
	 U0j5+YurMymB4TupTy0krDJSIOzqf7MwVMT9jJ2ra12uNhkeL6/N8w2RNBB9M85q57
	 ACmkvUktWcH+tJoT/qE1BSYU1gbjxP9cpIUop7/6hX+/JRi5HmH6nEI5KJuWgnEo9t
	 YQ0sbFc6L4+F9uWBR0jjI5nNJBCGj4t87pVTLEtwOqfN+9s/rYLUVkYAe/Av4Ybxx3
	 T0SySpLc85/Kd1g+opSMUY6oPyCZl9fT7H0LJykOUzxxKF54al5+FxVFTl5ltlCSiI
	 o9KtJxRkR1xIA==
Date: Wed, 13 Mar 2024 07:21:16 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Tony Lindgren <tony@atomide.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
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
Message-ID: <ZfFF3LpzesdwZH2t@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
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
 <ZfAMT8CDW1VKW0qR@shikoro>
 <63oaudxrjdqredpbh4rojcpgjh5tot2tx2gs2kpfplwgjmrluw@f3x2x5us5hw5>
MIME-Version: 1.0
In-Reply-To: <63oaudxrjdqredpbh4rojcpgjh5tot2tx2gs2kpfplwgjmrluw@f3x2x5us5hw5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_232123_625671_B64A3A46 
X-CRM114-Status: UNSURE (   9.81  )
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
Content-Type: multipart/mixed; boundary="===============4194790702651451154=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4194790702651451154==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5scK1x9kjxT2H4q5"
Content-Disposition: inline


--5scK1x9kjxT2H4q5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andi,

> Agree... but who is going to take this? Eventually I can just
> this one.

Usually, it should be stated in the coverletter what the suggested path
for upstreaming is. If it is not, then I apply my gut feeling what
should be better. With this series (and seeing that there are no other
omap patches pending), I assume some other tree so I ack in advance. If
I am wrong and should apply it independently, people will tell me at
this stage. That's how I handle it.

Happy hacking,

   Wolfram


--5scK1x9kjxT2H4q5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmXxRdcACgkQFA3kzBSg
Kba8phAAhAo3TFrjiov9KU/9ImhFn6FAJISY+9pjqIRBEVJVf+LM/ky3QcorHKZI
dMtQR+V1gj8en3ZBi2oZSQB3VW8Ije4evX/CtxviumW34i1cH0NyN3dn0WLrTwb3
Le+u1d8LSRIO+hIHLpRQ3WuRfk5TEI052bHmSJINKqh1TjHImKIn+niRruR+cb77
7KNJwqPjFu1NnLgNV4nP56Jwh8wRO1oUEZrHq3st3yX3c6sq7oNovYoqenFtiNjt
SkpsuJupYCYob+sH5b2F+ZhtSMSM0C7JvLk7oQSxuEJ5UeIxuDD1u/zhMMW1AjQ7
c+f/y1SEeSQkwHt5ywEEYFxuHgQNV/YedJwFDT4j/U5kWL5dT2ZEslZIao+y0gEt
f5ktqsPVeYCWDVZL56I0kNNDpJiR78uZxuBk5YB7VXLlihnmNVcD7cNYhRecU7d+
gv1A21XSiCZLXK96YS9PqBKODRY5I+yqv2geNBOEW4KJvacFR8aQ9big1Oizppgm
RYyHdnbkrfAUHU1NrVmYsn1kgboUxgi0E+mD0bImSXEUW/G1bHofOo+g2ccKSdXR
jFlvQzck0qQQuxJCHlOTlTGZuqKVIkZ0x8ItqMQkSSP9GXtICdDWrl63V6+Yki5a
josi4NEL739wHNHZDYyjd8wyR+CkkDsaQBH4eLrBYjOdyCvNybU=
=jpCM
-----END PGP SIGNATURE-----

--5scK1x9kjxT2H4q5--


--===============4194790702651451154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4194790702651451154==--

