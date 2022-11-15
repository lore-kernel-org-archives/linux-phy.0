Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1767C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 20:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a64MJGoytWZr3ZwpZKW34qt5WBbB8Q6j2AjNbVr0Dh0=; b=Tw1JAdfXkYhNhsHUCyQe2wMPCX
	Tub5IQegnVrjanhbqh3rf1+xbotQZcE3oR6n/uLNt1BH034+BukzNj/kxgm8RQAGLM6iuaZFCF0Rn
	UmyArM2mzzA1jOK1te4+wX/+d9mG0ZVaKzblByIobc2il7uqTB4se6y8qac97M5OfahfcKmI35+4k
	F1Pnfe9T+UidAy1BCc0G+BLprGwHuwYI0uG1ogqEUZ2QI3hdK/7cYg3W471MM4Ex8yTV2YXkkTYsK
	zDJ7psqTzw4qq1LwJz/ezg7d5pQoe2jdGOdU1SMcr5q7uaGWjNoyzobPXpozamGHibPxzkWhs/K8h
	zycyr7AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov2vh-00ElEB-5j; Tue, 15 Nov 2022 20:53:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov2ve-00El9Y-11
	for linux-phy@lists.infradead.org; Tue, 15 Nov 2022 20:53:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 87073B81B66;
	Tue, 15 Nov 2022 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D17C4C433C1;
	Tue, 15 Nov 2022 20:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668545587;
	bh=xix7qGSZe5Jl75liUDWPNa2To8YhX6K5xaN0+29LycA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jcDE2u79xGa6akEBQHAP2LtAacwlyFZb5F4HipKkJeJeuB1MqKyXax3PL2hQPbFeP
	 nD6ZFhNWF00ECB6W6BDZLFXWoHz8d2gutvXa4bViaMWE4P29JI850znFObL3lN3h/n
	 jeikIwf3Cst6L71l6BcgVxjIk9Bg8mLONyQ9h+I4MAM42ZTAD+loH7HUyz0epbXBXI
	 3HxribkLH0DdIKjoQ4FuuuJjvrxyLZSIzcGUMZJGJJ6tZLEphQPQniy5awO24DOPpA
	 LFwjQj97bBiF44JNZPUZ+qrmmypneqPmQS7uEVCODFHAPJcuWQoy4HNfLt1cvEAS2n
	 Fvz3O/SzX20Jg==
Date: Tue, 15 Nov 2022 21:53:04 +0100
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
Subject: Re: [PATCH v3 09/13] i2c: nvidia-gpu: Remove ccgx,firmware-build
 property
Message-ID: <Y3P8MNxuGnsUMtCy@shikoro>
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
 <20221114124053.1873316-10-waynec@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20221114124053.1873316-10-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_125310_236195_B0496C60 
X-CRM114-Status: UNSURE (   9.90  )
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
Content-Type: multipart/mixed; boundary="===============7826858796139256002=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7826858796139256002==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="P9ojcTZHksKM/pfV"
Content-Disposition: inline


--P9ojcTZHksKM/pfV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 14, 2022 at 08:40:49PM +0800, Wayne Chang wrote:
> Remove the property ccgx,firmware-build as we have added well-known
> regex cypress,firmware-build.
>=20
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

Acked-by: Wolfram Sang <wsa@kernel.org>


--P9ojcTZHksKM/pfV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmNz/DAACgkQFA3kzBSg
KbYXCA/+JyumlhvdQelQ+1dRI1Iz7WsTCLrStJKUFlyj8JcxlGeR9Rg9KGjpf/Go
/7VhPqydV67ZBElkxgagTg7eCqDFu6kQo2AYURxQaT+oAOtWkCSGXeeaIxpUNBxj
PHJ7mmGmzTDsz+xRyNvYXqUYHBvXiCqz6ntnAz+DWNuah3wGPlBzVPlNWSPAwG4b
v0w780R5psx2pUSyNEwVIE3v3TrdG3BrcBpvCDycKx2ygAkKSvk9tvpn+8iAbxft
MUV6zvugS86t1aBQfsAE61Jhjw0pncaAW6GrfKyzU0kUx3mMQEave8f7kqmoAdap
+0EWOQ2yIwDe9dwRw2o3qs8XIYJDMmSboDmyyblbPnUJJo9wvcuY5D56ExVXyKs/
KXR+VK1aJCVS6XLKI5LnlO8H/0dSXgWgQpU5WqJ0uXo+t3l45NOgWZI64yOW15D5
SZJWKbJu4ULGAOr+hEcs6UpdVaREQYZmL7WqOGXsEJonxaw2j5GkKblVsIrASsma
JESKRN1iN50Omv5BdRTaw7meu+2N/cyDzoQrWsYXPga8OFVOtf9oi/EjxbcuEh16
2cmct2z6TSMuxr9DwtEMhZrFMdruSZrVYZevqBv3zni3yf2SsBjLX6s3eqkqK3FK
FdbFSaNvy63nDBJm+gXLpTqROtadqtcTLqMNmhc5EDzXjlN2v1M=
=XGbU
-----END PGP SIGNATURE-----

--P9ojcTZHksKM/pfV--


--===============7826858796139256002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7826858796139256002==--

