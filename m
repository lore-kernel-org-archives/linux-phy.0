Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C447CCF9F0
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 18:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BBrVCP3zZaA2HJqhvKawIBH6Ie/8FGrc1i8ZhEjFUaE=; b=gMCE8G+5b3MuDDWf8jU2ixhfJH
	I7q0QvdOL8cICPf27yDUBMMbxSiLur5PdLKOl+NbznY78+UVVg5WnQ2cP/6cgDwuq5X9C+J879fvH
	hYyqIBz3aR2bB0+Cb0+oDrUodn4BztJq7zTG9C3Pdj54VceqYSX/HPjqvf75n23h+Z7QJL7qqf+Qa
	fjQDNQSeJy/s1wF6VmBq6WqDgDy12C87QRjFv2v+ulA8T9mHN4MMMY1I0+60NTQqhtbYnPJ0nMQHt
	Rco6lLrPFlRON/HMxxQofT3ZSoxKQ6SvrLM4HYo3WmkX1PaeIcJ9MV3ArOV8EASnWZtbyS6p0sf6I
	ITOJnRIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXdO-00000004cqC-3Mln;
	Thu, 30 Oct 2025 18:44:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXdN-00000004cpy-117H;
	Thu, 30 Oct 2025 18:44:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 591E360273;
	Thu, 30 Oct 2025 18:44:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04015C4CEFB;
	Thu, 30 Oct 2025 18:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761849868;
	bh=vsxQjGOMRY3e0Nsl6cvv000bCykVEx5m7nSv2iyskVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qIV0RnhVcltY/Bi0BH4Sr4pschfRBF+kH+skm2FbOSfSOGW7yT5ZHMo+pQwte7gMm
	 +pw0GKcajp/mXqv/789hvzUVQhYP6ikG2A2Jm87y+TWigKXl8ovCqwPMgCv6qwnzCC
	 rVzXt53NXicYIb01rohTpG5VIR8q6B3lT/527CHCiyLZofCCf1XAGcWFjfrhX281hu
	 YW07HDiMmJTc29XXyea1xf5sM0MqBVFdlCkYWsWEyhBgXob6fi3fiHXiPEmGWJ+iKz
	 GkMDA0paCt3lvhTCdEP+A3oPCitOrckomF/qYYeqTvFIeIgKE+dpeBrwlAi5RQWuLn
	 6WzGp6WGLTxOw==
Date: Thu, 30 Oct 2025 18:44:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
Message-ID: <20251030-unbridle-ribbon-5c8543b83b71@spud>
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
 <20251029173713.7670-3-ansuelsmth@gmail.com>
 <20251029-mutual-scotch-7ca52e17da69@spud>
 <69025bc9.5d0a0220.1f0440.deb9@mx.google.com>
 <20251029-henna-easily-227513366e90@spud>
 <690266d4.050a0220.3a144c.eef7@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <690266d4.050a0220.3a144c.eef7@mx.google.com>
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
Content-Type: multipart/mixed; boundary="===============5587859253438999984=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5587859253438999984==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WOwBK0nI2n924yG0"
Content-Disposition: inline


--WOwBK0nI2n924yG0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 29, 2025 at 08:11:10PM +0100, Christian Marangi wrote:
> On Wed, Oct 29, 2025 at 06:35:51PM +0000, Conor Dooley wrote:
> > On Wed, Oct 29, 2025 at 07:24:04PM +0100, Christian Marangi wrote:
> > > On Wed, Oct 29, 2025 at 06:07:22PM +0000, Conor Dooley wrote:
> > > > On Wed, Oct 29, 2025 at 06:37:10PM +0100, Christian Marangi wrote:
> > > > > Add documentation for Airoha AN7581 USB PHY that describe the USB=
 PHY
> > > > > for the USB controller.
> > > > >=20
> > > > > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mo=
de is
> > > > > always supported. The USB 3.0 mode is optional and depends on the=
 Serdes
> > > > > mode currently configured on the system for the relevant USB port.
> > > > >=20
> > > > > The first USB port on the SoC can be both used for USB 3.0 operat=
ion or
> > > > > Ethernet (HSGMII).
> > > > > The second USB port on the SoC can be both used for USB 3.0 opera=
tion or
> > > > > for an additional PCIe line.
> > > > >=20
> > > > > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > > > > ---
> > > > >=20
> > > > > For DT maintainers, in v2 there were some comments, hope the new
> > > > > description and names of the property better clarify the usage and
> > > > > why they are needed.
> > > > >=20
> > > > >  .../bindings/phy/airoha,an7581-usb-phy.yaml   | 76 +++++++++++++=
++++++
> > > > >  MAINTAINERS                                   |  7 ++
> > > > >  .../dt-bindings/phy/airoha,an7581-usb-phy.h   | 11 +++
> > > > >  3 files changed, 94 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/phy/airoha,=
an7581-usb-phy.yaml
> > > > >  create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy=
=2Eh
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-=
usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.=
yaml
> > > > > new file mode 100644
> > > > > index 000000000000..5106685c124d
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy=
=2Eyaml
> > > > > @@ -0,0 +1,76 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yam=
l#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Airoha AN7581 SoC USB PHY
> > > > > +
> > > > > +maintainers:
> > > > > +  - Christian Marangi <ansuelsmth@gmail.com>
> > > > > +
> > > > > +description: >
> > > > > +  The Airoha AN7581 SoC USB PHY describes the USB PHY for the US=
B controller.
> > > > > +
> > > > > +  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0=
 mode is
> > > > > +  always supported. The USB 3.0 mode is optional and depends on =
the Serdes
> > > > > +  mode currently configured on the system for the relevant USB p=
ort.
> > > > > +
> > > > > +  The first USB port on the SoC can be both used for USB 3.0 ope=
ration or
> > > > > +  Ethernet (HSGMII).
> > > > > +  The second USB port on the SoC can be both used for USB 3.0 op=
eration or
> > > > > +  for an additional PCIe line.
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    const: airoha,an7581-usb-phy
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  airoha,usb2-monitor-clk-sel:
> > > > > +    description: Describe what oscillator across the available 4
> > > > > +      should be selected for USB 2.0 Slew Rate calibration.
> > > >=20
> > > > Why's this being set in dt? What actually determines what oscillator
> > > > should be used? Do they have different performance characteristics?
> > > > How is someone meant to know which one to use?
> > > >
> > >=20
> > > Hi Conor,
> > >=20
> > > thanks a lot for the review.
> > >=20
> > > The airoha,usb2-monitor-clk-sel is set in DT because it describe the =
HW
> > > and to what oscillator the PHY should be connected to.
> > >=20
> > > There are 2 PHY at different register space. One PHY needs to calibra=
te
> > > for oscillator 1 and the other PHY for oscillator 2 or the PHY doesn't
> > > work for USB 2.0 (the calibration fails)
> >=20
> > This implies that the oscillator is not part of the phy block, if
> > there's multiple competing for the same one. Why are these oscillators
> > not represented as clocks?
> >
>=20
> This was also pointed out in the old revision. The oscillator is
> internal and there isn't a register to read the frequency or to
> enable/disable.

If it has come up twice, that's a sure sign that you're not explaining
how this property works correctly. Since it's more about suitability and
less on usage, put it in the commit message.

> The PHY register block have the same exact bits to select from 0 to 3.
> The HW internally is then connected to 1 or 2 basted on the physical PHY.
>=20
> So yes they are part of the PHY block, just the register map is too
> ""liberal"" on the configuration.
>=20
> I verified if the same oscillator could be used for both but it does end
> up in the port not working as the calibration fails.
>=20
> > > The previous implementation used an index property but that was rejec=
ted
> > > as it wasn't descriptive of the HW.
> > >=20
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +    enum: [0, 1, 2, 3]
> > > > > +
> > > > > +  airoha,usb3-serdes:
> > > > > +    description: Describe what Serdes line is attached to the US=
B 3.0 port.
> > > > > +      Can be either Serdes USB1 or Serdes USB2.
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +    enum: [2, 3]
> > > >=20
> > > > This is confusing. Why 2 and 3 for usb1 and usb2? What even is the
> > > > mapping? Is it 2:1/3:2 or 2:2/3:1?
> > > >=20
> > >=20
> > > AFAIK there isn't a way to directly reference dt-bindings.
> >=20
> > Usually people put the name of the file in.
> >=20
>=20
> Yes on this I have seen mixed implementation with only the enum and some
> adding the link to it. I will add in the description.
>=20
> > >=20
> > > 2 and 3 are from include/dt-bindings/soc/airoha,scu-ssr.h
> > >=20
> > > #define AIROHA_SCU_SERDES_USB1		2
> > > #define AIROHA_SCU_SERDES_USB2		3
> >=20
> > Why overcomplicate like this? Just use 1 and 2. If that corresponds to
> > register settings of 2 and 3, do that conversion in the driver.
> > Properties are not shoving just register settings etc into, what happen=
s,
> > for example, when the next soc comes along and these are actually usb1 =
is
> > 3 and usb2 is 4 there? All of a sudden, your property has different
> > meanings depending on which device is being used.
> >=20
>=20
> This is really just to identify the serdes line that can have multiple
> usage, they don't refer to a specific register.
>=20
> The PCIe one are added as they can also be used for PCIe or Ethernet
> usage and in the future this feature will be implemented in the PCIe PHY.
>=20
> It's ok to change it 1 but then I hope we won't fall in the monclk case
> where we end up with

What is the "monclk" case?

> airoha,usb3-serdes =3D <1>;
>=20
> as that will be VERY confusing in DT.

Why would this be confusing for whatever "monclk" is?

I think the best argument for keeping it behaving how it does, is that
you've got pcie1 and pcie2 as potential options too.

Honestly, this whole patch comes across as doing weird or not needed
stuff, until the explanations arrive for why you're doing it this way a
few mails later. Just put the explanations for anything non-obvious like
this into either the property description (if usage is what's weird or
non-obvious) or into the commit message (if it's about suitability) and
we'll save a bunch of time in the future ;)


--WOwBK0nI2n924yG0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQOyBwAKCRB4tDGHoIJi
0qoMAP9HpNWRs4Zq/vy3LETJGVucs+bfUBEThm/bBicAa7AR7gEA2OQoxk2WpciF
th8ZR3rnPWgmeYV7weaG5EKngI52OQk=
=EfK2
-----END PGP SIGNATURE-----

--WOwBK0nI2n924yG0--


--===============5587859253438999984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5587859253438999984==--

