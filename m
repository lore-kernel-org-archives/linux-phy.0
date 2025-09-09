Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C60BCA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 18:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F51d5Pwz4+jZvH2PoA7FVnouHU0IvDLKXNPnQOqDW4M=; b=cC7f0XCnJMr3BLpf+eGPMiKwX8
	6qjWNCm1VZaylUcOMZk/fvm3fTVJoAqA0Bk0rM72bxtb87xVYx7m1V4siRi9sz5o/86DzepkMhDVd
	9HWXak7Eb3H6gqgDklL4/DTnKfOClCqMzaNpU9Y/lwDe/YTjcCaCbTaPb2fnbERfoUz765WW38Rhw
	oHpIC901WcFYyyZRO6fZFLztHwVO8n07HozQBWMEUOEnaOB/0drXN/D2cVxhdDXHEkxxAuDNBXwdE
	qxDYLTHXMmcXa5r//E4NqG4mdOEB5HasrVaPPX+fW79ADbIxJlrmt6LOmg7lLKoDiF2ar7C3bhfIR
	dhpwGYyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw3C3-00000009Sw6-0Kd3;
	Tue, 09 Sep 2025 18:35:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw3C1-00000009Sva-18z0
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 18:35:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 56064408BB;
	Tue,  9 Sep 2025 18:35:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D79CDC4CEF4;
	Tue,  9 Sep 2025 18:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757442948;
	bh=zCimBEEsW+SFcQwuUGAUgCl9LrL92q1g3x95hB4wno0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J+pi9q6hBYDz9dZm8Tsp21PbpCnT6vybJVHLcbDQvEb1DAy1rrmn6zYM+5hRsEez4
	 K9LRTKLQRSDC09Zs0ErZ+2HLDuG851XcxIeNPxuU/EEuuBLqekUDkpqAYeeK6kZSV5
	 M8uoSMt4XOzk+RWwE2ScKJ8rxiTj0RFP2d4DVTQbiKENh+ftzDmDLYkKuJei74VyB+
	 I41ObBBH5llZtYq/2sBQtXz8lGJBqIHqlcNqY2Yr/5HDYquzEqO7Oelvvax5MTegbt
	 jpvlszHQPIuAxd3p+mDAawoIkDox6rTrCzGVuCdi5UWYDnWY+FhR0FcSXzLmMtNq65
	 GypedVo+G5ggg==
Date: Tue, 9 Sep 2025 19:35:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Josua Mayer <josua@solid-run.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250909-cork-tyke-9b460c1a6f44@spud>
References: <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
 <20250905154150.4tocaiqyumbiyxbh@skbuf>
 <20250905-pamperer-segment-ab89f0e9cdf8@spud>
 <20250908093709.owcha6ypm5lqqdwz@skbuf>
 <2b1f112e-d533-46ae-a9a0-e5874c35c1fc@solid-run.com>
 <20250908153746.7mfobudenttdi4qd@skbuf>
 <fcfbea96-7978-49f6-88c6-f78fe52edb7c@solid-run.com>
 <fcfbea96-7978-49f6-88c6-f78fe52edb7c@solid-run.com>
 <20250909113543.q7zazfy5slrgnhtc@skbuf>
MIME-Version: 1.0
In-Reply-To: <20250909113543.q7zazfy5slrgnhtc@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_113549_351820_C44C96AC 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Type: multipart/mixed; boundary="===============2430915642030976161=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2430915642030976161==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgKk0EMXYsQjaFjK"
Content-Disposition: inline


--rgKk0EMXYsQjaFjK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 09, 2025 at 02:35:43PM +0300, Vladimir Oltean wrote:
> On Mon, Sep 08, 2025 at 04:04:45PM +0000, Josua Mayer wrote:
> > Am 08.09.25 um 17:37 schrieb Vladimir Oltean:
> > > On Mon, Sep 08, 2025 at 02:02:35PM +0000, Josua Mayer wrote:
> > >>> My updated plan is to describe the schema rules for the compatible =
as
> > >>> follows. Is that ok with everyone?
> > >>>
> > >>> properties:
> > >>>   compatible:
> > >>>     oneOf:
> > >>>       - const: fsl,lynx-28g
> > >>>         deprecated: true
> > >>>       - items:
> > >>>           - const: fsl,lx2160a-serdes1
> > >>>           - const: fsl,lynx-28g
> > >>>       - enum:
> > missed fsl,lx2160a-serdes1
>=20
> I didn't miss anything. "fsl,lx2160a-serdes1" is deliberately not in
> "enum" because there's no point specifying this compatible as
> standalone, if for backwards compatibility reasons it will always have
> to be "fsl,lx2160a-serdes1", "fsl,lynx-28g" (it was described as
> "fsl,lynx-28g" before), which is already covered by "items".

I think Josua was pointing out their own omission here.

> > >>>           - fsl,lx2160a-serdes2
> > >>>           - fsl,lx2160a-serdes3
> > >>>           - fsl,lx2162a-serdes1
> > >>>           - fsl,lx2162a-serdes2

--rgKk0EMXYsQjaFjK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaMBzfwAKCRB4tDGHoIJi
0uImAP4iSyFG0dBJjo95uX9m0Tmx93AaThmecCO8jIfuKbVbrQD+Jji3Uu3mPaRx
UHP7rBa5RARB+qAIa/QDdFDUDGKfUQY=
=KrBe
-----END PGP SIGNATURE-----

--rgKk0EMXYsQjaFjK--


--===============2430915642030976161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2430915642030976161==--

