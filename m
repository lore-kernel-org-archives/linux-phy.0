Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B277C7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 08:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=deYh/xS9hVW97xywjOAZGyiZvTUStsZUH0Kagq3kXqY=; b=Itm9MvDXHx7z8NEHiqWasEnLUF
	rh3EbKZM/gx6YUtqt6sXFjHpUKt5YZSFQgELJLbVynBukGxd4LyV/j4Hu2FAjlNZIKk+yYJa712nK
	FQQviEZ3rfgCoyonl583ZkqEq1o1y43Mw//mnCtNNMhLq79lQ12C6Ca5CL9jKGih0pdz5qXIcfM08
	8aFks2t2HmH0FyK1VcNLrmBzk53XBseyeujH3ckgQQIlFQ49KlPYfFB256qqRN/4r7jfTQ+XvU5dO
	CyYRInk2AbCmCWonfiODUe54OYcxIscp05Mi/6ELlY+XgSWrEOU1BW7/qKjOalZNXTd1scaEv49YB
	7nTaWREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AZ1-008U1G-2B;
	Thu, 08 Jun 2023 08:00:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AYy-008U0F-2s
	for linux-phy@lists.infradead.org;
	Thu, 08 Jun 2023 08:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1686211209; x=1717747209;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cqXxGotenDrIkzJ/xbTLUZR8Dx3lKtfhgIu1Q44Zd64=;
  b=Mn5IBT+nQFlj2f8wTV72bVVfxegtCEsSJoF6LBxKT9We+Z1gFKLHBXxJ
   PT4BrZGkCFrWx1n4J6aCNwhSMwQhjXHn1iflBAE6PNU6a6O4bolYEfnQV
   0gjRYq1ASP1/iCQSIIM7kHhPTUR+EJqwosA2sf6Y4+Hd/82ECgSxrmwUt
   FKamMPfrq7rwBMCaj6fChBSfNt5MNEwZmihaXp4b68P+hfLpxHPYcSQ95
   AbSPTRGBHLjSPQxMAY+iXP/oGV1cfrrFmEb0v3Nfk58nZtQXut0OvQR4u
   freE4jYT3tvUFGXLC8yYYaqBRkn4GQvLFVBF66yMA8wwy+KkogUskPB0R
   w==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; 
   d="asc'?scan'208";a="215157491"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 08 Jun 2023 01:00:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 8 Jun 2023 00:59:36 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 8 Jun 2023 00:59:35 -0700
Date: Thu, 8 Jun 2023 08:59:10 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
CC: Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Remove
 assigned-clock* properties
Message-ID: <20230608-oven-coerce-e0c3f16d58a9@wendy>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com>
 <20230606-implement-canning-0353ca9afddb@spud>
 <1855461.tdWV9SEqCh@steina-w>
MIME-Version: 1.0
In-Reply-To: <1855461.tdWV9SEqCh@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_010009_130189_C8044603 
X-CRM114-Status: GOOD (  15.00  )
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
Content-Type: multipart/mixed; boundary="===============1294724760430319331=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============1294724760430319331==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ptHSS9UAxKA8gKs+"
Content-Disposition: inline

--ptHSS9UAxKA8gKs+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 08, 2023 at 09:31:57AM +0200, Alexander Stein wrote:
> Hi Conor,
>=20
> Am Dienstag, 6. Juni 2023, 20:21:02 CEST schrieb Conor Dooley:
> > * PGP Signed by an unknown key
> >=20
> > On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> > > These properties are allowed anyway and some SoC (e.g. imx8mq) config=
ure
> > > more than just one clock using these properties.
> >=20
> > What does "allowed anyway" mean?
> > And following from that, why not modify the min/maxItems to suit
> > reality, rather than remove them. Is there enforcement from elsewhere?
>=20
> As Liu pointed out, assigned-clock* were considered a generic property ad=
ded=20
> by default at that time. With that support added there is no need to spec=
ify=20
> these properties in this bindings again.
> Despite that you never know in advance how many items you will have to ad=
d to=20
> assigned-clock* properties, that's totally different to 'clocks', it may =
even=20
> depend on board specific clock setups.

Sounds grand to me. I think it'd be good in the future to explain
*where* the enforcement comes from, rather than saying something like
"allowed anyway". Otherwise,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--ptHSS9UAxKA8gKs+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIGKQwAKCRB4tDGHoIJi
0jBwAP48RIVNjBThUtOuVL9t4+mAVA4Be5prPplO8Zl55lJSUgD/TclTtH9LReVZ
GcKhKcblVM9ReGHGKx+Z57oeRGFwrw0=
=2Mc/
-----END PGP SIGNATURE-----

--ptHSS9UAxKA8gKs+--


--===============1294724760430319331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1294724760430319331==--

