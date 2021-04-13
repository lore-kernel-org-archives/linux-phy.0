Return-Path: <SRS0=GU22=JK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F887C433ED
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 07:41:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83BD7613BA
	for <linux-phy@archiver.kernel.org>; Tue, 13 Apr 2021 07:41:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 83BD7613BA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UNIeyTfUrgOR1TC3s9H+NfZ6LdvoVOzSGUgxxL5W+qk=; b=A1e5R8PqOkCSVp9wmaTqwgv3E
	0QRQjyLLzPDOd4ToB/YCLeinU6nSlpkLLpiUUjAZiZEA9FJI347EVcl71g451oLLv2BHV/O8heNva
	qH2TGNbtCfI9gD4uHkj9ToyXbGogQb1RBslCtbiXAyrIET52CRMzw4v5Abx6axHQDK5onZHwjPcT6
	u98PKeiy4N1f6fEQiMq3611tXDz7jIs72lLiVSvs0HqVbv4AhQjgTsMWDUtd2MQB63A6DSpLySiWI
	6Uy/diZLZ7/vEkmwlJRGZbKsewS+LrUvQSyVeIGxQzoMZr82XSzXBHQUTbyTB3Dofq7Y0wg/BeFvM
	er8IuvstA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDfn-008X4v-Vi; Tue, 13 Apr 2021 07:41:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDfl-008X4h-Kw
 for linux-phy@desiato.infradead.org; Tue, 13 Apr 2021 07:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NL8Xrfg3RckQ1irQWKmdRFie5WHR3Yf5U3IOLVl5T7E=; b=WCdFMiTqEQMn9MfJHgWuAjskUs
 MBItF5KDQKga+bNZMHCiYtTnuuFovmk2Qi6YO3ZbFY6RNaZ7oH/GGqfP3vdO338tbWUdTgeKeQtLR
 LDcwE09Mm7q4y3psjg6sdQ0yC1QoalkX3CfoMfuUAbkoXVRtBJIaQ9VnKVxCgYwH8zNeERl7fdFmc
 hUF/fq0ubthkWn0FMU2D4QMDoeJvWdWT/7dWi3wvTo1WWcgAyEQ5VfoKuqhTif6xdAXtDmYMoM3KM
 F4ChL8Cnom9agscLf0m75AbbJtyRsaPF8WKEWChUcPeGYMmAuNd91WNg2NBDSg5AhgOq6hSknAOhz
 5JxeBcsA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDfi-006oEF-T3
 for linux-phy@lists.infradead.org; Tue, 13 Apr 2021 07:41:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWDfa-0002wF-17; Tue, 13 Apr 2021 09:41:10 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:d93:7b32:b325:ef5e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id EAD7060D881;
 Tue, 13 Apr 2021 07:41:06 +0000 (UTC)
Date: Tue, 13 Apr 2021 09:41:06 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Aswath Govindraju <a-govindraju@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-can@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Message-ID: <20210413074106.gvgtjkofyrdp5yxt@pengutronix.de>
References: <20210409134056.18740-1-a-govindraju@ti.com>
 <20210409134056.18740-2-a-govindraju@ti.com>
 <f9b04d93-c249-970e-3721-50eb268a948f@pengutronix.de>
 <20210412174956.GA4049952@robh.at.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20210412174956.GA4049952@robh.at.kernel.org>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_004118_963064_DEDFC361 
X-CRM114-Status: GOOD (  24.37  )
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
Content-Type: multipart/mixed; boundary="===============8714412355039839613=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8714412355039839613==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="glnpqqhpnvjspjxs"
Content-Disposition: inline


--glnpqqhpnvjspjxs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 12.04.2021 12:49:56, Rob Herring wrote:
> On Mon, Apr 12, 2021 at 12:19:30PM +0200, Marc Kleine-Budde wrote:
> > On 4/9/21 3:40 PM, Aswath Govindraju wrote:
> > > Add binding documentation for TI TCAN104x CAN transceivers.
> > >=20
> > > Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> > > ---
> > >  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++=
++
> > >  1 file changed, 56 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x=
-can.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.ya=
ml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > new file mode 100644
> > > index 000000000000..4abfc30a97d0
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > @@ -0,0 +1,56 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
> > > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > > +
> > > +title: TCAN104x CAN TRANSCEIVER PHY
> > > +
> > > +maintainers:
> > > +  - Aswath Govindraju <a-govindraju@ti.com>
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    pattern: "^tcan104x-phy"
> > > +
> > > +  compatible:
> > > +    enum:
> > > +      - ti,tcan1042
> > > +      - ti,tcan1043
> >=20
> > Can you create a generic standby only and a generic standby and enable =
transceiver?
>=20
> As a fallback compatible fine, but no generic binding please. A generic=
=20
> binding can't describe any timing requirements between the 2 GPIO as=20
> well as supplies when someone wants to add those (and they will).

Right - that makes sense.

> > > +
> > > +  '#phy-cells':
> > > +    const: 0
> > > +
> > > +  standby-gpios:
> > > +    description:
> > > +      gpio node to toggle standby signal on transceiver
> > > +    maxItems: 1
> > > +
> > > +  enable-gpios:
> > > +    description:
> > > +      gpio node to toggle enable signal on transceiver
> > > +    maxItems: 1
> > > +
> > > +  max-bitrate:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      max bit rate supported in bps
>=20
> We already have 'max-speed' for serial devices, use that.

There is already the neither Ethernet PHY (PHYLINK/PHYLIB) nor generic
PHY (GENERIC_PHY) can-transceiver binding
Documentation/devicetree/bindings/net/can/can-transceiver.yaml which
specifies max-bitrate. I don't have strong feelings whether to use
max-bitrate or max-speed.

Speaking about Ethernet PHYs, what are to pros and cons to use the
generic PHY compared to the Ethernet PHY infrastructure?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--glnpqqhpnvjspjxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB1Sw8ACgkQqclaivrt
76k2xAgAoYRIJ2saZpOlKBVdCP3F6bacRxhFyVXdgCtFvOEJlHrmc1ITd9wQxqlD
M66lTqpLObfL6a4OBhT8IuV1vm/WrXuMmpBbeL8d48nyuzGi3HBifVoPGEDNOL+E
JgGfe4HSGrr7+P/PxdfwwEkgKFPITRLJf2oM9Pp9E2VSpGS8idb5RdcC+4JwRv8E
ULOFgqmu5MlXrzNPh83vCEmJ9zBLQ5YsL9LRmInBt2bnCZmz/TjcsSVa5fKAlKq+
TpC+ZNKLO2dcIu/VE51okEzHxT0QQDkdGTyy8WJZ5ThlYf9al8j8hJN2usLLLqww
V5v0Gte8QuZC8ZolWxEZo5UtELUfDA==
=3aAL
-----END PGP SIGNATURE-----

--glnpqqhpnvjspjxs--


--===============8714412355039839613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8714412355039839613==--

