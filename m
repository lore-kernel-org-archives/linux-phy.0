Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900D1CD343F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 18:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=twH/uuWZCVaTT+1qSihe8smh6BouKOC6T7VIUTO9UGw=; b=MAClQhE+0LO5EYmwebbzNNYq9i
	pbvt4LukIfvI9zlq1mIxHTs57FSerQTDJBb7g6ej2XFutCY3EIWwsBwiRHNq5hJfIKXcLEDYs274s
	5+rhPsD6DKOdIIlJe/3QhMabweI4v2FBFCeIwua3b1aOHDNfd+lmeu2+NSPzSrR+9FghOk1K7Nb5M
	7XYeWZd1nkOcCJVuVeAW+CSCUy+QxKc7OmtBU04uABFmDcS5pyFi0aIRjR9PjpV0QB0hB5CaYCIBs
	ST5CF3kaLxTizoktlnYwBJTiAc9l2KYNBDyONlRj6U+V/FUCrSrTojBNCBtlcBREUi5F0dMrs/9m5
	v8069mlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJFtI-00000009Nyf-0Lwy;
	Wed, 12 Nov 2025 18:48:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJFtH-00000009NyW-1UnZ
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 18:48:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 72F56601A5;
	Wed, 12 Nov 2025 18:48:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F897C4CEF7;
	Wed, 12 Nov 2025 18:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762973302;
	bh=dxUWBNjSHg2QdfgaDnXYT/JYX+mehzTGcs5DtsDTJ9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g3PAt5osYgKijUL2pFo/OcQJcuo8aKl5jV/Ro3uEVCVlD5OzT7hsi0AgBnOqQmH93
	 MuRxEyLqIgFC3RVgXpZ4r4sQT55Jd5ifjR8X9CiHVoxQE7GStm6zBj87jmCiZbwTUz
	 Z2dn9tro+uFRIdPzYPLS3Mj2nGDhhl/F/FjdvKikjLlzrj2/IWB1/hVX0K476FtIDc
	 N3pPQLOTKoMyP0B46dd3/S1sLGEt+qaBX5Fm5PKAu2wUvLLpOdqQmzQUySwi1iBX3i
	 8GRhi6DpOyCQ0cNxPJmzoymZA8KAomNA8jhW93SeN9tLnuAcwtgTQJgWwhw/0t6Jq9
	 kSe7689rBQsMQ==
Date: Wed, 12 Nov 2025 18:48:16 +0000
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/21] dt-bindings: reset: renesas,rzv2h-usb2phy:
 Document VBUS_SEL mux
Message-ID: <20251112-launch-overcoat-18c3924b9b3f@spud>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <8fba0b7235bd398d41329fd087d68f7e98bbbaca.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <20251110-resonate-strict-c3d6c42f3e0d@spud>
 <aRJqfh7p9M3NHfCS@tom-desktop>
 <20251111-character-catnip-0832956a3fb1@spud>
 <20251112163712.GA1850277-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20251112163712.GA1850277-robh@kernel.org>
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
Content-Type: multipart/mixed; boundary="===============4950479212751082044=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4950479212751082044==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Wi4VmUiHBPJH/1r5"
Content-Disposition: inline


--Wi4VmUiHBPJH/1r5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 10:37:12AM -0600, Rob Herring wrote:
> On Tue, Nov 11, 2025 at 05:49:24PM +0000, Conor Dooley wrote:
> > Tommaso, Rob,
> >=20
> > On Mon, Nov 10, 2025 at 11:43:37PM +0100, Tommaso Merciai wrote:
> > > Hi Conor,
> > > Thanks for your comment!
> > >=20
> > > On Mon, Nov 10, 2025 at 06:56:31PM +0000, Conor Dooley wrote:
> > > > On Mon, Nov 10, 2025 at 01:08:04PM +0100, Tommaso Merciai wrote:
> > > > > Document the 'mux-controller' child node in the Renesas RZ/V2H(P)
> > > > > USB2PHY reset binding to support describing the USB VBUS_SEL
> > > > > multiplexer as a mux-controller.
> > > > >=20
> > > > > This is required to properly configure the USB PHY VBUS source on
> > > > > RZ/V2H(P), RZ/G3E SoCs.
> > > > >=20
> > > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > > > > ---
> > > > > v2->v3:
> > > > >  - Manipulate mux-controller as an internal node.
> > > >=20
> > > > Why is it a child node, rather than just putting the cell in the pa=
rent
> > > > reset node?
> > >=20
> > > Getting "make dt_binding_check errors" [1] in v2
> > > Adding #mux-state-cells =3D <1> into:
> > >=20
> > > 	usb20phyrst: reset-controller@15830000
> > > 	usb21phyrst: reset-controller@15840000
> > >=20
> > > Nodes.
> > >=20
> > > Please correct me if I'm wrong.
> >=20
> > I think that that binding is not working as intended. Why require a
> > node-name pattern, when it matches on other things too:
> > select:
> >   anyOf:
> >     - properties:
> >         $nodename:
> >           pattern: '^mux-controller'
> >     - required:
> >         - '#mux-control-cells'
> >     - required:
> >         - '#mux-state-cells'
> > if the node name always contained mux-controller, the second two here
> > would not be needed. Looks to me like the intention was for it to allow
> > putting these control/state-cells properties into mfd type nodes.
> >=20
> > I'd delete the node name property tbh. Rob, you converted this to
> > schema, what do you think?
>=20
> Yeah, I'd probably just comment it out and drop the select.

Is dropping the select okay to do, or should just the nodename portion
go? I think there's a couple users that would need to be fixed up if the
whole thing gets removed. E.g. gpio-mux and reg-mux bot rely on the
schema being applied automagically AFAICT, and maybe there's some others.
Although, 99% of mux-controllers seem to use gpio-mux, reg-mux and
mmio-mux which are covered by those two files.

> I'm not sure what to do here in general. Matching on node names was=20
> useful early on, but that becomes less useful as we have schemas for=20
> everything. I'd still like to document standard node names in schemas=20
> somehow, but obviously we can't require a certain name when a node is=20
> multiple providers. Ideally, every node name in the list in the DT spec=
=20
> would be in schemas and we could generate that list.
>=20
> Rob

--Wi4VmUiHBPJH/1r5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRTWbwAKCRB4tDGHoIJi
0jBkAQD+fuaIvSWR60ndqX3CRSXBB7//qO2aOwu8ZSKwQj313gD/ebujckuMju4A
5EbhixmUxssMpXa/u63PrjPIR9oGowI=
=zSBW
-----END PGP SIGNATURE-----

--Wi4VmUiHBPJH/1r5--


--===============4950479212751082044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4950479212751082044==--

