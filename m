Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000D8C7EE31
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 06:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=COpi1pc0DHi9UYvNQRwqG9Xz/PNleyXQMI3c12qtME8=; b=Eg7H7mICNXTphdGVBjRUsvFioF
	z0/jLqncm0VKk5GQK+B6TTwbRbJHbhqwhYjlgLuJ/WcDnZ47T/OSQVkZsOI7KIYbhLyleVpwksWgC
	YamflNvV8WDEH3Yoh/hDH60bAMvV8BrPUYCRA3RO1Im2pUt56twCW+3tlrzB/7Xx8yCsZq+G0np1/
	huB9VBvMplN2bRS/HIo1trWyKMsDYrPyjmLntFnyGekmwGxn+k6mwgWHyVmzMmy+I+MIDy+l1+39u
	D+Z+Z07+3KvWnUYoKZ8GzTA6uzNvxC9Lt/X6CRRm8+RrEOD229fELFivgTE6QF2SaMyeiZ4Dlt8iD
	kaTVDLvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tIR-00Cdax-1u;
	Tue, 30 May 2023 06:57:31 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tIN-00CdZh-2V
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 06:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685429847; x=1716965847;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=VOir9wRdXMhSVA1RPy8DGCcS8yW7/ACO/H4hKKTX2dY=;
  b=j/GLVjm4Vouw30GeJc8rvdezov6LpVQ/1mk6wBrQejF8+n+Veh5t0qTT
   zBq7hJyNXqwmlgxb99plew2VxFZZ2AvQ+5/QsjYgp4Yy7nYGbzMsekDMm
   XW4QhdsmAoakGtg776xnToonmdLvnc85vGVEl0Q+C0ukOfOiXlcYiil6y
   L54NeRtcgJ/7y36N53Wt86+rLYEyejYMg1Bsk83YwucliTK9P9RwRbwj1
   CY/nRYqtSFSL+vQaA+LDpD4r/NOipmEcb5i83RnNE23ACsNTSqA5UA/b9
   TXkwVmO4RatL6bo3V0/U78f1az3294ugcxsjcyyeP0BvLdYePHuhYUkir
   g==;
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; 
   d="asc'?scan'208";a="215392567"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 29 May 2023 23:57:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 29 May 2023 23:57:23 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 29 May 2023 23:57:20 -0700
Date: Tue, 30 May 2023 07:56:57 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
CC: Conor Dooley <conor@kernel.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, Flavio Suligoi
	<f.suligoi@asem.it>, Mathias Nyman <mathias.nyman@linux.intel.com>, Douglas
 Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Ray
 Chi <raychi@google.com>, Michael Grzeschik <m.grzeschik@pengutronix.de>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0/3.0 PHY
Message-ID: <20230530-monsieur-dumpling-32c102f78c56@wendy>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-3-stanley_chang@realtek.com>
 <20230529-impurity-dismount-bca5c9100c9b@spud>
 <44015844858c42a79e0e7f9207d01496@realtek.com>
MIME-Version: 1.0
In-Reply-To: <44015844858c42a79e0e7f9207d01496@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_235727_839617_1BAA6972 
X-CRM114-Status: GOOD (  24.32  )
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
Content-Type: multipart/mixed; boundary="===============1369859203132290752=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============1369859203132290752==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W3NXbn335O8/41NE"
Content-Disposition: inline

--W3NXbn335O8/41NE
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 03:08:29AM +0000, Stanley Chang[=E6=98=8C=E8=82=B2=
=E5=BE=B7] wrote:
> Hi Conor,
>=20
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - realtek,usb2phy
> > > +      - realtek,rtd-usb2phy
> > > +      - realtek,rtd1295-usb2phy
> > > +      - realtek,rtd1395-usb2phy
> > > +      - realtek,rtd1619-usb2phy
> > > +      - realtek,rtd1319-usb2phy
> > > +      - realtek,rtd1619b-usb2phy
> > > +      - realtek,rtd1312c-usb2phy
> > > +      - realtek,rtd1319d-usb2phy
> > > +      - realtek,rtd1315e-usb2phy
>=20
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - realtek,usb3phy
> > > +      - realtek,rtd-usb3phy
> > > +      - realtek,rtd1295-usb3phy
> > > +      - realtek,rtd1619-usb3phy
> > > +      - realtek,rtd1319-usb3phy
> > > +      - realtek,rtd1619b-usb3phy
> > > +      - realtek,rtd1319d-usb3phy
>=20
> > Ignoring everything else, because I really want Krzysztof or Rob to
> > review this rather than me, but what's going on here with the
> > compatibles?
> > What hardware do "usbNphy" and "rtd-usbNphy" represent?
> >=20
> > You have device-specific compatibles, which is great, but you also allow
> > only those two generic ones. I had a _brief_ look at the driver, and it
> > seems like there is no decision making done based on the compatibles,
> > only on the properties. Is that correct?
> > If it is, I would understand having "realtek,usb3phy" as a fallback
> > compatible for "realtek,rtd1619-usb3phy", but I do not get the current
> > setup.
>=20
> This driver is compatible with all Realtek RTD SoCs without specifying di=
fferent settings.
> So use "realtek,usb3phy" as fallback compatible for all SoCs.
> This is the compatible name we use.
> Other compatible names simply indicate that the driver supports the SoCs.

Then you should write the binding such that having fallback compatibles
is permitted. Try plugging
compatible =3D "realtek,rtd1295-usb2phy", "realtek,rtd-usb2phy", "realtek,u=
sb2phy";
into your example below and see what happens.

> The name "usbNphy" and "rtd-usbNphy" seem to be more generic for all RTD =
SoCs,
> but they are not device-specific compatible.
> Do you have a better suggestion?

Write the binding so that having fallback compatibles in the DT actually
works, don't add the SoC-specific ones merely as indicators that those
SoCs are supported and don't permit "realtek,usbNphy" or
"realtek,rtd-usbNphy" in isolation ;)

Cheers,
Conor.

--W3NXbn335O8/41NE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHWeKgAKCRB4tDGHoIJi
0gUMAQDaAWRa95AFdcTrun9KJrWgJmpk4c2Jh03zukk+uTrWkQEAp5S58xu4+voq
u38k5+Xn+V6Fiovzr8Qywo1BJggf1Q0=
=a78/
-----END PGP SIGNATURE-----

--W3NXbn335O8/41NE--


--===============1369859203132290752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1369859203132290752==--

