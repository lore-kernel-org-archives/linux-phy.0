Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C6E0CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 15:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eSRK6z22r7maqrnGkUKhesR1id30v/7p9g+PAZIbTJg=; b=p94xbigGty/mEeMbvPKS31W1ua
	yxzJW6n+pjX0stPYTcKygMUwCc807A1q2h3Z+YEcxIrwoUjP8LIEM0rsipfMbYKvdvEv8nqADDgxc
	3baF5mwlFGVng7fWDDw3JCmyOTzCzfvZKh5RSwauHgy9RmVrSryup42HXzQOK4k2vyHR+CDEqYghW
	MG+IC0iy8yMOSHLu4OBRulzuOsoPoLvW0I9MISn/Wx4DfOYu0aKcCp/lNk/mTNqYufSrgqhFDe8jX
	MliNDirn3vuxJq+23ckxYTr9QMxeX9qoDrFzSpCamS/CeDAES5p6AEOxiiuDuaV2/bbvX60041+Tp
	v3axneCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnDw-0000000FKrc-1g9o;
	Wed, 03 Jun 2026 15:09:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUnDt-0000000FKrA-1QiV
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 15:09:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 57D8841E4F;
	Wed,  3 Jun 2026 15:09:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E1791F00893;
	Wed,  3 Jun 2026 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780499376;
	bh=ARuOFQjVr8e+L4jfVqSgMIfl93+q6E7LoYqJOO8jb90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dqnfBTtByIMI26ZoUrTeGnpDoxYzPftEQq1mU9bLsrnWR5ApVZE1F8lsS6hjFnTNA
	 9u2nmzGODFKqXkwum2zCoYz09A8KJmfcLLNXh70vN3wNPrNV8FTikTiepZb5AoltQC
	 EPqZWMjO/EyDhXUBah97UVZY1/z4C7U2o1n0qsLaTRLknfYVvEyVCMcl3hgDZChtzb
	 4DtgUXaE4tdRR89ZQFbRSRpA67ZN3nEzHea7TAsdDRa1qdS9PjkZzn0ro0T1BiJkoo
	 1sND5xvZ0/+CSZcDoo34q4sJ2Z7/ux8nKAs2bOdxb5pVTMrdDkt83SInAX5HjPn/ZJ
	 9wfCO67nvvkJg==
Date: Wed, 3 Jun 2026 16:09:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 phy-next 13/15] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260603-bleach-arming-247f1b0fb87b@spud>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
 <20260529171509.1163787-14-vladimir.oltean@nxp.com>
 <20260602-reviving-aging-a7d066d2448b@spud>
 <20260603115654.k4v7cayysvy7yte4@skbuf>
MIME-Version: 1.0
In-Reply-To: <20260603115654.k4v7cayysvy7yte4@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_080937_480503_07834A24 
X-CRM114-Status: GOOD (  32.44  )
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
Content-Type: multipart/mixed; boundary="===============0506924293660008138=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0506924293660008138==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tvg35FipqBaZkrlN"
Content-Disposition: inline


--tvg35FipqBaZkrlN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 02:56:54PM +0300, Vladimir Oltean wrote:
> On Tue, Jun 02, 2026 at 06:10:30PM +0100, Conor Dooley wrote:
> > On Fri, May 29, 2026 at 08:15:07PM +0300, Vladimir Oltean wrote:
> > > Add a schema for the 10G Lynx SerDes. This is very similar to the mod=
ern
> > > form of the 28G Lynx SerDes, which is very much the intention.
> > >=20
> > > We allow both forms of #phy-cells =3D <1> in the top-level provider
> > > and #phy-cells =3D <0> in the per-lane provider for more flexibility =
to
> > > consumers, and because the kernel code is shared with the 28G Lynx wh=
ich
> > > already has that support for compatibility reasons.
> > >=20
> > > Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > ---
> > > Cc: devicetree@vger.kernel.org
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > > Cc: Rob Herring <robh@kernel.org>
> > >=20
> > > v1->v2:
> > > - move patch later in series, right before driver
> > > - deliberately ignoring this Sashiko feedback:
> > >   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@s=
kbuf/
> > > ---
> > >  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++=
++
> > >  1 file changed, 131 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10=
g.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml =
b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > new file mode 100644
> > > index 000000000000..993f076bba4e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > @@ -0,0 +1,131 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Freescale Lynx 10G SerDes PHY
> > > +
> > > +maintainers:
> > > +  - Vladimir Oltean <vladimir.oltean@nxp.com>
> > > +
> > > +description:
> > > +  The 10G Lynx is a multi-protocol SerDes block which handles networ=
king, PCIe,
> > > +  SATA and other high-speed interfaces. It is present on most QorIQ =
and
> > > +  Layerscape SoCs. The register map is common, but the integration is
> > > +  SoC-specific, with the differences consisting in register endianne=
ss, the
> > > +  number of lanes, protocol converters available per lane and their =
location in
> > > +  the PCCR registers. Some SoCs have multiple SerDes blocks and thos=
e differ in
> > > +  their protocol capabilities per lane.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    description:
> > > +      There is intentionally no generic fsl,lynx-10g compatible stri=
ng due to
> > > +      the hardware inability to report its capabilities, despite hav=
ing a
> > > +      common register map.
> >=20
> > I think you can probably drop this from the diff, and put it in the
> > commit message.
>=20
> Ok.
>=20
> > > +    enum:
> > > +      - fsl,ls1028a-serdes
> > > +      - fsl,ls1046a-serdes1
> > > +      - fsl,ls1046a-serdes2
> > > +      - fsl,ls1088a-serdes1
> > > +      - fsl,ls1088a-serdes2
> > > +      - fsl,ls2088a-serdes1
> > > +      - fsl,ls2088a-serdes2
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  big-endian: true
> >=20
> > This isn't a required property, but should it be made required for the
> > specific compatibles that are big endian? Or are we not that lucky, and
> > devices can be either?
>=20
> I can make big-endian a required property for fsl,ls1046a-serdes1 and
> fsl,ls1046a-serdes2.


Please do. In that case,
pw-bot: changes-requested

Cheers,
Conor.

--tvg35FipqBaZkrlN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBDrAAKCRB4tDGHoIJi
0qDgAQDqja67Y3bn5A9b3EDzCfoLaN2NFBUyf10W0X5fB4qOEQEAi3cLwgcPSKw1
vD0fQbVfS2rXwauVMhQ6roFQUAeRoQY=
=i/vn
-----END PGP SIGNATURE-----

--tvg35FipqBaZkrlN--


--===============0506924293660008138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0506924293660008138==--

