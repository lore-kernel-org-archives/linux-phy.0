Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA45ACDE020
	for <linux-phy@archiver.kernel.org>; Thu, 26 Sep 2024 16:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F7gSbl9Psc22bbc97dTDhpNdBJBhvT9mUS4J/Xd3ywQ=; b=hToTUowV51AGv16CS9Kw/OZwOj
	GbSEYibYmlhiWKh5nlzooY+iEC39j8NrIj4mh+MSBWcPaTG3Y2Q7e3DwXTeeR7+ingE80UxZkREys
	iaOoYZWr7/I53QHe78UzOZ2+J7ltRWJ5ZYPJBXjmnrOuchhklC5dpCYrMCLuETduhR/OczEK2nj6Z
	zRAFX4BW7nSQnaha/6o/cMEMupsRh86NGzxxgONqLvPclZ5pIXetS8dsNJOahJeF7RtN0SnizchnJ
	yU5WrFmebPH/T/T5zydcnbVwCE7MAUcSByoKu7dnguktahm/1iTC4YGJrtcaqHIRqsZi6SVddZki8
	zZVfB7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1str2m-00000008qLI-1ddg;
	Thu, 26 Sep 2024 16:08:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stqzx-00000008pyQ-3pD0;
	Thu, 26 Sep 2024 16:05:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F0252A40B98;
	Thu, 26 Sep 2024 16:05:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00FFEC4CEC5;
	Thu, 26 Sep 2024 16:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727366744;
	bh=y71oe5djBpgahISwwokUnuA5S6RXN8KO01tpPt8PVFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HLztfgLP34GBrSkn4a2ImWvhxujN3a8PG6cY8g+9hXQbte2MWjU1cMI1nPJKWggS5
	 xMy4KGxoYnzn+puUv102KhChfUXsv6GVz1pmiKqdNs9ZCxev1cJJcYZGvh8W4m9lm7
	 o5eEqeA2sWUK7Ql87U1jIhwAqLIIiT9quAREWFkiuf19xgq+k7Vfdnqe/L7B1cjhNv
	 Z4SLB5KqIBKnFgMqSR68V2GFXNZWON8CGZpGm2cLIHNZap8vALAnza80OxwLA46Gr/
	 ABH6wNviF5HBJ2qWE0H+M27T21HjDbtHYJPNr/i3I/Wux64RbQt5nmldlp7UXcmnql
	 BTsGV2mY++V8g==
Date: Thu, 26 Sep 2024 17:05:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: mxs-usb-phy: add imx8qxp compatible
Message-ID: <20240926-avid-underwire-b10f52de08e0@spud>
References: <20240926073951.783869-1-xu.yang_2@nxp.com>
 <20240926073951.783869-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20240926073951.783869-2-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_090546_043763_EB3DDB0D 
X-CRM114-Status: UNSURE (   7.12  )
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
Content-Type: multipart/mixed; boundary="===============6275415353083678574=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6275415353083678574==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NidS9fCP2a6+3gA+"
Content-Disposition: inline


--NidS9fCP2a6+3gA+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 03:39:47PM +0800, Xu Yang wrote:
> Add "fsl,imx8qxp-usbphy" compatible.
>=20
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--NidS9fCP2a6+3gA+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvWGUwAKCRB4tDGHoIJi
0tZjAP45pdp1VzjUVWwXfkqpFjscXqBUz+cV53iFA9/9oJLXHgEAnFqhV/mBKLeG
spjqaMm7fRaGBcEtBx+Lq4NITSpVmAA=
=+la4
-----END PGP SIGNATURE-----

--NidS9fCP2a6+3gA+--


--===============6275415353083678574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6275415353083678574==--

