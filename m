Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C115C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:45:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AAFD60FBF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:45:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3AAFD60FBF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uDWxi1DDivGU4UrSHcJBcf7Ny5oDvmqVyEmGJJP0orA=; b=ywNogbTcu3UszSu7P18otzrIju
	U6egsHNcXvhYGy8EeHsEmmhvcD3Q7KH8IUQqORS1Dy/dziN8ZJGTYfO2q8sNme3Ru4flznOz6IjUN
	oXmfLtd5qqzTrsmWs3FSvHFsEmHTBekwvmSOW2WnfEy+VnqAg9LcqfFq1Hww9sivR+QxnNVMGWzgR
	jNvMw5Bmge/9TrbScSXnYomEvQPMzVsT6lGYuLRLaCB4Tj2a2yrlb//+/ynq0tBF2Y39lICvQDtmS
	Yt5OgIUJ+qAwsU1WpVwyJZCSCad/U44c26efczQh6UMNDKFeE+iYNz7izC6Isv0LFskigoVfKAKnK
	DsNBleSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgeu-000YHw-PS; Mon, 13 Sep 2021 07:45:44 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgeg-000YCx-15; Mon, 13 Sep 2021 07:45:31 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id EAB981BF209;
 Mon, 13 Sep 2021 07:45:22 +0000 (UTC)
Date: Mon, 13 Sep 2021 09:45:22 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 19/22] soc: sunxi: mbus: Add A31 ISP compatibles to the
 list
Message-ID: <YT8BkjAZUGGYTR9l@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-20-paul.kocialkowski@bootlin.com>
 <208239ba-01b1-451e-6030-894bd25770c3@sholland.org>
MIME-Version: 1.0
In-Reply-To: <208239ba-01b1-451e-6030-894bd25770c3@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_004530_371925_69E6C32B 
X-CRM114-Status: GOOD (  21.83  )
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
Content-Type: multipart/mixed; boundary="===============1014689689052817196=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1014689689052817196==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="47pajI10N0kGx3V3"
Content-Disposition: inline


--47pajI10N0kGx3V3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 10 Sep 21, 21:36, Samuel Holland wrote:
> On 9/10/21 1:41 PM, Paul Kocialkowski wrote:
> > The A31 ISP sits on the mbus and requires the usual bus address
> > adaptation. Add its compatibles to the list.
>=20
> My understanding is that this driver only exists to work around old DT
> bindings where the interconnects/interconnect-names =3D "dma-mem"
> properties are not required (and so they are historically missing from
> the device trees).
>=20
> For new bindings, it would be better to use those properties and not add
> to this list.

Oh okay, I didn't really look into it and just did the same thing that was
done for the CSI controller. Thanks for the heads up!

Paul

> Regards,
> Samuel
>=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/soc/sunxi/sunxi_mbus.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/drivers/soc/sunxi/sunxi_mbus.c b/drivers/soc/sunxi/sunxi_m=
bus.c
> > index d90e4a264b6f..7f0079ea30b1 100644
> > --- a/drivers/soc/sunxi/sunxi_mbus.c
> > +++ b/drivers/soc/sunxi/sunxi_mbus.c
> > @@ -37,6 +37,7 @@ static const char * const sunxi_mbus_devices[] =3D {
> >  	"allwinner,sun5i-a13-video-engine",
> >  	"allwinner,sun6i-a31-csi",
> >  	"allwinner,sun6i-a31-display-backend",
> > +	"allwinner,sun6i-a31-isp",
> >  	"allwinner,sun7i-a20-csi0",
> >  	"allwinner,sun7i-a20-display-backend",
> >  	"allwinner,sun7i-a20-display-frontend",
> > @@ -50,6 +51,7 @@ static const char * const sunxi_mbus_devices[] =3D {
> >  	"allwinner,sun8i-h3-csi",
> >  	"allwinner,sun8i-h3-video-engine",
> >  	"allwinner,sun8i-v3s-csi",
> > +	"allwinner,sun8i-v3s-isp",
> >  	"allwinner,sun9i-a80-display-backend",
> >  	"allwinner,sun50i-a64-csi",
> >  	"allwinner,sun50i-a64-video-engine",
> >=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--47pajI10N0kGx3V3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmE/AZIACgkQ3cLmz3+f
v9HI1wf/b/uiL/LNM4ar7LYjzQX7BdaBGjb90aD2mdIi3U+jTM2QjcnvDcWrmKXa
KtNwOdxKB+9/l5qoOzNJgoddBs0EMS//K1kcsr/m0s/+bX32+x+IzZlf3JNp5CUp
gO8q2V1PznhOppOajF1ozaBa9O7XXY1HLy3aoxrOQGziWF/OuQKp0K0qag59avxi
jR6bJdBimD2FNMN4vGooXfCfXEKlVgFe1danPQKA9R0Zos7qQSXO4qbEB1PH5NXJ
kNkPyZpLsYbEFH1o7dnzlxKaqmw8uwLsQy8Vy9KkrKgEyMbrchBM86nyPfVcZZPL
FuWgSOGqcL/+uN5VONdKyYxwYU4i6Q==
=ligS
-----END PGP SIGNATURE-----

--47pajI10N0kGx3V3--


--===============1014689689052817196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1014689689052817196==--

