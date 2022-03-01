Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B62C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 15:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HAoiufhSe0fOfO10tzqB/0F0UJFT3Zo7MbmOJjb3eJI=; b=V17Oe4/fqn2FsXbP2c+fLMNUXl
	t+JdlivhJoY5L8IgQgwHQGZptZFGWj2MAW+Snhr7Zf+q2ry3wNLnWQvl8CGv4c3JVdoBEG6ZliIdo
	viUlk5mk8qP76+MpGTDq9T49q0fzxfERVo9fmR4HWCjXFS/sQIct6jpoZF98wnpn1jqZELhiXZbx8
	18wF/1pyvMeOqOZBSOV8sMQdxnTh0asLz29EPgXLgAq6DzGjOhptjuMyvyI0+VJDTWE1GCudmsHZG
	P18QgwI6ZhpdI+rUlqqbQkLiR9UyOIQytSZoirqID0iAGVZWXHhknGDXBysUudJIv4BBntRiTkk0x
	qi+emFrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4u5-00HSGH-1I; Tue, 01 Mar 2022 15:59:09 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4ts-00HSCj-EC; Tue, 01 Mar 2022 15:58:58 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id B7AAA20000E;
 Tue,  1 Mar 2022 15:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646150333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p1HaABgS+y/Gfst5xbNMwu8EcDjttBMdhpgl96eHGRE=;
 b=mHTC1Y9/6NFvBqVq+c4md0DDZ5QMZXHvL/3M4g+DF9wz7peCsLrR8kNNZh7O3gwGc+phhS
 NIwBzWPE5kUwQuNa0bchxp55FZbws1L5Xy9eWQ0uFrPpj5yW7tXGx64xsKLUU9p21RrFk3
 wbkX554Dg1I8K6G7XOM2iSu4tbqb4uFn07Sy2rz8hlFRdYiXHO/xyvG0P8x8qAxG9pFw09
 MeyJMaDwc+v5uMiIrKvEbfQ15i8ixIVXEwueRyo2kwp/ze0Oo7c+S1GjBQ4o1gHDsN7fF3
 mo3cu7Hgavwy4j7ZZPn6031crTUmXFH/Nlw7J+/M2cWQLC9b6iGi4b2qHa7n5A==
Date: Tue, 1 Mar 2022 16:58:51 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 63/66] staging: media: Add support for the Allwinner
 A31 ISP
Message-ID: <Yh5CuyEJ+WhIAzYm@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-64-paul.kocialkowski@bootlin.com>
 <YgFFxMd2htKvX0K1@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YgFFxMd2htKvX0K1@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_075856_776244_CFCA5566 
X-CRM114-Status: GOOD (  42.14  )
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
Content-Type: multipart/mixed; boundary="===============1572704325054534163=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1572704325054534163==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rv9snxutxHS4sJyL"
Content-Disposition: inline


--rv9snxutxHS4sJyL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Mon 07 Feb 22, 18:16, Laurent Pinchart wrote:
> Hi Paul,
>=20
> Thank you for the patch.
>=20
> On Sat, Feb 05, 2022 at 07:54:26PM +0100, Paul Kocialkowski wrote:
> > Some Allwinner platforms come with an Image Signal Processor, which
> > supports various features in order to enhance and transform data
> > received by image sensors into good-looking pictures. In most cases,
> > the data is raw bayer, which gets internally converted to RGB and
> > finally YUV, which is what the hardware produces.
> >=20
> > This driver supports ISPs that are similar to the A31 ISP, which was
> > the first standalone ISP found in Allwinner platforms. Simpler ISP
> > blocks were found in the A10 and A20, where they are tied to a CSI
> > controller. Newer generations of Allwinner SoCs (starting with the
> > H6, H616, etc) come with a new camera subsystem and revised ISP.
> > Even though these previous and next-generation ISPs are somewhat
> > similar to the A31 ISP, they have enough significant differences to
> > be out of the scope of this driver.
> >=20
> > While the ISP supports many features, including 3A and many
> > enhancement blocks, this implementation is limited to the following:
> > - V3s (V3/S3) platform support;
> > - Bayer media bus formats as input;
>=20
> Greyscale formats would also be nice to have, if the hardware can
> support that (it mostly just requires the ability to disable the CFA
> interpolation).

As far as I know there's no support for grayscale, only bayer formats
and YUV.

> > - Semi-planar YUV (NV12/NV21) as output;
>=20
> Packed YUV would also be useful if the hardware supports it.

Same here, it only supports planar and semi-planar YUV as output.

> > - Debayering with per-component gain and offset configuration;
> > - 2D noise filtering with configurable coefficients.
> >=20
> > Since many features are missing from the associated uAPI, the driver
> > is aimed to integrate staging until all features are properly
> > described.
> >=20
> > On the technical side, it uses the v4l2 and media controller APIs,
> > with a video node for capture, a processor subdev and a video node
> > for parameters submission. A specific uAPI structure and associated
> > v4l2 meta format are used to configure parameters of the supported
> > modules.
> >=20
> > One particular thing about the hardware is that configuration for
> > module registers needs to be stored in a DMA buffer and gets copied
> > to actual registers by the hardware at the next vsync, when instructed
> > by a flag. This is handled by the "state" mechanism in the driver.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/staging/media/sunxi/Kconfig           |   1 +
> >  drivers/staging/media/sunxi/Makefile          |   1 +
> >  drivers/staging/media/sunxi/sun6i-isp/Kconfig |  13 +
> >  .../staging/media/sunxi/sun6i-isp/Makefile    |   4 +
> >  .../staging/media/sunxi/sun6i-isp/sun6i_isp.c | 572 +++++++++++++
> >  .../staging/media/sunxi/sun6i-isp/sun6i_isp.h |  86 ++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_capture.c | 751 ++++++++++++++++++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_capture.h |  78 ++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_params.c  | 573 +++++++++++++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_params.h  |  52 ++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_proc.c    | 599 ++++++++++++++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_proc.h    |  61 ++
> >  .../media/sunxi/sun6i-isp/sun6i_isp_reg.h     | 275 +++++++
> >  .../sunxi/sun6i-isp/uapi/sun6i-isp-config.h   |  43 +
>=20
> Could you add a TODO file to list the issues that need to be fixed for
> the driver to move out of staging ? I'll already propose one entry:
>=20
> - Add support in libcamera

Maybe it would be good to narrow down what level of support you have in mind
here. Just adding basic support fort the pipeline is probably doable, but
developing complex 3A algorithms would require very significant effort and
it would be a shame that this prevents the driver from leaving staging.

I think another obvious task would be to have a complete uAPI that reflects
all modules that are part of the ISP.

What do you think?

Paul

> This isn't required to merge the driver in staging as long as ABI
> compatibility doesn't need to be preserved until the driver is moved out
> of staging.
>
> >  14 files changed, 3109 insertions(+)
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Kconfig
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/Makefile
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.c
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp.h
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_cap=
ture.c
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_cap=
ture.h
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_par=
ams.c
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_par=
ams.h
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_pro=
c.c
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_pro=
c.h
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/sun6i_isp_reg=
=2Eh
> >  create mode 100644 drivers/staging/media/sunxi/sun6i-isp/uapi/sun6i-is=
p-config.h
>=20
> [snip]
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--rv9snxutxHS4sJyL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIeQrsACgkQ3cLmz3+f
v9H2jgf+N/b7OZxk/ZZM3hYobj15RrI+x8TKse6MSXRy36uwvb7ncA6XvvbKn78m
fvLBGg4D0y3s7WHU+sMiBYWmHyfp8CUCuMmsK4pP0hL97ATEn+tQJDgYVEbKpyYi
fsYNYk2f42wsKG/++VqBImcqWNlGKSwVjOIPL+0Tp/PacAjZrQKKQiMj8Ual9zLX
JdQPMAORdCKsedX6imko0+rCgb7y2lOHslREnI0q+H5doa3XENq6r0bhDlmkjruK
9OuvzL/JJfaSwqA8Wd6LzoxC/mQq4Tw5DHnotsk1z5rfbDN0/v7IvTh6s16Fq0Ws
3giosRl9b6nSW2QSxGILv98e7i6WbQ==
=TKnA
-----END PGP SIGNATURE-----

--rv9snxutxHS4sJyL--


--===============1572704325054534163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1572704325054534163==--

