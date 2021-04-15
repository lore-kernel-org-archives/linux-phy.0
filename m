Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CD41C433ED
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 07:38:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8589610C8
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 07:38:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8589610C8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cT/bgH1WW3x//6k+uQe4S7xWiyZM79pRqNDA9nXIToA=; b=SmKJXDoJwsRDp1zVwpffKxGCl
	JN5px9oFvj5KP49pWZ3Voo/Fdk9/QYmKJD8PGUhlJSIzWkPN+GsyPJO6kKUA64s81RbXmCYpUktZg
	TOn36ETT/T+F0sTQI6ScdrEvCZ3WdlmMwOYzio7yA57aCItzOFYdxcV1uovslX0+JCHFD2Gvm6lBh
	KEQOosPrsTBcIZZ/aqjM8/EUjjqAE24FEIa5fZffVwfBOP+E+6OwaW+Q8jA77sWmM6lV+8VMRTGHW
	5Iki06690R4mWGAg/1gXZfTLfa7oaIgCAsqhv184tcTIzEHbD3Y9ff+TVK+dGtB20KoEmchJogzxJ
	wIcYYM0Cg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwaD-00FFAX-DS; Thu, 15 Apr 2021 07:38:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwa4-00FF9A-PA
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 07:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vVBJLidSJ9fwxUi/JwclGPfWp2JMS2sCIbGjDo1uO2o=; b=j3MmRg730ObJD7qGSp8OwlB0zq
 cP5Osnh3wxqbNWWB5z5zhtFEJaE0J9gMqXG1+lbAPTbPP98vj9I93KW/lwnZ073rDgOQ+4ADcQYsv
 lOvPd+Y+iQ7uFvwW8Rot1aTF0Oz3XdTv/fJTpJIUZ631095tAr1TbMxeGs+aKNeXnuo+Tv5p44bIw
 ry3pYG7/C3AhL+BZTX7yZjkmCxGA//H+261sE2+AMzHYzIPsGpfr2p3PZLkb6TQ4IbxDmLJT0bPd3
 sUPHEmqXk3oB8oRoWjBKvk3Q2CEQstkVFAH+D5Db4YbjT6tzslA2r3yC+QxKxRzjO2Z3IyMUEd45D
 zuC9YwKA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwa1-008LfN-Tp
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 07:38:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWwZu-0008LU-1Y; Thu, 15 Apr 2021 09:38:18 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:983:856d:54dc:ee1c])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id F2D1860F1FE;
 Thu, 15 Apr 2021 07:38:10 +0000 (UTC)
Date: Thu, 15 Apr 2021 09:38:10 +0200
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
Message-ID: <20210415073810.nwoi2hx57hdg4ima@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-4-a-govindraju@ti.com>
 <20210414153303.yig6bguue3g25yhg@pengutronix.de>
 <9a9a3b8b-f345-faae-b9bc-3961518e3d29@ti.com>
MIME-Version: 1.0
In-Reply-To: <9a9a3b8b-f345-faae-b9bc-3961518e3d29@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_003825_986982_23237601 
X-CRM114-Status: GOOD (  27.47  )
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
Content-Type: multipart/mixed; boundary="===============3511372498084742488=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3511372498084742488==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x47mptupwgm4a7j3"
Content-Disposition: inline


--x47mptupwgm4a7j3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 15.04.2021 11:57:20, Aswath Govindraju wrote:
> Hi Marc,
>=20
> On 14/04/21 9:03 pm, Marc Kleine-Budde wrote:
> > On 14.04.2021 19:35:18, Aswath Govindraju wrote:
> >> Add binding documentation for TI TCAN104x CAN transceivers.
> >>
> >> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> >> ---
> >>  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
> >>  MAINTAINERS                                   |  1 +
> >>  2 files changed, 57 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-=
can.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yam=
l b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> >> new file mode 100644
> >> index 000000000000..4abfc30a97d0
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> >> @@ -0,0 +1,56 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> >> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> >> +
> >> +title: TCAN104x CAN TRANSCEIVER PHY
> >> +
> >> +maintainers:
> >> +  - Aswath Govindraju <a-govindraju@ti.com>

Can you create a maintainers entry for this file with your address?

> >> +
> >> +properties:
> >> +  $nodename:
> >> +    pattern: "^tcan104x-phy"
> >> +
> >> +  compatible:
> >> +    enum:
> >> +      - ti,tcan1042
> >> +      - ti,tcan1043
> >=20
> > Can you ensure that the 1042 has only the standby gpio and the 1043 has=
 both?
> >=20
>=20
> In the driver, it is the way the flags have been set for ti,tcan1042 and
> ti,tcan1043.

I was wondering if we would enforce in the DT the 1042 has exactly one
the standby GPIO and the 1043 has exactly the standby and the enable
GPIO.

On the other hand the HW might have pulled one or the other pin high or
low and only one of the pins is connected to a GPIO.

> >> +
> >> +  '#phy-cells':
> >> +    const: 0
> >> +
> >> +  standby-gpios:
> >> +    description:
> >> +      gpio node to toggle standby signal on transceiver
> >> +    maxItems: 1
> >> +
> >> +  enable-gpios:
> >> +    description:
> >> +      gpio node to toggle enable signal on transceiver
> >> +    maxItems: 1
> >> +
> >> +  max-bitrate:
> >> +    $ref: /schemas/types.yaml#/definitions/uint32
> >> +    description:
> >> +      max bit rate supported in bps
> >> +    minimum: 1
> >> +
> >> +required:
> >> +  - compatible
> >> +  - '#phy-cells'
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/gpio/gpio.h>
> >> +
> >> +    transceiver1: tcan104x-phy {
> >> +      compatible =3D "ti,tcan1043";
> >> +      #phy-cells =3D <0>;
> >> +      max-bitrate =3D <5000000>;
> >> +      standby-gpios =3D <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
> >> +      enable-gpios =3D <&main_gpio1 67 GPIO_ACTIVE_LOW>;
> >=20
> > AFAICS the enable gpio is active high.
> >=20
>=20
> I will correct this in the respin.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--x47mptupwgm4a7j3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB37V8ACgkQqclaivrt
76ng1gf/aCWi7jDI36fG5Q2jCFj5WHSssB52808LYtj6jR8zi7zjgjHCoCK7MhXW
tBV3CtNonx5NvHo99xFZgdVyJGlBeairCMWf9yfxW48sJzke6S0+WZ+qhWEE7mTG
ae8a5lcQ14qMT0ls/xHdBA4pQ2JGvd1s3/H3EIaMo2HPIA3rYycVaIGYd2eNlFAj
EbFN6mU8xyk9mxfIVlaBsPGqAFFCy3aS1vKpT4IKmo5iUIK1qWnVigrCIPU9Zch6
CRT0l5b0o9WsmkFe+oZpxGdDh+FO/bZNI2viH9avUhmx7uqwqb2sP2sljdR2CVtz
j/9UhbSLDsxIKZHyaXZnknZ+W7KBNg==
=ZTv2
-----END PGP SIGNATURE-----

--x47mptupwgm4a7j3--


--===============3511372498084742488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3511372498084742488==--

