Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FC3FC87FD1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 17:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zG84uZYlMBG3SJbxUAGk4M4vQzgZy6F2vaWR4ry3Btg=; b=ezol2pPIF5fBeU+FU8bynE7UzR
	im0Li6MHsBjXzhKflH4fSkuUO8qXCUjXPZOc+/yUh7QSSVwgXIy6LxVpMmGR8OaopH/Wk3Awa50sa
	BKLgcL3PFCRoMwOIy+j50ZkscuRQUtl5ntXd99rZn0uTpCgHhvBVKJIicPnq4vhW5mX/2Av2vZRyZ
	xISLE0qh3+xWrxcdUOAs+BW+awy79DBuUskfz7Jj5jmG4Ng9hkLc0EbdhEMHCXCSj+XkTm7JPEIvX
	Il1LkGwZiKpNYvClhE0waaPA+ReAlY7LGCcr8x4F2zj5W+0urfBTAD/a6Dy6oNJJe485wtWYd0ZN9
	EFdOkJIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLga-0000000DSPa-0EHg;
	Tue, 05 Aug 2025 17:42:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLA4-0000000DO1h-3NEX
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 17:09:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2EC4744C7A;
	Tue,  5 Aug 2025 17:09:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B77E0C4CEF0;
	Tue,  5 Aug 2025 17:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754413755;
	bh=BiXWWnlklOTycyVkMhtWw6eGx+VQGGndhKiYBydUrcQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FWxSUOaMI4WrFLONGNKEtwMQT0NzeqVS8BR4wL3BcVBDReRaNUnKjVL4r0hJpgdVK
	 6+5JLYkpCL8aGyCYm1o/6HnJwMQ35AhLXbOYKMXXwVHEdTPgN62NawlvHwS78KkUzE
	 eBk60GhBNGtHSzEZa82T7vNTJIvwJJFft6M+dngs/78OOghnUwlStrsWeJFB8LKE4a
	 VZrOu3LohjYFgeSFuDO54LmA1OKxkc4/PEdDGMXbbN0vw8dbI7lgxI+v598s3V1zcR
	 XcJoX+9arDIQ7MZwlihTGPxCbJerIq559rDEIUqm7vQH1rsTmLVYzkwJIUHB3SH+vZ
	 kN+GQ3KdGXVLw==
Date: Tue, 5 Aug 2025 18:09:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and
 RZ/N2H support
Message-ID: <20250805-shifty-gloater-93e1744e38f2@spud>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20250805122529.2566580-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_100916_863527_4E9BC234 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Type: multipart/mixed; boundary="===============7352805965949249181=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7352805965949249181==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dbbV6R/wGD9GE9Gw"
Content-Disposition: inline


--dbbV6R/wGD9GE9Gw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 05, 2025 at 01:25:25PM +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Document the USB2 PHY controller for the Renesas RZ/T2H (r9a09g077) and
> RZ/N2H (r9a09g087) SoCs. These SoCs share the same PHY block, which is
> similar to the one on RZ/G2L but differs in clocks, resets, and register
> bits. To account for these differences, a new compatible string
> `renesas,usb2-phy-r9a09g077` is introduced.
>=20
> The RZ/N2H SoC uses the same PHY as RZ/T2H, so it reuses the RZ/T2H
> compatible string as a fallback.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--dbbV6R/wGD9GE9Gw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaJI6tQAKCRB4tDGHoIJi
0jROAPwML1c7LBdAHQaSCXLP4E/8cuHNy+Y0seBfZv4YTOcT7QD/WeKUs0MZOJ/E
aZMA7QNoYpQg5FGyerNNwIBJMVg5ngg=
=X1nL
-----END PGP SIGNATURE-----

--dbbV6R/wGD9GE9Gw--


--===============7352805965949249181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7352805965949249181==--

