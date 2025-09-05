Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6ED8CA0FED
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 00:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=slVTChWnflWAO9YdpWKuCK+RUyyIoMTUjxIPH3umU+E=; b=xzkYWi/Wxvfg7G9Y3dIt2LDjtJ
	tHZ45aClKCA6tQsyq4llNI8lRBFgyFctjqUSSn6uqRdZzvYMqj9C6FmE3jGbS5BggdDXZthtyZyzk
	CWSobf4Ka8rJvx3GzCYx0JIPejaqsITrBG/juV/u4vsTmdBkxM/34KHjszkONmYtiRIBPu0Knctm1
	BZAq+piGZjHAmoEcGQEcDKRnUCHtoDDrkF0l5fh5weBn+WtIOs8ibCsxJpsYFFf88cud/DVvZkBhb
	N2sydv9nlY3DgOt4jMGuRm9vnIXD3hs6dcwqx51fRRTYNGTTs0NRgkRZurxvIL2ikwi7OW1JY+UHr
	IQB92FBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugXh-00000005VgE-1h4R;
	Sat, 06 Sep 2025 00:12:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubiC-00000003zRl-3RoG
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 19:03:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 680F043EB4;
	Fri,  5 Sep 2025 19:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7A51C4CEF1;
	Fri,  5 Sep 2025 19:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757098984;
	bh=RnVOVM/uuNuDbILZAhvH4NRZDyKw6b856IwUxGZu7y8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b+bOVARxitIxQ33KU0TqmSWbdqoVPPHWIpFZQ61dQdQE3J4cTCoTkNoFfWM7w5uWH
	 wXIG2AgiV04mKBBou+gon/wis5v+4+cEjQu/pCdw7Vh8RpLhYY75tVTs0XTIaK6kwN
	 H3PLy9ifhfEoz4aTT8vB4nD0Xlu7D3mru0xcqUjvZOYE6zM40KetDm3xm2kZsIvm2L
	 0W9ih2Z+GoRebWX57CRmkZugiUUrXpdogP+cySYdQWcQjDlbd3O4wDVdwy6bE6YUj6
	 ddhCKHTFcn0PkJAGD/Mv/VxO7F9s/n+QhPfp+abdI7vt/qa/U0ggXohoY5uK4JfoVU
	 OBKzh8wpV7gvA==
Date: Fri, 5 Sep 2025 20:02:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250905-pamperer-segment-ab89f0e9cdf8@spud>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250905-bulky-umber-jaguarundi-1bf81c@kuoka>
 <20250905154150.4tocaiqyumbiyxbh@skbuf>
MIME-Version: 1.0
In-Reply-To: <20250905154150.4tocaiqyumbiyxbh@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_120304_898749_D0E68687 
X-CRM114-Status: GOOD (  14.69  )
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
Content-Type: multipart/mixed; boundary="===============8983123729883417116=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8983123729883417116==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3D4+jggI92W+mz5y"
Content-Disposition: inline


--3D4+jggI92W+mz5y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 05, 2025 at 06:41:50PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 05, 2025 at 10:29:33AM +0200, Krzysztof Kozlowski wrote:
> > >  properties:
> > >    compatible:
> > > -    enum:
> > > -      - fsl,lynx-28g
> > > +    oneOf:
> > > +      - items:
> > > +          - const: fsl,lynx-28g
> >=20
> > Don't change that part. Previous enum was correct. You want oneOf and
> > enum.
>=20
> Combining the feedback from Conor and Josua, I should only be permitting
> the use of "fsl,lynx-28g" as a fallback to "fsl,lx216{0,2}a-serdes{1,2}",
> or standalone. The description below achieves just that. Does it look ok
> to you?
>=20
> properties:
>   compatible:
>     oneOf:
>       - enum:
>           - fsl,lx2160a-serdes1
>           - fsl,lx2160a-serdes2
>           - fsl,lx2160a-serdes3
>           - fsl,lx2162a-serdes1
>           - fsl,lx2162a-serdes2
>       - const: fsl,lynx-28g
>         deprecated: true

>       - items:
>           - const: fsl,lx2160a-serdes1
>           - const: fsl,lynx-28g
>         deprecated: true
>       - items:
>           - const: fsl,lx2160a-serdes2
>           - const: fsl,lynx-28g
>         deprecated: true
>       - items:
>           - const: fsl,lx2162a-serdes1
>           - const: fsl,lynx-28g
>         deprecated: true
>       - items:
>           - const: fsl,lx2162a-serdes2
>           - const: fsl,lynx-28g
>         deprecated: true

This doesn't really make sense, none of these are currently in use
right? Everything is just using fsl,lynx-28g right?
Adding new stuff and immediately marking it deprecated is a
contradiction, just don't add it at all if you don't want people using
it. Any users of it would be something you're going to retrofit in now,
so you may as well just retrofit to use what you want people to use
going forward, which has no fallbacks.

I didn't read the back and forth with Josua (sorry!) but is the fallback
even valid? Do those devices have a common minimum set of features that
they share?

--3D4+jggI92W+mz5y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLsz4wAKCRB4tDGHoIJi
0r3AAP4k3M2Rfs96+5+KCmi6TXeQ9mYQHTo4X1jbmyL+SNNR5QD/d4ym1J0jM4Us
aJvkVP5gvEEy0FxwEdh7BwhvQHfAqQs=
=mIu7
-----END PGP SIGNATURE-----

--3D4+jggI92W+mz5y--


--===============8983123729883417116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8983123729883417116==--

