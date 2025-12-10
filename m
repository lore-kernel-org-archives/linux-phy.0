Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F89D3B9A9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 07:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vjVocqxv1Fc9FlUZ5NOgG/0fv9RwmVrcOXFdaHv3Vag=; b=3NHzi1qIO4D/f4QOJEhtdgk/Yp
	eoPKzPCyE7t/td5+E/Drsj7W9ftGt2UtQ4hpu6iOBzyipTgJb4zGeoflVME6/fMUR9gGuPn/My3Vx
	IczQdL0Uygzw9PVWY8WB5J68cYO4HLidlI0QPiLqyj5H3GAdLQ2fAuEGUMksq9vd/nfGINTiVqZDl
	8dliA9Hg3ICOsvaYLErbhZ/qHYfjvP827DW3AZyBHFbtNCFxuzDf6YO1J63533CXXxk/zbEmpkI9d
	8BxzpnQ2AY+Inb44+GytBGg65aP2WuK8n7mrQqNAlAgb4a/kqQ+4mF5pIX+KuUc3ngutpAM9pHxAf
	JnFE7kvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTF0m-0000000FDeX-0337;
	Wed, 10 Dec 2025 07:53:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTF0j-0000000FDdj-4AUo
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 07:53:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vTF0Q-0003HH-GJ; Wed, 10 Dec 2025 08:53:02 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vTF0O-004uxp-1R;
	Wed, 10 Dec 2025 08:53:00 +0100
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 150BD4B3A9F;
	Wed, 10 Dec 2025 07:53:00 +0000 (UTC)
Date: Wed, 10 Dec 2025 08:52:58 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
Message-ID: <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_235322_036851_2F54BDD4 
X-CRM114-Status: GOOD (  12.07  )
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
Content-Type: multipart/mixed; boundary="===============8581178229945275722=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8581178229945275722==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e6urrv5hrowjmz7i"
Content-Disposition: inline


--e6urrv5hrowjmz7i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI
 TCAN1046
MIME-Version: 1.0

On 09.12.2025 16:21:19, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
> dual high-speed CAN transceiver with sleep-mode support and no EN pin,
> mirroring the behaviour of the NXP TJA1048, which also provides dual
> channels and STB1/2 sleep-control lines.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=3D176529=
7159307&ref_url=3Dhttps%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN1046V-=
Q1
> NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf

The polarity of the standby line of the chips is different.

You must set the correct active high/low property for the GPIO, as the
driver uses logical levels.

Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--e6urrv5hrowjmz7i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmk5JtcACgkQDHRl3/mQ
kZwxIgf/eUDLIjC6LBRgFTzonAO1ySjcSPxz5b68r3lN+Fvh85PzhF0hjQKy4rJK
y7IitOQcsYbNWhT/Fb2hQ16upPZ+OMz/TLTN5T7KL/aNCELTfXZ4byV7yklI/80j
til6mvAf5f5XLEKDUhGZyhU5tCBYjzm1VINTonZjS184Aonvgm7yOX6KoeDBPfkj
Uq6r7R/d2Sf5lQnyrElepWAb6no84OrBbO2uo7cHcp/xSOhjFsXo6usk2Xf0QJWL
XywgDNwNbmmqSg1T8Svsq9hSiG+Zpd73xpCxUmxC1sbtvxNo3ktlgOvBW73mTdwr
VllmqGd0XH9U5dYp6Con58PNS3VWGg==
=IgJz
-----END PGP SIGNATURE-----

--e6urrv5hrowjmz7i--


--===============8581178229945275722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8581178229945275722==--

