Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C009AC4167B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 13:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YkZeEtqwKdU8u45iOnZ0D5WKS+PMjjAs9Z611uUxfqo=; b=udo/u/Nv6uvkwQSLkvqJwY558b
	HJlQGEX8EVA8DlhXj75MjIp/IdpEGF8Ei4OLRkg4mtEu6pa9kxnG5gS4/zism7xc9qlDsPmh8DxOl
	lwK4nBIXy2NTpqP2bd3NbabiQ/3j80Jkf74Vvdn6lTDyBZfOE7zcktqY7oezyzSDlXWAXFWMYVKM0
	of3Zx1G9BI/X5rZS8OWaQ5dXVdyy6QFPyb1GZc2fYOLEluMkQUcrI+qY/7xVyP3HFe/NyFYTvzINe
	Ku5CITiE+wvWcipqoUEVOjPHUl2oQs+VSHHimaZvi9WIGol5zwcXVkkkTuln8Vsn3LnuDsVKUNmv/
	QiDnYldA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCftH-004uHD-0l;
	Mon, 11 Dec 2023 13:00:07 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCft5-004uEm-0V
	for linux-phy@lists.infradead.org;
	Mon, 11 Dec 2023 13:00:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1702299595; x=1733835595;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g3G2RjYO0ZjlRfzDDIT4lRzkMZXiLvsGqGWVUJ3J/Cc=;
  b=H54lqlzAjdOQapBbhjhkaiWugwxU/BYAUawoijhx2q2GgOPOMVgiulyR
   ao6xL4gO/igq619lG4NqLjEeIQq1KQD2TaFvA6xek+kA8S1D3le4nMJRF
   7tjY/gZ6UEGG5lI7FZ6UiKz0Ynioyf2vv4IDpqJbinossPRGoRoaC7mba
   NOreP4RLyhw9SaBaPOSpXPC+MbAXFmYYm2lyD0/IAhDRL6CU5my3abnlG
   Fn7SaFIWxhWrG43NEl4uDWyLYvQaJug/1/sauWkAicW6GWfaq8l/Dg6z9
   P6ecxWSdSNy/HR3hpjWmq84oZDlewNxBzqYYHFgx1wh3LDyOMbzNNGW56
   Q==;
X-CSE-ConnectionGUID: I++IsSqqRAGP8tAFiKojJQ==
X-CSE-MsgGUID: 9jHPT5NsRe+wM6kqL6MW7A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="asc'?scan'208";a="180277566"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Dec 2023 05:59:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 05:59:42 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex04.mchp-main.com (10.10.85.152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 11 Dec 2023 05:59:40 -0700
Date: Mon, 11 Dec 2023 12:59:09 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Roger Quadros <rogerq@kernel.org>
CC: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <mparab@cadence.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
Message-ID: <20231211-saucy-carnation-bce003ea09dd@wendy>
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
 <20230724-unhappily-promptly-b25c7e42504d@spud>
 <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>
MIME-Version: 1.0
In-Reply-To: <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_045955_785889_8B810FB9 
X-CRM114-Status: GOOD (  18.30  )
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
Content-Type: multipart/mixed; boundary="===============8207697847916639072=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8207697847916639072==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IlaqcbunL1B3LURy"
Content-Disposition: inline

--IlaqcbunL1B3LURy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 02:45:48PM +0200, Roger Quadros wrote:
> Hi Conor,
>=20
> On 24/07/2023 20:53, Conor Dooley wrote:
> > On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
> >> Torrent(SD0801) PHY supports two input reference clocks. Update bindin=
gs
> >> to support dual reference clock multilink configurations.
> >>
> >> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> >> ---
> >>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
> >>  1 file changed, 16 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent=
=2Eyaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> index dfb31314face..ddb86ee0cebf 100644
> >> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> @@ -33,16 +33,25 @@ properties:
> >> =20
> >>    clocks:
> >>      minItems: 1
> >> -    maxItems: 2
> >> +    maxItems: 3
> >>      description:
> >> -      PHY reference clock for 1 item. Must contain an entry in clock-=
names.
> >> -      Optional Parent to enable output reference clock.
> >> +      PHY input reference clocks (refclk & refclk1).
> >=20
> > "refclk" and "refclk1" don't seem like great names. What is each one
> > used for & should refclk1 be renamed to match its use case?
>=20
> All PHYs need one refclk input. "refclk"
> Some PHY variants can take a second refclk input. Both are refclks so it =
was
> chosen to add an "1" to the name to the 2nd refclk.
> Please suggest if you have a better idea. Thanks!

The existing second clock name (phy_en_refclk) might serve as
inspiration. What is the additional role that the second reference
serves?

>=20
> >=20
> >> +      Optional Parent to enable output reference clock (phy_en_refclk=
).
> >> =20
> >>    clock-names:
> >> -    minItems: 1
> >> -    items:
> >> -      - const: refclk
> >> -      - const: phy_en_refclk
> >> +    oneOf:
> >> +      - items:
> >> +          - const: refclk
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: phy_en_refclk
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: refclk1
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: refclk1
> >> +          - const: phy_en_refclk
> >> =20
> >>    reg:
> >>      minItems: 1
> >> --=20
> >> 2.34.1
> >>
>=20
> --=20
> cheers,
> -roger

--IlaqcbunL1B3LURy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXcHnQAKCRB4tDGHoIJi
0iiLAP433STH5ISjhoWeEvnlPNZvyHIkdzUN0tRTv2EvEefOwAEAkRo0tQ3o2xKr
DbRxACn03R8h2CpkW6ACjDgeNcIHAwY=
=F6Bi
-----END PGP SIGNATURE-----

--IlaqcbunL1B3LURy--


--===============8207697847916639072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8207697847916639072==--

