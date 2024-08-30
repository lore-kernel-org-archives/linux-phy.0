Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DBDCCA0FFD
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 14:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Nwj49yFmbPKnDqj2I00rZTivyR1rVimJpjOkOLjH5s=; b=2UqZmneQn8diYByf6NHcfLqYIN
	wHCBkTDEm7yvm4/XzktEg+Iys990a5IFp+I1bhyRyYLwxV0r+DymvQfRyIPPDwVEJkm/bc0TanllH
	MqgmykQDOF1oWVtqAfjHtzAAjS5ddt+GhALk9uJ+H3Ppaz/z1wHGapBVej1ktwpfHmqt23u+mPisV
	j85lxPpiELT+L+X0YXb/4gv1SZHqxX8Nxdt8zb1AAX9ZK9J9gpL6RIt7ipE29/duc/ocHEVSW9biP
	Wj2Vw5stDAgLJo4YjhynfT68eLfB3X71O+zo4KLPOmF4cf6n1ny5vz9iskVOBHjUhnoeUcnTriwig
	lPbFSAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk32x-00000006gtn-0XEI;
	Fri, 30 Aug 2024 14:56:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk31t-00000006gcE-2f3J;
	Fri, 30 Aug 2024 14:55:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 81786AE4A82;
	Fri, 30 Aug 2024 14:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF5EBC4CEC2;
	Fri, 30 Aug 2024 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725029711;
	bh=9FTsVXS5gV6o6qLuJP6JjRydy1fTYjBjAK227EtLTU4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jirIoIPPFjw0IxjqZulDpWUEt/3grrBuV0v1E14wpzj/zCAEfRFvyhY0fH0O0Lf6X
	 +6ct6fwCyeyB9w/6Dj3WMPPDyiz/0KyznuwmrF0LnpgBa8KRJrFewbCUWY4Dz88oek
	 SW49Ir10VIuF7QnQDv3IGxSD/HzVRgo6WRtUSLoq/qJz7J06aT6G1v9cmRXKZXJ74+
	 bTl5DGpLduY5VJJRcW7nD3y2QZcm4k/tEYhiVe01uNv1Ay3Wrn0BvvqwWUL7LyZlRK
	 mQWyH9R/Y7wpFz7Ov4eCgtuUxMtmOkKFjgyDw/JzzdMggIHLE+trhFO0fsCRRry+vY
	 FAcW/g8m/fmAw==
Date: Fri, 30 Aug 2024 15:55:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	fabrice.gasnier@foss.st.com
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <20240830-jumbo-wriggly-39c84108371b@spud>
References: <20240828143452.1407532-1-christian.bruel@foss.st.com>
 <20240828143452.1407532-2-christian.bruel@foss.st.com>
 <20240828-handsfree-overarch-cd1af26cb0c5@spud>
 <005a2f7d-ab46-46c8-a0cc-b343685caf7c@foss.st.com>
 <20240829-manifesto-tray-65443d6e7e6e@spud>
 <777a92d9-ed52-4fa1-b235-e3a4a6321634@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <777a92d9-ed52-4fa1-b235-e3a4a6321634@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_075514_056573_B2747942 
X-CRM114-Status: GOOD (  28.60  )
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
Content-Type: multipart/mixed; boundary="===============6528036964891683822=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6528036964891683822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vp/iFskmsMfOFY45"
Content-Disposition: inline


--vp/iFskmsMfOFY45
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 30, 2024 at 02:53:15PM +0200, Christian Bruel wrote:
>=20
> On 8/29/24 18:44, Conor Dooley wrote:
> > On Thu, Aug 29, 2024 at 01:06:53PM +0200, Christian Bruel wrote:
> > > On 8/28/24 18:11, Conor Dooley wrote:
> > > > On Wed, Aug 28, 2024 at 04:34:48PM +0200, Christian Bruel wrote:

> > > > > +  st,syscfg:
> > > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > > +    description: Phandle to the SYSCON entry required for config=
uring PCIe
> > > > > +      or USB3.
> > > > Why is a phandle required for this lookup, rather than doing it by
> > > > compatible?
> > > the phandle is used to select the sysconf SoC configuration register
> > > depending on the PCIe/USB3 mode (selected by=A0xlate function), so it=
's not
> > > like a lookup here.
> > If "syscon_regmap_lookup_by_phandle()" is not a lookup, then I do not
> > know what is. An example justification for it would be that there are
> > multiple combophys on the same soc, each using a different sysconf
> > region. Your dts suggests that is not the case though, since you have
> > st,syscfg =3D <&syscfg>; in it, rather than st,syscfg =3D <&syscfg0>;.
>=20
> I didn't get your suggestion earlier to use "syscon_regmap_lookup_by_comp=
atible()".
>=20
> We have several other syscon in the other. That's why we choose a direct =
syscfg phandle

In the other what? SoCs?

Way I see it, if you're going to support different socs in the same
driver, it's almost a certainty that the offsets within a syscon that
particular features lie at are going to change between socs, so even if
you have a phandle you're going to need to have the offsets in your
match data. And if you're going to have offsets in match data, you may
as well have the compatibles for the syscon in match data too.
If the layout of the syscon hasn't changed between devices, then you
should have a fallback compatible for the syscon too, making
syscon_regmap_lookup_by_compatible() function without changes to the
driver.

If you do have multiple syscons, but they do different things, they
should have different compatibles, so having multiple syscons doesn't
justify using a property for this either in and of itself. If you have
multiple syscons with the same layout (and therefore the same
compatible) then a phandle makes sense, but if that's the case then you
almost certainly have multiple combophys too! Otherwise, if you have one
syscon, but the controls for more than one combophy are in it, then
having a phandle _with an offset_ makes sense.

If you know there are other SoCs with more than one combo phy, do they
use different syscons, or is the same syscon used for more than one
combophy?

--vp/iFskmsMfOFY45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZtHdSgAKCRB4tDGHoIJi
0pGbAQCKAWCZmjg06h86FVbvpXKdo/qvENzO4ym5L15FMJIkNAEAtFIoyWzGJo7B
vhqqrWfJ39dnSjvWdg+xaa8Og8rsAgM=
=DAUE
-----END PGP SIGNATURE-----

--vp/iFskmsMfOFY45--


--===============6528036964891683822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6528036964891683822==--

