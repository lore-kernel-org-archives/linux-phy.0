Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E566BC0015E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 17:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YojUcM02im8eWwZHKRhhSsartBYTiRzoLPah5zwAgu4=; b=VQck8fpKkHpudsj1/rlq23OcOM
	oa/paKqs8xDsQ/fhH4MEBbel1g4MKP/Fme91pTKWe52G7UdDTyvpWrUB0uEa4XfgcY6MAUMFzOHas
	rLHSNMpInQUPfjagge9bSqsMpIZD2JBxQvQCJhPPyz6tYY2La5UqPi0JDLpUlWlT33RTH9Qsy4dJ7
	YtNGJP+JzleAL8xZjfJ4oH+RCrHXHg0BjotBsp8rpNb/EicjxJWdPKzYpDIidaPe6B8n4OYOpB+nm
	07DkIptvHlpUN0e9laQGaKxZHiENVk/47N6kPCwKWSlrNav7FV8SkXd7aaWyAtYZ7eIffDFTyN02U
	zgY3d3UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNzkk-0057PK-1q;
	Mon, 24 Jul 2023 17:53:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNzkh-0057Oh-1A
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 17:53:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 85F796134F;
	Mon, 24 Jul 2023 17:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A724C433C7;
	Mon, 24 Jul 2023 17:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690221225;
	bh=RmS93u12TUXlfHMnOa2tBUZl7RpdMaVcIA79pN6ptPk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AxvsHC0AulXsxmImaPvHNCDTQD8Fiqlc3uftPBq96UdqjW7kiv9B/ccd+a8nq9vXy
	 0uGV1gitOUSXjmxKfidGojMcsa15GuHr7boIeH7ET7LWvtnX2ogmQwHaljZDyXpuzu
	 4BX5aXLK8oXANmwPX3xV9RCNERBtd9pY5fu5zaZzO2xK7y4id6BIP8ywNDfDK4749c
	 UT5hDuhqZtvFb8sNQ++Weg8baQDgMBq+I5v5dh1C/UMHC9hozDUoJ3PMO5paAjKNL1
	 FRkOQFOXd/JkSG2/Qof34OQGI65CG1UBMo/ItH76VXvlodktMvEvxTQiUw4TR72z99
	 Lu5ydMSPit10A==
Date: Mon, 24 Jul 2023 18:53:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org,
	s-vadapalli@ti.com
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
Message-ID: <20230724-unhappily-promptly-b25c7e42504d@spud>
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
MIME-Version: 1.0
In-Reply-To: <20230724150002.5645-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_105347_509574_0CC0621B 
X-CRM114-Status: GOOD (  15.35  )
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
Content-Type: multipart/mixed; boundary="===============4132337737375243759=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4132337737375243759==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oyZMCPGh/vy2WcGY"
Content-Disposition: inline


--oyZMCPGh/vy2WcGY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
> Torrent(SD0801) PHY supports two input reference clocks. Update bindings
> to support dual reference clock multilink configurations.
>=20
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
>  1 file changed, 16 insertions(+), 7 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.ya=
ml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index dfb31314face..ddb86ee0cebf 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -33,16 +33,25 @@ properties:
> =20
>    clocks:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      description:
> -      PHY reference clock for 1 item. Must contain an entry in clock-nam=
es.
> -      Optional Parent to enable output reference clock.
> +      PHY input reference clocks (refclk & refclk1).

"refclk" and "refclk1" don't seem like great names. What is each one
used for & should refclk1 be renamed to match its use case?

> +      Optional Parent to enable output reference clock (phy_en_refclk).
> =20
>    clock-names:
> -    minItems: 1
> -    items:
> -      - const: refclk
> -      - const: phy_en_refclk
> +    oneOf:
> +      - items:
> +          - const: refclk
> +      - items:
> +          - const: refclk
> +          - const: phy_en_refclk
> +      - items:
> +          - const: refclk
> +          - const: refclk1
> +      - items:
> +          - const: refclk
> +          - const: refclk1
> +          - const: phy_en_refclk
> =20
>    reg:
>      minItems: 1
> --=20
> 2.34.1
>=20

--oyZMCPGh/vy2WcGY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZL66pAAKCRB4tDGHoIJi
0qDUAPwMqzAdfRJtG0klPd1RxCXfkaouJIVXAnXRRMKTS2C+nwD9Er70D3Obm51r
nr07DbmhAB+F0oC1rqxqfD0GFgDGpgc=
=RT+f
-----END PGP SIGNATURE-----

--oyZMCPGh/vy2WcGY--


--===============4132337737375243759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4132337737375243759==--

