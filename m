Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5179FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:46:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E89160F4A
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:46:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E89160F4A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aeeXy05AeKezF7yncFN0dH+ftuz231EFkwZboan5gTY=; b=at6mvWr6z7FMMjc5RUffnTIoYK
	/5KszA1XzI6q/P23hCflXBKOHuyWx4OpcResgoNYNSRQCevJQMs9W9FPUYQrIf4g7FV0oDzqaXxDY
	0TzrWy507NGysDA+izG1iBqaafgx3zwgVs9G0p9rcv4238vsvbVwSOfwqZ+PHTU1AfRiBbKuTe9yq
	UiGGP8PJqAKrAscfY7DRhF3dMm3GBjZUpN1ttI/eh0Qnv91eFLwwvrW4f4xdfxlGVYTDoqM3Yiw0S
	mVhiNR57u3XhdUwGt4m1URGfqtAgl1+CBwE+Jb2HZCQ8OmbbHomWZ64M8Lz0qSb2NXe+3C5Ctnj5V
	/pX0z33g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgfb-000YVL-Ku; Mon, 13 Sep 2021 07:46:27 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgfM-000YPV-An; Mon, 13 Sep 2021 07:46:14 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 24A0C100007;
 Mon, 13 Sep 2021 07:45:59 +0000 (UTC)
Date: Mon, 13 Sep 2021 09:45:59 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org, linux-clk <linux-clk@vger.kernel.org>,
 linux-staging@lists.linux.dev, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH NOT FOR MERGE 13/22] ARM: dts: sun8i: a83t: Add MIPI
 CSI-2 controller node
Message-ID: <YT8Bt3Fmakn97vi9@aptenodytes>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-14-paul.kocialkowski@bootlin.com>
 <CAGb2v66OHJREEg1Djkk=VyY0yUr5JE8Fp+xsb40wCk6E56bH8A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66OHJREEg1Djkk=VyY0yUr5JE8Fp+xsb40wCk6E56bH8A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_004612_690505_84EA8F54 
X-CRM114-Status: GOOD (  24.68  )
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
Content-Type: multipart/mixed; boundary="===============6380901795565428504=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6380901795565428504==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a3BeDpyJol7qXzGn"
Content-Disposition: inline


--a3BeDpyJol7qXzGn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Chen-Yu,

On Sat 11 Sep 21, 10:53, Chen-Yu Tsai wrote:
> Hi,
>=20
> On Sat, Sep 11, 2021 at 2:42 AM Paul Kocialkowski
> <paul.kocialkowski@bootlin.com> wrote:
> >
> > MIPI CSI-2 is supported on the A83T with a dedicated controller that
> > covers both the protocol and D-PHY. It can be connected to the CSI
> > interface as a V4L2 subdev through the fwnode graph.
> >
> > This is not done by default since connecting the bridge without a
> > subdev attached to it will cause a failure on the CSI driver.
> >
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> I believe you tagged the wrong patch to not be merged? AFAICT it
> should be the next patch that hooks up OV8865, not this one.

Yes you are definitely right, this patch is good for merge and the next
one is not.

Thanks,

Paul

> > ---
> >  arch/arm/boot/dts/sun8i-a83t.dtsi | 26 ++++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8=
i-a83t.dtsi
> > index ac97eac91349..1fa51f7ef063 100644
> > --- a/arch/arm/boot/dts/sun8i-a83t.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
> > @@ -1064,6 +1064,32 @@ csi: camera@1cb0000 {
> >                         status =3D "disabled";
> >                 };
> >
> > +               mipi_csi2: csi@1cb1000 {
> > +                       compatible =3D "allwinner,sun8i-a83t-mipi-csi2";
> > +                       reg =3D <0x01cb1000 0x1000>;
> > +                       interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > +                       clocks =3D <&ccu CLK_BUS_CSI>,
> > +                                <&ccu CLK_CSI_SCLK>,
> > +                                <&ccu CLK_MIPI_CSI>,
> > +                                <&ccu CLK_CSI_MISC>;
> > +                       clock-names =3D "bus", "mod", "mipi", "misc";
> > +                       resets =3D <&ccu RST_BUS_CSI>;
> > +                       status =3D "disabled";
> > +
> > +                       ports {
> > +                               #address-cells =3D <1>;
> > +                               #size-cells =3D <0>;
> > +
> > +                               mipi_csi2_in: port@0 {
> > +                                       reg =3D <0>;
> > +                               };
> > +
> > +                               mipi_csi2_out: port@1 {
> > +                                       reg =3D <1>;
> > +                               };
> > +                       };
> > +               };
> > +
> >                 hdmi: hdmi@1ee0000 {
> >                         compatible =3D "allwinner,sun8i-a83t-dw-hdmi";
> >                         reg =3D <0x01ee0000 0x10000>;
> > --
> > 2.32.0
> >
> >

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--a3BeDpyJol7qXzGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmE/AbcACgkQ3cLmz3+f
v9GBrgf9HSUZdAaK36cq9m6svkBM+jphy40Yx1unln6fFfLoQoLluNFl8vwi5iKc
Gb42Npg4NojviHDFxq71JtZiURP/pz9HiqmE7eOB0c9rdxL+SDXE9zzK8BfOXOwi
1oySmXYcP2zbseeQHZ5VCCUzMZBcGWtnZTq+IJuYktq1F0448cYzUC1h7sdI0dbs
yuEb9x2Xz0HtlLd5GuY8G3azwmyZxNdEotTP3LcFJ2mHbjxBvu6butmych9IOanN
wnIPiULd3YFmoJ9khRL1KfKZ0N7WkZRLZBTlbhKrv5PIeQNjTWIIFjNN7y/gvEOZ
omUKtZSmJY9vCNYwFHoATT43SX7uyA==
=MNI6
-----END PGP SIGNATURE-----

--a3BeDpyJol7qXzGn--


--===============6380901795565428504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6380901795565428504==--

