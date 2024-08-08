Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32693C52D7B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Aug 2024 15:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VlA2tQQv4QPK0oo3u79fd0gn7Am2ZUSDDbubhvT1xS8=; b=m/l0RsS9SL+ntU2hMO9DUmLJvn
	j7mHV7czODt6BEKPXwU0A+gqZDFlAVld0eG4kOd8fX/9Np/cNFjlvZWWsHngkqCPk7fDc/a4twgUg
	dXnb54HVS4j5tpMdNlO3QFGOTTxZC5jkpaJ5L6R8/ctYU3/syRfF32ZlDn2rKfEuw9eSH9PMITYma
	6n7SsHgagccuWGK9fh0luH1N8+eeMrA++5AhPzkEtOgFuHnwFLF/+ppSeTpYy8BVYf1E65vFwRPJs
	42aU32pi2KYBA9La399finv4qmVGoqCFbeQmlGO3PDKvZo5KOoXaLWwsKPTNNjl0m5tKOlzYlz/6I
	v1+rwO0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc5Rp-00000008qc3-1jD1;
	Thu, 08 Aug 2024 15:53:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc5NE-00000008otl-0xZv
	for linux-phy@lists.infradead.org;
	Thu, 08 Aug 2024 15:48:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4385A61722;
	Thu,  8 Aug 2024 15:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E409C32782;
	Thu,  8 Aug 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723132098;
	bh=LGQaDws2R6YDe+LE/QWfXHcmATfrM492U4rphHVB1Ew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GfS1VluF4yyTx2lYEtwJQ7GCbKwFEW41kHIfoG7zTx9LHZfCAd9OqsCoHebbLH8Jw
	 wIi5MqaUJRCHZQoGFC1DDu4hcBoMn68p1+hgS+zSZCROOLjaFasE3KZZ5598jWjJU+
	 LeWcQ+WbtjfW2uwQUIrBjkNgm++cime5f2jZIKLL1M3/g0DbWbvxbTnZSOwxtT191q
	 OFlPag20JUv96jSap9pyhYZMrAwAfKAeIJGSXH2Uu7ndh4KOlEqtPnOuL/f/JSb145
	 PMOFoAWWoOsEzY/1LbUjoIrOXo4hgmeX+t6N0xtC2B96Bou8NnKKJsgt6xVeNLIdjK
	 aYB/lWyYQO9CQ==
Date: Thu, 8 Aug 2024 16:48:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240808-caucasian-cartridge-f728ed4982cd@spud>
References: <20240807180210.1334724-2-ilordash02@gmail.com>
 <20240807180956.1341332-1-ilordash02@gmail.com>
 <20240807180956.1341332-2-ilordash02@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240807180956.1341332-2-ilordash02@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_084820_493334_59622549 
X-CRM114-Status: GOOD (  14.25  )
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
Content-Type: multipart/mixed; boundary="===============8045926659650350912=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8045926659650350912==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QnEpDUSyh44tmswU"
Content-Disposition: inline


--QnEpDUSyh44tmswU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 07, 2024 at 09:09:56PM +0300, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
>=20
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b=
/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 79dad3e89aa6..f6f1fd843874 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -14,10 +14,15 @@ properties:
>      pattern: "^can-phy"
> =20
>    compatible:
> -    enum:
> -      - nxp,tjr1443
> -      - ti,tcan1042
> -      - ti,tcan1043
> +    oneOf:
> +      - items:
> +        - enum:
> +          - microchip,ata6561
> +        - const: ti,tcan1042
> +      - enum:
> +          const: ti,tcan1042
> +          const: ti,tcan1043
> +          const: nxp,tjr1443

The enum doesn't need the "const:s", just a "-", hence the bot
complaining.

--QnEpDUSyh44tmswU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZrTovgAKCRB4tDGHoIJi
0qexAP4qBwVjLrfdjcWcHp0z0iuokytwqiwpClLFlWIPv5uIIAD/Z0QqnlccIfdk
AUSp0QtDDJLAbtjBwCkroY6vSBQg6wA=
=7lOE
-----END PGP SIGNATURE-----

--QnEpDUSyh44tmswU--


--===============8045926659650350912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8045926659650350912==--

