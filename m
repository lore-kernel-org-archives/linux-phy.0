Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C2D0C3DA5D
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jul 2024 15:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Btv6qQmzewKfzeS6gsvQk4uOGQCgvepwlOK6nNrcA4=; b=CwOirCBqsW3OIJtPDb59sAFBRm
	Gl6WdrFElaMuVk/Y8X3YmsOfHMG8Yh0WI82eloVuk4aRj498WXMMpfMwJeEHDj2UwwDYAiyVGvYti
	jnno3Uz2mvytx1LJku+cI4VAGczuawubJ13jfXBCyack0JPGBM6bbhJKdGvDvK2TnPlAFj62/++qt
	SBWv1e5imIarp+nyXLG426kg5ZDgcr40zFLvC822RqfNG1p1O4rBoWZ2Lp8IO/aPBxyCPv2UwnNWN
	Dc+Y66M+1PtYwIG4KOn6zRpcqH9dJTB7ZTadaFxAUVSYuXfQan3BcnQyWwEt6+yA7Ikx3L0pZtcpR
	3z3ODxSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUpCQ-0000000327R-0BhR;
	Fri, 19 Jul 2024 15:07:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUpCM-0000000325i-2MOv
	for linux-phy@lists.infradead.org;
	Fri, 19 Jul 2024 15:07:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7CD3661C55;
	Fri, 19 Jul 2024 15:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1C21C4AF0A;
	Fri, 19 Jul 2024 15:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721401625;
	bh=0kZ1M+m/Vu8kSpyCAxR0eczQ1iZK8eRhY3vk9xdexi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yq1WWAyqtpfEiNfWpa2zFl6NlIDZu9EoJzNOKd8zCw7lp/yHNLi5Ean7UWplNt0Y9
	 04L1RRoydh/BpjSfTKk7t41XgkZunfZh8sFXZPL+Y1xjNvIGi4Fomps8a3AlyrnqCs
	 sfjisGLWU5JR2ugwoBoIYbCVeOopMY9cq8i4owCp+oE0xS+3EO4yMWFrAW4Ar3X/KK
	 kDcQS/BW+YiAIShNpI0ftDFdvcuC5UsZvCWfRyjXxqin47jbPQLarKaW+Z9QQaXNUh
	 RCV9pC0HpU/yyiF9ecFN5A5DVn6qie4XIu+4qhAUp7ESMO6gwKF+wSbzsAsApcHjKE
	 M+8j298OiespA==
Date: Fri, 19 Jul 2024 16:07:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: mkl@pengutronix.de, mailhol.vincent@wanadoo.fr, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	a-govindraju@ti.com, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240719-ahead-kiwi-995e52bf3e74@spud>
References: <20240718210322.37492-1-ilordash02@gmail.com>
 <20240718210322.37492-2-ilordash02@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240718210322.37492-2-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_080706_689289_6A7C324B 
X-CRM114-Status: GOOD (  16.23  )
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
Content-Type: multipart/mixed; boundary="===============8715525181774519731=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8715525181774519731==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OacaTNnqMJzRi7N4"
Content-Disposition: inline


--OacaTNnqMJzRi7N4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042.
>=20
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b=
/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 79dad3e89aa6..03de361849d2 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -18,6 +18,7 @@ properties:
>        - nxp,tjr1443
>        - ti,tcan1042
>        - ti,tcan1043
> +      - microchip,ata6561

Given that your driver patch has
| diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-tran=
sceiver.c
| index ee4ce4249698..dbcd99213ba1 100644
| --- a/drivers/phy/phy-can-transceiver.c
| +++ b/drivers/phy/phy-can-transceiver.c
| @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_phy_i=
ds[] =3D {
|                 .compatible =3D "nxp,tjr1443",
|                 .data =3D &tcan1043_drvdata
|         },
| +       {
| +               .compatible =3D "microchip,ata6561",
| +               .data =3D &tcan1042_drvdata
| +       },
|         { }
|  };

the driver patch is actually not needed at all, and you just need to
allow ti,tcan1042 as fallback compatible in the binding, so something
like:

  compatible:
    oneOf:
      - enum:
          - nxp,tjr1443
          - ti,tcan1042
          - ti,tcan1043
      - items:
          - const: microchip,ata6561
          - const: ti,tcan1042
=20
   '#phy-cells':
     const: 0

Cheers,
Conor.

> =20
>    '#phy-cells':
>      const: 0
> --=20
> 2.34.1
>=20
>=20

--OacaTNnqMJzRi7N4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpqBFAAKCRB4tDGHoIJi
0u25APwJ3s2fz/iSUlVs8nhu7y4M/qp5donngZ/W2xoG6RZFFAEAilk2WvgKvymW
xAUkue9tqFIm/xv1Avcb+vTE1mqUcQQ=
=yHPo
-----END PGP SIGNATURE-----

--OacaTNnqMJzRi7N4--


--===============8715525181774519731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8715525181774519731==--

