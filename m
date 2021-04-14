Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD76AC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:33:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40ACD6100B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:33:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40ACD6100B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5K7a2iZA3FWH5gJ1yvWVv6qzCZQygXG82akcrpBmpZs=; b=e59ThQv2fJrIRsRCzBykhBXkB
	LX9/70ujS09EcqNVwJZ8lRBbztBcHvo8j7tSGDL3BN+sEsC2kskq9wHNQxnSLZ+Q8WvmpeUtb/EgS
	FJqRZUhYiY8L0cis451Xrr/CubvRpgvzFgKqLjH3vzbLHMhou8i/v8qvjJfxG2te2ntMJ3o2waUVB
	kEuyIEZg60Y7xMQzYiKniPYYk+ebYJw6UQbQAb+j5KJ6rz/fi1Rrst9kRszf8yWeP17xEZ2eVWXSN
	rx3kzuWtebQOWya6HGAhGfjyeB9LDLwyI5WTb9XHPhl576kUSHq+HXoYx4UbEw/+YZQ+ohh7JdXCa
	ZfQD5TL7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhW6-00D1oL-KZ; Wed, 14 Apr 2021 15:33:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhVz-00D1ns-Ex
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=c7GAfYpFbzm9M2aXlecF184hlWMv02KhoW+NXohFrQI=; b=VPtlhdVT3wS3uoCOVM3hc0L5xz
 4Pbz8aPbhJD1tGFcoF/RlozlnQw16YfvMqA4WeYioDbcAZnMz6HOmi5Twgli3TPl05/SPXRZ6n7Qn
 1xNUdIW8uOcbfA5SEpBtMRjKil6fkmDBc0o13dP+qJkm8P4GkI8cGoVsnznk1xty5n2yT08TLd1kz
 kNgn+sscYkEvTTZmF2emSX3QyFLvUV6bExEvLyZhFTSTg4Ttz81Jeqo0KQiEwROy3Ubk+fNy2MWkn
 6Sjg6x87K9CiK1Kn0PMpERRI2PEe0bvN2K+MoJBzQVqpTGS5OEyD3baslLhVDkPa7Jw4IG+RzM0+E
 5gXSuu4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhVw-007u63-PA
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:33:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWhVr-0004Ij-Pa; Wed, 14 Apr 2021 17:33:07 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id B6BBF60EA4F;
 Wed, 14 Apr 2021 15:33:04 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:33:03 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Message-ID: <20210414153303.yig6bguue3g25yhg@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-4-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210414140521.11463-4-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_083312_837652_C334D9B8 
X-CRM114-Status: GOOD (  18.42  )
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
Content-Type: multipart/mixed; boundary="===============2500226840953188119=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2500226840953188119==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ye5l67gk7hz5picn"
Content-Disposition: inline


--ye5l67gk7hz5picn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 19:35:18, Aswath Govindraju wrote:
> Add binding documentation for TI TCAN104x CAN transceivers.
>=20
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can=
=2Eyaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b=
/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> new file mode 100644
> index 000000000000..4abfc30a97d0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: TCAN104x CAN TRANSCEIVER PHY
> +
> +maintainers:
> +  - Aswath Govindraju <a-govindraju@ti.com>
> +
> +properties:
> +  $nodename:
> +    pattern: "^tcan104x-phy"
> +
> +  compatible:
> +    enum:
> +      - ti,tcan1042
> +      - ti,tcan1043

Can you ensure that the 1042 has only the standby gpio and the 1043 has bot=
h?

> +
> +  '#phy-cells':
> +    const: 0
> +
> +  standby-gpios:
> +    description:
> +      gpio node to toggle standby signal on transceiver
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description:
> +      gpio node to toggle enable signal on transceiver
> +    maxItems: 1
> +
> +  max-bitrate:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      max bit rate supported in bps
> +    minimum: 1
> +
> +required:
> +  - compatible
> +  - '#phy-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    transceiver1: tcan104x-phy {
> +      compatible =3D "ti,tcan1043";
> +      #phy-cells =3D <0>;
> +      max-bitrate =3D <5000000>;
> +      standby-gpios =3D <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
> +      enable-gpios =3D <&main_gpio1 67 GPIO_ACTIVE_LOW>;

AFAICS the enable gpio is active high.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--ye5l67gk7hz5picn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB3Cy0ACgkQqclaivrt
76mT/Af/WbnwgQ+a+aRsKHyfyTWezRr8G7s1RJjQLJFVegSR6EulxFLwmut1kluw
rSVTQwfdgixY+aZeufAxAcz7NrIJb80Lmc5iNj+ClFYPb/nVagJ2ctjiddJilJ56
df3vL1M2b4CUoE0fQN9MyfHeVKz81LY69QtXSOOdcgE+oTSOWUUpNFfpyVgtJHjN
ZV8VGlxIt81gly02Gu1HZ2E0TDhRw9yy3dvGgh4hsckCaxCwwCon2MOOtmHRVKuF
WqlJjpfd8jtdjG2WkKr/MnD4eqQR93nbnVzvBbyPxgqan/bN5vzXSAr+pwNRB0sS
ejLqSWJS+Owu4gPtn1wDwDMyTz5jvA==
=S3kp
-----END PGP SIGNATURE-----

--ye5l67gk7hz5picn--


--===============2500226840953188119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2500226840953188119==--

