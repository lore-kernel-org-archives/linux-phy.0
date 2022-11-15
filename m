Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87818C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 20:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R91yy3I9/e6hXosM3AC1GJMKqoOHXulVsu+DoFiBN5U=; b=HdQYLxTLCNEmfrQTsCDZj/PVIB
	YE7USU/HfbA8NIEytCkyW4VUEZstX6EqSJKoHVtpNkkx2YCEOnEKpOiwCwY/Hud3DUfmZycwA5UnK
	4AEzo0LIk+kOmMYOPWi8CiIKIQphpWDTC0DBpWeAzA2KoI5ODaPtFfPszEcUhefsBB16S8LIM+Nk6
	HsIq6w14MGpprHIPUA8EK9rvc4Ph1dUBY2Tkw/sjiWA8iYvEYZwnlcVe61ZYZu9Q1tGr1Mj1dSxoc
	sx4Hz6CZSxwGw0QEYCm75pk6bS6LVs3pi869sIuCUnbhHEmZDNOvPCEqsiKYfCbWS/kwSdh7Jo+Sk
	twl0H92Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov2vV-00El7b-Sx; Tue, 15 Nov 2022 20:53:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov2vT-00El6O-0u
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 20:53:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 22B17CE1721;
	Tue, 15 Nov 2022 20:52:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8640C433C1;
	Tue, 15 Nov 2022 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668545574;
	bh=gtMPyEkqYSiyJe2RYdzhMkumSicvTGNTRY9z5emGfTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T2k58gdPz0TNoqraxpTv+OL5+TuuxkSRMk2m7GVUYSFCa1YbI3Kx0FibpXvtI/+f+
	 ZbPAplxikkhYRjfKHmNJCHCjJu3BQVDe5EEBKDvM8io3An4OdvkvG2z6SfIDS49I8C
	 QmFYzItwSEqGHGlgNvCkjugyqAt+O28ltdtZOBBlthAm9ZF5zbiY+SJ4cyXHm7yg00
	 8+N20O8Op7FWJm5BZDq/mZNcRSVQjmI5hogBAQmc7dnhexl76+ldGiKupnNLGVNcPD
	 wDDxHSGi2Mh4roWMGx5toX229luaPJxY7Z+3Y84Gdwnas8zgvqX8DbtrCWs0i8m/LG
	 P6lEUdifAK0RQ==
Date: Tue, 15 Nov 2022 21:52:51 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	jonathanh@nvidia.com, thierry.reding@gmail.com,
	heikki.krogerus@linux.intel.com, ajayg@nvidia.com, vkoul@kernel.org,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 07/13] i2c: nvidia-gpu: Add cypress,firmware-build as
 a well-known regex
Message-ID: <Y3P8I9TrFYFmfTHY@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Wayne Chang <waynec@nvidia.com>, gregkh@linuxfoundation.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com,
	heikki.krogerus@linux.intel.com, ajayg@nvidia.com, vkoul@kernel.org,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-8-waynec@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20221114124053.1873316-8-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_125259_467317_29D02F14 
X-CRM114-Status: GOOD (  12.04  )
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
Content-Type: multipart/mixed; boundary="===============6183499742203610447=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6183499742203610447==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GcWtn7TlKaEtNCAY"
Content-Disposition: inline


--GcWtn7TlKaEtNCAY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 14, 2022 at 08:40:47PM +0800, Wayne Chang wrote:
> ccgx is refer to the cypress cypd4226 typec controller.
> add cypress,firmware-build as a well-known regex.
>=20
> 16-bit value is not sufficient for descriptiva names.
> Using string instead of u16 to make it more descriptive.
>=20
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

I assume this series goes upstream as a whole via some tree. So, for the
I2C changes:

Acked-by: Wolfram Sang <wsa@kernel.org>


--GcWtn7TlKaEtNCAY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmNz/CMACgkQFA3kzBSg
KbarLBAAioFwGEaBlz4SL9lEkJdRJkgaa9HxYO8RHVbGnlt1NW6bEOfp1ISWF71s
OjoMfvEJTCw0+rEGB7oyH0DC0j7R3Z0ofrTPoN69bWfmZSW4MRtJX1ZuKbQixzvJ
8SpCFir567TfEuejruTihsmLPhx/cX+kxxdFxxV3MyyyV/TeIxbEKxFIFTezXTJz
OB+xBF7+4lqf9IwJK/BlfQAi1BlSa+5wzZOGr9HlXhOvcJj9pFfbnEg0E26U83A6
uE1D6Tj6CfbiACYViOVoeeSDS8jQe5qvkd6QPLJ93ifJ476yUiqvqQq7vCRTEitB
wAnc4jJrap9m61f+Up0IbrN4KB+JW6qyXtcBQs8BoIoFVU0krkj56clZhX0oZXg+
mQYmMR7e+ZCcE7zraHPGKtaylkXBKvyvvClBofbhN4DD/mpFsuS7Wcxrb0roKe61
h1imRVZLdAB4LyS8h4MbOXdLvHQ+ctIH4bVX6akT13wER4cuTQT/cVLNupZU8wBa
THnrohQkVSOsDwDEumN9Wd3uncCstaeCLKd4S1phaOVvJh1L7cu5IbLUcU+LEPHM
D7BBLYF6J8AkU9stjB88NJlrUGjq7fuahIc8IhrWizacTvsDov7ml7vc0+0bu1HS
RdJxdVre7m/lS95qUM08G4JPdAjk514OvpZB4wIQOhk/ffmjtIg=
=0+Ea
-----END PGP SIGNATURE-----

--GcWtn7TlKaEtNCAY--


--===============6183499742203610447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6183499742203610447==--

