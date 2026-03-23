Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D52A6F483D7
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 19:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z/64GSB6ZSbk1JBENWvIcCbcdiZlVbxJQifXy+vfRMA=; b=saqidA10V+RzXm2k5yv1ShDmgY
	YXJLuiNF5/rIqTAgA77YPfIJH2c40LqlrdrxfCQ7KPzU61P3xSIuysFaKVlvLyHoQ66krhk14gMzr
	JmOai6wDcHIOva17/15A2IGxiOgvuQuLTSpbdc1wiZipsc6ZgwPHUd7YyuwAPhxufDN0BxZVS09Wi
	2wIwiZ2mNLHaDj2WMW8R/LTWDP7V8APf6vbOazKLatb8hJglxkoerMW80t+6d2t/HEA0dhXU9Y+Nd
	TKgN4W9cGDpFtGyEgIEMxeWY9RHXxdCKxXLCzd8ZdIVzx2NzEsHoIAhdYFtR0adOyUDWcATO5sfwA
	aELFnElQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lPs-0000000HWjp-1pzL;
	Mon, 23 Mar 2026 19:58:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lPr-0000000HWjd-12vE
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 19:58:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 831C8600AC;
	Mon, 23 Mar 2026 19:58:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE3FAC4CEF7;
	Mon, 23 Mar 2026 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774295902;
	bh=kyAdyLIolc1pNRtfh868lkR+JbIUB6zZ7QrqvXFofdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BhjQuV1rlQNkZRRUPQzUEHiGemWYvxwGUUwFprKqnvBZvIVTyWQFx/DOnFVIztija
	 MPlohAzCjzApu8WeTQ65I+ChX1qkWiXY+NloB3CFncACPeKUJ9gqzBaA2TFhUC7F+C
	 NpydNTsGaSMtNU4c8nF8vyTGUWBeM3DaxWktWG/AOE56ayJaWV86+Qew9HjiLxGE3O
	 oFKgs43bcPf7uU9PNgRmuAZ+JSQtjSEap6fY0IgEPbaCb8GVdrfbDqGGikWzJqpeIV
	 G3mOwk96C6MmV5G8nHEUJRfO2O3dtJ2tBzMu79ygfRL6PVYmWQdiwfk5xrU1bcv0WF
	 UGpTukMnf4SjA==
Date: Mon, 23 Mar 2026 19:58:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <55abcc68-747a-468a-abdf-b6340d658c4f@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <acGWJf1AGXT1xduM@google.com>
MIME-Version: 1.0
In-Reply-To: <acGWJf1AGXT1xduM@google.com>
X-Cookie: This is a good time to punt work.
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
Content-Type: multipart/mixed; boundary="===============7125125953083965781=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7125125953083965781==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O4OhYRZFw2wrFe70"
Content-Disposition: inline


--O4OhYRZFw2wrFe70
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 23, 2026 at 12:41:59PM -0700, Dmitry Torokhov wrote:
> On Mon, Mar 23, 2026 at 07:05:13PM +0000, Mark Brown wrote:

> > I think this is a worrying idea for core code like this, we have
> > specific firmware bindings for specific firmware interfaces with the
> > different interfaces having very different ideas of how things should be
> > modelled.  The chances that firmware agnostic code is going to do the
> > right thing seem low, and encouraging the use of generic APIs that might
> > happen to run OK raises the risk that we'll get firmware vendors relying
> > on them and leaving us with a conceptual mishmash to sort through.

> Firmware vendors can introduce incompatible DT bindings and have them in
> their devices too and we have to deal with that...=20

The case that's worrying me is mixing the ACPI and DT design models in
one system, and especially having that happen to actually work without
modification purely by luck rather than by design.

> I think if this pushes closer ACPI and OF schemas for at least some
> subsystems closer to each other it would not be a bad thing.

I think we shouldn't be encouraging people to just throw random stuff at
the wall and see if it happens to run OK with whatever OS they tried
booting.  The differences between ACPI and DT in areas like the
regulator bindings are fundamental conceptual ones.  There's some areas
where things are closer and it winds up being fine actually, especially
for leaf devices, but there's others where that's less likely.

--O4OhYRZFw2wrFe70
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBm1UACgkQJNaLcl1U
h9Djrwf9Ffmb+F+09voA/X0mCKzR62vN4Kz++KKsVLf3+BEctfWovkX/itnqcwhx
s9V5mECd0QLrKeSG5E/NNmFrjJz3TliTHZSab+DpflQbDb+EVvqTnwCgVF1g+Fln
vujBPEAADK/0xJILG6Ofvj3jmTtI4d8vr0yaG2zf1sxs/hfSs/H5md5+Z4hhXsuS
+aIRYxppLQmblj8oBi94jqkz95GHs5/eG9Xe7BmVRgnnkqRWbS2RmRDhmnPRG/aj
4k5BAgW89+EZGjNjNhZ+ssjenO27Q4qisrmpQunxMoi6FzdOUc6AhVo0sOy1Qj8u
VJtMn/EIAQUKnKtotxHlw4yduM3PBA==
=chN5
-----END PGP SIGNATURE-----

--O4OhYRZFw2wrFe70--


--===============7125125953083965781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7125125953083965781==--

