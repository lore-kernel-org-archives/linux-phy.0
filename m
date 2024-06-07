Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8712C27C53
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 15:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cdMUbaIEOvkcDEgN9kiPmi/jhSzNhJEzjSIx9eSHMIA=; b=ACJohDIqdbp6pXGYzjx8UBleiv
	Df93jYglPP/MboGCW7Pg5KjipaLcPMASKCtHUjKV/hq6O2v5HwiB9qdWA0CSovP2Okyl4R29kozvX
	UbBdddVPmV0pOuQST3lQIqFwJ7YmfdHxIMgIsyvspuu2JGS1w7OGs22FsNQ7X1xlA/CfDZ+y0YA92
	z7bwSAYWMPK9pYhFdOC5hmYz5PfWgc4svpS+rTqNTu9ZDFUCSfj61wuzJ+nWvrnBfxfAKGWOtCW5X
	L/kDMFMPzQhxbH4vjoqC7v7OEu4iAxhiyQXjcq+hvPgeSzeDPyOZwZ1Szvo1SO7SW9Jn7Y5MaOubF
	vLZmn5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFbYf-0000000Eiox-0SWd;
	Fri, 07 Jun 2024 15:31:13 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFbYa-0000000EimX-2wRn
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 15:31:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 812B3CE1773;
	Fri,  7 Jun 2024 15:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18A2BC2BBFC;
	Fri,  7 Jun 2024 15:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717774265;
	bh=IIbPTH5Uj8/YQWGzpHSPL0ScEYzR8T8lKL992gm2TBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uNabSmtwgyweu5PxB/BpRJRcA9XYT1XRrttmfUcyO1g1y7Iey2E88tQLeq4gPyFN+
	 nt07kdvRhSOQ5Bp2VBBOy5a5La7kuVJVt90LD5EVHqTOShZ8YnMrAMdl6c2lPImQLT
	 SQFI+DyiOqJj0hzNgXeH52Qa6w4jm1HS96LfGNhHRbGnXr5cHKjM25e0OIFHBD3xTM
	 be1P8Q0YqgsQZUyxG2cS8vdeh2xB9WxCi82xg9k4WTSk4jJqzj+pAgLNwCQmpV3jzl
	 PGWhObv4UBdMVz3OgC/PNqjKO8tgzOJorHb9udy2d/250Zf4BP4VIvqtofgrQrU2uY
	 HeOxAJF5w3C6g==
Date: Fri, 7 Jun 2024 16:31:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v2 2/4] regulator: Add Renesas RZ/G2L USB VBUS
 regulator driver
Message-ID: <ZmMntvriR32aqI-m@finisterre.sirena.org.uk>
References: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
 <20240607113745.73934-3-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240607113745.73934-3-biju.das.jz@bp.renesas.com>
X-Cookie: Your love life will be... interesting.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_083109_019446_8C986903 
X-CRM114-Status: GOOD (  10.15  )
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
Content-Type: multipart/mixed; boundary="===============4433536903087129701=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4433536903087129701==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udQ3zrK5ASc6H/+G"
Content-Disposition: inline


--udQ3zrK5ASc6H/+G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2024 at 12:37:43PM +0100, Biju Das wrote:

> +static const unsigned int vbus_voltages[] = {
> +	3300000, 0
> +};
> +
> +static const struct regulator_ops rzg2l_usb_vbus_reg_ops = {
> +	.list_voltage = regulator_list_voltage_table,
> +};

This is an enable control, not a voltage set control?

--udQ3zrK5ASc6H/+G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZjJ7UACgkQJNaLcl1U
h9CssQf+JLOCnhzarGMUeGiWEeWYST/8aXioPhyPv1jeexOoc7SuLhV2fFLl8Wr8
/MaeUNqFkt2gK/Mb8czUYdEbN/IS6v2jFRdzVYiepgWPZydv8V4Jxf5lJ2ztXHxq
BdzhfN6+1VOSXqEyv4P+GRWiDeRrwtQu16DCsPCRA7Dh+cKRCRK9HMo215eZ5muG
VisufBOJcop4wFuSF8uRsROh/uF3FPDR19eWyaFHlrBnBL2adq5Fmw6XezvxhHlT
jT1xNrZSuZam7u5IZXVEqjagtSAamxPaCKbu1uoG4Rec4SWsq7xXtmC2G1iWokYi
urhOQJOwIoUlyCDyoEzsKOSwns8sJA==
=QQ++
-----END PGP SIGNATURE-----

--udQ3zrK5ASc6H/+G--


--===============4433536903087129701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4433536903087129701==--

