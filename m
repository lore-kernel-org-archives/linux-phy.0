Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E212D3ABF4
	for <linux-phy@archiver.kernel.org>; Mon, 11 Nov 2024 20:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BJj0OuUuOC6W/D5CP66fJMOuLE2eaSBBbGZN7ThieTU=; b=pQeBcDIvvA4fMFs6QAR4T99La5
	m4DGahaXe2i0dxEglzIZ/QczQiUP+3YbkRTQuDFsl7KUyQ8/uo5s8MJQzB3e0Xe52cts7CF7NVTVJ
	b6uita1kRfQB++WMF73aB3rjWiTz5HYzpl38h5PXUEqR9SN/dwKgw7L2BpPwt2Q3SXtkpMjRGHQav
	ryyM4HvdSJrTNWJV7ZWbw2HR9Y4zYMK2Df+z0a/IdYFp3oAmKSzqTmbmgpQayo9banb19KhhUy8oc
	WzzO/ez5RlybaPd7XBNyB/UKdySosAUpiom8WtRWqLYogr6ZCOR5fyJFYZmhSFUX34rIAWpUjMxS+
	XuLSL3dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAbNF-00000001FKS-0MwE;
	Mon, 11 Nov 2024 20:51:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAbB5-00000001DaK-3WP2;
	Mon, 11 Nov 2024 20:38:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CC811A402AF;
	Mon, 11 Nov 2024 20:36:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51D9AC4CECF;
	Mon, 11 Nov 2024 20:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731357506;
	bh=TNNplGwAI8gh0I5Pqtu6RqhbXECKQS6cRoMzXUn4TS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cWXc5pWhqQbWp8jIQB7Mdj+ZcVrD+jybfBmPAu+aj1vN288Hz7eG220SzV3k4AM0d
	 USqPCLYyuEIHKJEqd9PVuvfKLkCFYfj91Js+jqOVLf/6WUXyJNY0Cd1PIS8JTUD9tQ
	 l40zZ/FQPi1/TVlvx9x1T2+vCh109aJI6ZJF74mpIyraO+vuJkCtRkvVEoVF09/IZP
	 NYRipAmSUc+URcHSkJC3zcSrzNAyaZ7L/xQi8HxMmeYbdfY3PPi8XICP1yhpD5vBwm
	 V+R7qcuJg0eJ3Cg3/ZR53uA4yO/YJFEci6s3xUM/wIrsClEXkwLB9fWl2SmWSKv893
	 lkoxVkkrTcAJw==
Date: Mon, 11 Nov 2024 20:38:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 07/14] dt-bindings: phy: document Allwinner A523 USB-2.0
 PHY
Message-ID: <20241111-try-wise-ab60e1e488c9@spud>
References: <20241111013033.22793-1-andre.przywara@arm.com>
 <20241111013033.22793-8-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20241111013033.22793-8-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_123827_965228_BED817EB 
X-CRM114-Status: GOOD (  10.49  )
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
Content-Type: multipart/mixed; boundary="===============5471289864222468989=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5471289864222468989==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dPZZt7w9L6VIEeoP"
Content-Disposition: inline


--dPZZt7w9L6VIEeoP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 11, 2024 at 01:30:26AM +0000, Andre Przywara wrote:
> The Allwinner A523 SoC contains a USB-2.0 PHY fully compatible to the
> one used in the D1/T113s SoCs. This PHY controls the two USB-2.0 ports,
> there is a separate and quite different PHY for the USB-3.0 port.
>=20
> Add the new compatible string, with a fallback to the D1 version.
>=20
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--dPZZt7w9L6VIEeoP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzJrPgAKCRB4tDGHoIJi
0tMhAQDL5lYdoIVI+tyQ5e2LO0x+cNYTehVUHu2f/hlo/r/sBAEA9EHYEDD2CXif
jOL2MOGtJY1t3gHVTDKPuJvnSVgriwo=
=da5U
-----END PGP SIGNATURE-----

--dPZZt7w9L6VIEeoP--


--===============5471289864222468989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5471289864222468989==--

