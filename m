Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C8A7C27C52
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fTckToytRnp409IBMfeLbMuPqENqP6oC+nS2kXAJVt0=; b=2e+CUhFZVjnWgzPZ0tsu0mBHIO
	xIvLCyxNZWX4kmFRUw5AFt7jdoD3ScGyPJ+fHudy8FBJtSgSPaJdXl/v4TzRB5cmp3/CHzVpnUSQ0
	YM2aJKd/Q9scATm79yfew6/zmeI5vqni+7bpKOHrshZPgOMiMwybuYA4SitshMSYBPELVYqucPpy5
	eFIzE2vLm0eR2dJt9Aao4Jgl0ctqJY9xKCICnEWIx7v70eklLtGq2J3YHTG5KTdhtlNxLEBdUq8bV
	LtXuZtLcy3ucT+n5ARWLnCELakLf/phv7eUnsfz+5Y0MFiZcI2i80bZrRaky5jSPzystZmudjWNUx
	+schFc2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEY9s-00000003L92-3e5m;
	Tue, 04 Jun 2024 17:41:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEY9o-00000003L7D-2Qv7;
	Tue, 04 Jun 2024 17:41:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A8074CE1269;
	Tue,  4 Jun 2024 17:41:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78A5EC2BBFC;
	Tue,  4 Jun 2024 17:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717522869;
	bh=DuJG1xUSNNkn688G+JiifzfvYtedjIXjfodfy1p8X2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=py5b0Q6id6opaDgThP9tW+2w+Mr6FKZCZEYcQeyktM5uwCMxaSQ3tLTRYCsV64TyG
	 FbTmsfPka90RPkj6JE8JMCfrON7OHaKniAduwjyM/oNIGFiK8W/LxkznEDfuVJ/3JT
	 cEJLxaJiuT5DO7OuWppJiab1KSjTntO4nxP09hxi9VO1chfPePnCvGKsTAtI4AgNWy
	 K2Eckd4dladsZ2corT7UlS+IbYTOGFJeiQcXrzLYNYkWHITfXN57kCO6g6hdy1U6Qn
	 ud7AAaUItShyttYXmGMwM6woZ8uH5js2zPCvkudRvZr97hs7ZgP2HQdFIFdT71TVGe
	 tZ1s/jWqOlZgw==
Date: Tue, 4 Jun 2024 18:41:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konstantin Porotchkin <kostap@marvell.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org
Subject: Re: [PATCH v6 4/7] dt-bindings: phy: armada-cp110-utmi: add optional
 swap-dx-lanes property
Message-ID: <20240604-tucking-aggregate-0496e393f21c@spud>
References: <20240602-cn9130-som-v6-0-89393e86d4c7@solid-run.com>
 <20240602-cn9130-som-v6-4-89393e86d4c7@solid-run.com>
MIME-Version: 1.0
In-Reply-To: <20240602-cn9130-som-v6-4-89393e86d4c7@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_104112_998146_4006DBA8 
X-CRM114-Status: GOOD (  16.75  )
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
Content-Type: multipart/mixed; boundary="===============2885423718446094838=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2885423718446094838==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="antw0Vz5LrrLd1V3"
Content-Disposition: inline


--antw0Vz5LrrLd1V3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 02, 2024 at 05:49:39PM +0200, Josua Mayer wrote:
> Armada CP110 UTMI supports swapping D+ and D- signals.
> usb251xb.yaml already describes a suitable device-tree property for the
> same purpose but as child usb controller node.
>=20
> Add optional swap-dx-lanes device-tree property to armada cp110 utmi phy
> with same semantics as usb251xb:
> The property lists all ports that swap D+ and D-, unlisted ports are
> considered correct.
>=20
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  .../devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml      | 6 =
++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-u=
tmi-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-u=
tmi-phy.yaml
> index 9ce7b4c6d208..2ef02aac042a 100644
> --- a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy=
=2Eyaml
> +++ b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy=
=2Eyaml
> @@ -41,6 +41,12 @@ properties:
>        Phandle to the system controller node
>      $ref: /schemas/types.yaml#/definitions/phandle
> =20
> +  swap-dx-lanes:

Missing a vendor prefix.
Otherwise, to me naive eye, seems okay.

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: |

This | probably isn't needed though, there's not any format here that
seems worth preserving.

Thanks,
Conor.

> +      Specifies the ports which will swap the differential-pair (D+/D-),
> +      default is not-swapped.
> +
>  # Required child nodes:
> =20
>  patternProperties:
>=20
> --=20
> 2.35.3
>=20

--antw0Vz5LrrLd1V3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZl9RrwAKCRB4tDGHoIJi
0pUBAP9rw/WOT5tk+YGVhId6qKQNcjIeXvys1UKCwDNlO7k3SAEA6/Im72mCS8P8
HCYHLplimcTSkkx+oYWfqs/KnzhQ+wQ=
=vdFm
-----END PGP SIGNATURE-----

--antw0Vz5LrrLd1V3--


--===============2885423718446094838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2885423718446094838==--

