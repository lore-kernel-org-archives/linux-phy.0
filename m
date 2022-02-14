Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21068C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 16:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U1f+IL8BhTX6F3haPPoutu0xt0c8w2UxEc8+6uVbsq8=; b=tNvvqSrCbd69ClFVOWJXQQxjNw
	efKZ59cNRg4bdR05EW//0rObvcOGrfkwuQMhG85CTLwAyFbV2PwhZTGWeWtFwEMfoyYjCsxlxkl99
	Eco3BnM6vQ6DRDfExINPWXulK6OQygIvn2sKzL9AOiw3dtCQjGpXk3cB3GAOz2LKT5ruejUuG72gd
	GqLfOO+IO8UUrNSIeiMYDxwIFF489Q8b4VB1XT38+0ISJEOe2tcQNDLHOJT3R9enT2LjlLZnlKzim
	sycch2VSg+RZMsONUpCYcQlV8iYPE9O6hjEU4W89pv+hdIkRwy7EItdjQvlA0/sTpm5XegEMTM7Pa
	gM5Mgzyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJeDz-00G0id-IK; Mon, 14 Feb 2022 16:29:15 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJeDe-00G0cP-UZ; Mon, 14 Feb 2022 16:29:01 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 533571BF20A;
 Mon, 14 Feb 2022 16:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644856132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5duxPRqWDu+1JL3oVHLVTFQSMMgYnhs6Kqh7x0Swsnk=;
 b=X6pwmukcd11Mw7rgTo4OKu1ESaDmEN4fj2oNd+qz1feH91E4jnTQThvEWarS0aIXZMPeU9
 B8h/kZlDoJCIF0L8SQfDVo+xwYIjNME3aCAk9cupji/XDzP1v2sbT0J7CCDs8MnMxUrzbW
 TW3U5YQ/CVYu7bOGu9ljX4/4ZLxe657soWOXimNA5YbYUNc5pqIArVn4hYeadDhkWxNsZw
 KiCfZHdZTjAYQSHtD810UfmclTdztaMEGGbUbNQB0YNNXpF6Y9RiYRYJdW8DDRf+Mnda+Q
 kX2bqtcKOnclqVKjQlfBa1Vgq2LONfL5khac3De3DmV53nd/cLvINt5oSJgicw==
Date: Mon, 14 Feb 2022 17:28:50 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-staging@lists.linux.dev, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 61/66] dt-bindings: media: Add Allwinner A31 ISP
 bindings documentation
Message-ID: <YgqDQs/GJVxZMB+C@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
 <YgZ9GjgasiPljg9X@robh.at.kernel.org>
 <YgbMmLht/AXb5R1y@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YgbMmLht/AXb5R1y@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_082855_308254_2A9FB7E2 
X-CRM114-Status: GOOD (  31.51  )
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
Content-Type: multipart/mixed; boundary="===============3922540370020900856=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3922540370020900856==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzLvnjd3wstFCaVx"
Content-Disposition: inline


--yzLvnjd3wstFCaVx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 11 Feb 22, 22:52, Laurent Pinchart wrote:
> Hi Rob,
>=20
> On Fri, Feb 11, 2022 at 09:13:30AM -0600, Rob Herring wrote:
> > On Mon, Feb 07, 2022 at 05:51:21PM +0200, Laurent Pinchart wrote:
> > > On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > > > This introduces YAML bindings documentation for the Allwinner A31 I=
mage
> > > > Signal Processor (ISP).
> > > >=20
> > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > ---
> > > >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++++++=
++++
> > > >  1 file changed, 117 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/allwinn=
er,sun6i-a31-isp.yaml
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6=
i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-isp.yaml
> > > > new file mode 100644
> > > > index 000000000000..2d87022c43ce
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-i=
sp.yaml
> > > > @@ -0,0 +1,117 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.y=
aml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tr=
ee Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - allwinner,sun6i-a31-isp
> > > > +      - allwinner,sun8i-v3s-isp
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: Bus Clock
> > > > +      - description: Module Clock
> > > > +      - description: DRAM Clock
> > >=20
> > > That's interesting, does the ISP have a dedicated DRAM ?
> > >=20
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: bus
> > > > +      - const: mod
> > > > +      - const: ram
> > > > +
> > > > +  resets:
> > > > +    maxItems: 1
> > > > +
> > > > +  ports:
> > > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > > +
> > > > +    properties:
> > > > +      port@0:
> > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > +        description: CSI0 input port
> > > > +
> > > > +        properties:
> > > > +          reg:
> > > > +            const: 0
> > > > +
> > > > +          endpoint:
> > > > +            $ref: video-interfaces.yaml#
> > > > +            unevaluatedProperties: false
> > >=20
> > > If no other property than remote-endpoint are allowed, I'd write
> > >=20
> > >           endpoint:
> > >             $ref: video-interfaces.yaml#
> > > 	    remote-endpoint: true
> >=20
> > You just mixed a node and a property...
>=20
> Yes, I meant
>=20
>            endpoint:
>              $ref: video-interfaces.yaml#
>              properties:
>                remote-endpoint: true
>=20
> and actually add
>=20
>              additionalProperties: false
>=20
> > 'remote-endpoint' is always allowed, so need to put it here and every=
=20
> > other user. So 'unevaluatedProperties' is correct. But it would be good=
=20
> > to define what properties from video-interfaces.yaml are used here.
>=20
> I've been looking at this recently. The usual pattern is to write
>=20
>     endpoint:
>       $ref: video-interfaces.yaml#
>       unevaluatedProperties: false
>       properties:
>         hsync-polarity: true
>         vsync-polarity: true
>=20
> to express that the hsync-polarity and vsync-polarity properties are
> used. However, this will still validate fine if, for instance,
> data-lanes was specified in the device tree. Shouldn't we use
> additionalProperties instead of unevaluatedProperties here ? If so,
> specifying remote-endpoint: true seems needed.

My understanding is that unevaluatedProperties well allow all properties
defined in the included video-interfaces.yaml ref but reject others
while additionalProperties will reject any unspecified local property,
even if it is declared in the ref.

In any case with the ISP maybe we don't even want to take the ref from
video-interfaces.yaml since we are dealing with an internal fifo between
two devices. Maybe it would be more appropriate to ref
/schemas/graph.yaml#/$defs/endpoint-base, which already defines
remote-endpoint too.

What do you think?

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--yzLvnjd3wstFCaVx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIKg0EACgkQ3cLmz3+f
v9Fg/ggAoquw4gO5eekW7dxNLQONv8zyL3sxR/AwEuZlLOhjPUHeJzQwg5NupSx8
AqsMfFQA68MxH3nsQNRZkCFLXTIzmrK/xZRRX7OFD8cLQjKjMJmbz6gpm32UHBJr
un2rlNt0N8+iY9xKne3vQFPscOhnVFk/i5bdYj65jCfOiZF+jvnUwYtFcgoeQrv7
r4Hu6A2hlK9O8t+kG9oJ0MSU9ZdYTeXuLTg9W1QtSkt2bSxVauV0JxRKO7Wo67D6
LqwIEBtpEikyWIMARqoR3BcroJvCPNK96AmyZ9eKkTmpC+NI8pOLJyxwdRhqPN1o
njaQSFJo2B9w/O690dh0GMhf5B2I3Q==
=B7GD
-----END PGP SIGNATURE-----

--yzLvnjd3wstFCaVx--


--===============3922540370020900856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3922540370020900856==--

