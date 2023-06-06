Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E65BC77B73
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 18:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Z66PEX1YkxvEQ1SAkhs+O+JuJlMihX/rjdrJ0gBIbE=; b=siXOvkB1I8X75I2pRP7dR8S2uF
	zEJpmQDlgVzsyZ8fN7H2oY5+WRo/kr5P/g7QETfKmchf5djnjrAVbJoVj13w/F/dEVcK9DF+eSanp
	tMFse6Vo/3+SCTYCRQqyyZapjdBeUEaSblQI2H8tweNYf6ZytF+MarMnVopQwJhxOouhFl9t5Rw6p
	XLH97+5OKOVUTAD4rl0D8XomJKQmK8b3D/QmvJWYG2/cY8OQOPT08lA//g+mZS9WidHPkoOjB4+Bk
	kEY88laeTT0Rm1t+/fhNnYHtpfNadYonPTyLJjZlF4/3PkcEfqQcN33KEbRdTT945btKS2C9h1Yrc
	fWmMYLqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6bIr-002jgI-2Z;
	Tue, 06 Jun 2023 18:21:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6bIp-002jfr-2m
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 18:21:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 336B162F2E;
	Tue,  6 Jun 2023 18:21:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97451C4339B;
	Tue,  6 Jun 2023 18:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686075666;
	bh=ljqurGBoA0H7WQzAb4F6v9Hp/eKC0Sg99g1tREoBxqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DIfRPazOwePfOs8ItJHcVxQd/JaMVUVirQtozSQPh62uj7KLmHQuAGoTIBmAlrcx3
	 Q4tm8cXhsn3Lg/13OJrXi8SfIcnfgDnLZqMOdCQ3iPCNzpOMDgjdk88hRTN8Z/OYuU
	 +XQZpHcfgvssoVtFQObRWcsfi4zGH+xGM8r2IqpE3aU3HP+DDy1kHK8bQDWtMY56tU
	 bmBnFtUl79QXkorGmYshMMbAmLZ+agt/UBwEv/9T9DwKrZsTIUAOInqq08Myf8yD0O
	 LkgfiZq7ifSbMr8JOV/pMN0XF6lZLt5et+64o+jOxqq7sq7BjQqra3sQEcutkyZD9Y
	 nqGYxztA1u17w==
Date: Tue, 6 Jun 2023 19:21:02 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel,mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <20230606-implement-canning-0353ca9afddb@spud>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
In-Reply-To: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_112107_981861_38141372 
X-CRM114-Status: GOOD (  18.62  )
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
Content-Type: multipart/mixed; boundary="===============2602160897011225461=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2602160897011225461==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zYuBaMqGZQxpQNI4"
Content-Disposition: inline


--zYuBaMqGZQxpQNI4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> These properties are allowed anyway and some SoC (e.g. imx8mq) configure
> more than just one clock using these properties.

What does "allowed anyway" mean?
And following from that, why not modify the min/maxItems to suit
reality, rather than remove them. Is there enforcement from elsewhere?

> Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to js=
on-schema")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
> ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").

I suspect that meant that the property was in the dt but not in the
binding at the time of the conversion.

Cheers,
Conor.

>=20
> Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
> mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
> properties.
>=20
>  .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
>  1 file changed, 9 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yam=
l b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> index 786cfd71cb7eb..3c28ec50f0979 100644
> --- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> @@ -32,15 +32,6 @@ properties:
>    clock-names:
>      const: phy_ref
> =20
> -  assigned-clocks:
> -    maxItems: 1
> -
> -  assigned-clock-parents:
> -    maxItems: 1
> -
> -  assigned-clock-rates:
> -    maxItems: 1
> -
>    "#phy-cells":
>      const: 0
> =20
> --=20
> 2.34.1
>=20

--zYuBaMqGZQxpQNI4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZH95DgAKCRB4tDGHoIJi
0rvVAQDERPS8mYHAeyrLw9/psX3Krt144EkLLSbL9ZBnSfTzdAD+MprMmNGN1NUt
KeSL/x1kVbv2OiE9zwyJBdXs6CJeswE=
=fngN
-----END PGP SIGNATURE-----

--zYuBaMqGZQxpQNI4--


--===============2602160897011225461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2602160897011225461==--

