Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F055CA1013
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 00:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vrzGjYH22KWyrOYT3ocG3BsMeTYqL2sdQZ35TD+FHKE=; b=n8btu9BI02KRDJ/5FIKfG/Px3/
	oATiqzSj5j5ChnfLKsz4Pn6olUrAt0w7rNEgSZDWKK/kcr/f3IoGaB9maRBXVwmG8gs6X7UYcy3Qk
	li8i5yMioV/ozpLc6VPK+n0pdJLu8WR3+vl5Ouz0P/uexOK+308F+13wdwggq+Aoh8KIJW7vFnVoE
	075uYhLNuQM2iTBeOs9JngW/ZiAi9ffXaqt2eqicURtFF++g6dQ9FJA/5LdEXfhgMyqNMTGWLwyeZ
	wzSgQEr4HZW6Lt3mnI9zqTXn0xoDSm8cgz1TE+ewmo6tJKy3IFck8AKuKPS+2DLREJ1MXMvmCi0Sg
	jAzinNGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugXP-00000005VAR-3EIv;
	Sat, 06 Sep 2025 00:12:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubdw-00000003xon-447C
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 18:58:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3A2726029F;
	Fri,  5 Sep 2025 18:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86AC4C4CEF1;
	Fri,  5 Sep 2025 18:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757098719;
	bh=1j2nvqsSjv1hxZplBEJyzuJp7KGzjYn/hIUUuBIiH0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TpTOJec0ZTN90j+7ZunteSx6Vm1Vz5HfggSaILeh9dTVXOEW7YaYHP05emPIlZo9f
	 3vtm/zV8SCGVgu1ajVBaEYHCAqtCXbYMclNvPQNlzcesA3ocLdMS4FyM8L7rfWO76a
	 iSmvWAOSbivxd64vfih9jNlbUPhaNgUeRXoO90rIz75J+0KGgyraBUcel509ipuuv2
	 oHgG2zpCyMmY0xcEmtcQ+r7auOa8jOSAihk7ua6uieDfZrEqnMAgfdQioS+bPX9gLJ
	 vGImoJAdWx8D/fpBV8f9YeHtcuFLDRFEPt6Hbntiilt7auUttt6rrFnYAHp9Xc8bMt
	 b61/buJ50zPsg==
Date: Fri, 5 Sep 2025 19:58:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH phy 13/14] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250905-oxidation-pummel-7155593e06af@spud>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-14-vladimir.oltean@nxp.com>
 <20250904-molar-prune-4d3420b1bcb4@spud>
 <20250905104921.7grpgloevlifa3kj@skbuf>
MIME-Version: 1.0
In-Reply-To: <20250905104921.7grpgloevlifa3kj@skbuf>
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
Content-Type: multipart/mixed; boundary="===============8654317238535031515=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8654317238535031515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wIYzLZScWcCcVZ80"
Content-Disposition: inline


--wIYzLZScWcCcVZ80
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 05, 2025 at 01:49:21PM +0300, Vladimir Oltean wrote:
> On Thu, Sep 04, 2025 at 08:22:16PM +0100, Conor Dooley wrote:
> > On Thu, Sep 04, 2025 at 06:44:01PM +0300, Vladimir Oltean wrote:
> > > Going by the generic "fsl,lynx-28g" compatible string and expecting a=
ll
> > > SerDes instantiations on all SoCs to use it was a mistake.
> > >=20
> > > They all share the same register map, sure, but the number of protocol
> > > converters and lanes which are instantiated differs in a way that isn=
't
> > > detectable by software. So distinguish them by compatible strings.
> > > At the same time, keep "fsl,lynx-28g" as backup.
> >=20
> > Why keep the backup? Doesn't sound like you can use it for anything,
> > unless there's some minimum set of capabilities that all devices
> > support. If that's not the case, should it not just be marked deprecated
> > or removed entirely?
>=20
> To be honest, I could use some guidance on the best way to handle this.
>=20
> When I had written this patch downstream, lx2160a.dtsi only had serdes_1
> defined, as "fsl,lynx-28g", and this patch made more sense. Keep
> "fsl,lynx-28g" as a synonym for "fsl,lx2160a-serdes1", so that new
> device trees still work with old kernels (as is sometimes needed during
> 'git bisect', etc), for some definition of the word "work" (more often
> than not, unsatisfactory - for example, fw_devlink blocks probing the PHY
> consumer driver if the PHY driver doesn't exist, but the 'phys' property
> exists in the device tree).
>=20
> Unbeknownst to me, commit 2f2900176b44 ("arm64: dts: lx2160a: describe
> the SerDes block #2") came and defined the second SerDes also with
> "fsl,lynx-28g".
>=20
> The second SerDes is less capable than the first one, so the same
> developer then started battling with the fact that the driver doesn't
> know that serdes_2 doesn't support some protocols, and wrote some
> patches like 9bef84d30f1f ("phy: lynx-28g: check return value when
> calling lynx_28g_pll_get"), which in all likelihood could have been
> avoided using a specific compatible string. The lynx_info ::
> lane_supports_mode() method from patch 14/14 is supposed to say what is
> supported per SerDes and what not.

> In terms of implementation, what does "deprecating" the "fsl,lynx-28g"
> compatible string mean, compared to removing it entirely? Would there be
> any remaining driver support for it?

Really it does nothing much. The difference is that removing it entirely
=66rom the binding will cause existing dts users to create warnings
whereas marking it deprecated is more of an attempt to stop
proliferation since it doesn't generate any warnings at the moment but
people using the binding will see that it's not ideal. I personally use
deprecated when using the old binding is only ill-advised because
there's missing features etc and I opt for removal when the old binding
is wrong and actively harmful. In both cases, I'd keep the old
compatible in the driver for compatibility reasons.

> Should I compute the common set of
> capabilities between SerDes #1 and #2, and only support that? What
> impact would this have upon old device trees? Is it acceptable to just
> remove support for them?

Up to you really, if there is a common set between the two, that's
probably the ideal thing to do for the generic compatible. If there
isn't, and shit just ain't working properly at all for either then yeah,
it might be for the better to remove support for it entirely from the
driver too. Just make sure that you're clear about the fact that it just
cannot work at all, and that's why you're axing it. Breaking
compatibility is allowed, when there's justification for doing so, it's
not a complete no-no.

--wIYzLZScWcCcVZ80
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLsy2wAKCRB4tDGHoIJi
0mPnAQDBoioe3QK3vWC3vPR4UEPBA8FwsbUqZE7RZ/XS+CbsWAEA/dsteEdBKb5w
IeJ50tuLmPd0iVixuAiafJoPftMxcwM=
=O7PP
-----END PGP SIGNATURE-----

--wIYzLZScWcCcVZ80--


--===============8654317238535031515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8654317238535031515==--

