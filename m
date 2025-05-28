Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E13EDC5AD49
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 14:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ka3gQkYUsZv7akn27yFbCvMENLzvMwnnt1as26dJti0=; b=BBAn3BcsyuQ+pPmqehefMVc4pX
	H+EHAlnLYeYmNxj2S1TJVBIhhUPncmGkEuPJKAKIqmqwDt3X/eHykqzQE++wBFflvGHwLHF13H2h0
	sEL7RTtH2HBuAEquAjtfdQE/M7ISQz+YIX2WTXpZw1R6IztEQogm/yYvBF2qPTK3TMvUe87ycKZfd
	3g4aBC9NFmK/7NdXJg8s3Wt+zCv3U428r2yDrL+CJXD4V+I/b7sn7a8LcLP5OA1Sy9K05tRCJlagp
	YnE6JYXQEyIPG06c/ga8l6h9CmCPMuageyCqlv3/R6m+uXuAmx3K68Z/MRkRzAilFHEMi8eOpaJw7
	xFZBK5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHQ4-0000000DK0S-2np9;
	Wed, 28 May 2025 14:06:12 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKH5z-0000000DHFc-19a4
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 13:45:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43E2FA4FA0F;
	Wed, 28 May 2025 13:45:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A64CDC4CEE7;
	Wed, 28 May 2025 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748439925;
	bh=YpI7VKMUnaWy2OYCxLRua4soQ2wih1E7n3F4O5SEpHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q8Fh4VjZflZWOyDxuwWeoPAWKpSMpoQGfH3d/UzptDGO0ayaOZLubXxI9zBphBWnx
	 3IpJaRKCInlxC7w0dzWQwiDw7+DgyZ76zNjiWE6gqVOy+aI6U1AJxjIyxJ1045AKr4
	 acCGwsvoMUp7L3GGl0fkMZozYOzzXjgr6tH8iiVaz/An2AT5aP6Ekneq8wJn9mK1t4
	 3CW2M9xJGTyL/iPKHgieqkmLhULPwa9mXsEYCYfv1BPmKnUqdLsyXp4WW/Pl2DLTQ7
	 LY9TXLQF3+6CIYnMES03m1DTM4CM3UOck4Vxy0w7Rk9bxWtIJlDWTAzMKt0vaOQYsi
	 /vuUCecnjrf3Q==
Date: Wed, 28 May 2025 14:45:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2N SoC
 support
Message-ID: <20250528-taekwondo-selector-997da403fbed@spud>
References: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_064527_375167_0B186624 
X-CRM114-Status: GOOD (  10.83  )
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
Content-Type: multipart/mixed; boundary="===============6464577797456251870=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6464577797456251870==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x5utOjCwDC7uVpEq"
Content-Disposition: inline


--x5utOjCwDC7uVpEq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 02:38:58PM +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Document support for the USB2.0 phy found on the Renesas RZ/V2N
> (R9A09G056) SoC. The USB2.0 phy is functionally identical to that on the
> RZ/V2H(P) SoC, so no driver changes are needed. The existing
> `renesas,usb2-phy-r9a09g057` compatible will be used as a fallback
> for the RZ/V2N SoC.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--x5utOjCwDC7uVpEq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaDcTcAAKCRB4tDGHoIJi
0jO7AP4pKes/qNTY9Yn16W/MygrNIOvDmAvPi1ZIGUZQOZHyiQEAowAYXVSdz544
hd3YgUOaEQLB6HYBhRVH2x/O4XH+bg8=
=FbES
-----END PGP SIGNATURE-----

--x5utOjCwDC7uVpEq--


--===============6464577797456251870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6464577797456251870==--

