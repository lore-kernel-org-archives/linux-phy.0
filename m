Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB83C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yLR3LMKKkhgpZdaKARPQRmjRMaRu7tEbPuUGUGF553E=; b=fWWQC9jDVSUtzfESlbLE1yRuBz
	9DwYPsBqn6GjRd8GkBYsExsQBIX03K8HKMXrRoe68gc0m0FU0kpRRjIxtdBgDz4LvgaqRdiDnBrSt
	ogGLROkBk8zMiRcZ2EjxBIMVko/Cq2jr2oYWjs4c18CSWrRyClmdXz1w1uwrN/yVb9uV9MD6QGmaH
	dU66R8VOO+A9SCwvNhK4CRuDj+5kvD/S7EIudOFH2UvvQA0zAtyoTV6+3wV2ugY7JcmJ8aHx9oPqv
	L/uB1LliBfQLIepaaPqcZy23QPOfN6KzBLmSJqnn0g1hGQoVrvYX7/3qJizJ7PVB1AJ09DXRyKvnv
	a03b7CWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIYMq-007tiU-Cd; Fri, 11 Feb 2022 16:01:52 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIYMd-007tbj-Nb; Fri, 11 Feb 2022 16:01:41 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 030E01BF207;
 Fri, 11 Feb 2022 16:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644595297;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Duko2Ex9mF1kR3VF44n+/IxF+p7bsgFC7zyPn4Pi53g=;
 b=K709Tknij2hJlSlpMfefLoXkVm94MGcxSIrnCi6XqneXBOLSsaxG1ZlUIR6yDJwzvI8PRT
 qde6x7m5xlmd+VE5hul6vWHMGR+R5BVU+fl9jbdJV8adpgW2FhDXZwjBToIenhwGxza30a
 8ahWrCM5gwPrNGqy9doLvP1iXXr/rYIwCWph95NAqJ2fxIuB/8vaMPeN28fQPbVxdNXlr8
 ubkNfjeSlQODCh5otmMTUXxsqm/4DYeu5FnvK2t5sNnjW/qFWKoWYJyw0HuHdWaCghxd/m
 XGIVtHku1LEcUHqUDqsRmFNQMkJxzlQRrRhvmUzIHUOR6epwjsvt9SZC7jrnIQ==
Date: Fri, 11 Feb 2022 17:01:33 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 22/66] media: sun6i-csi: Use runtime pm for clocks and
 reset
Message-ID: <YgaIXXPHBMXWwPtO@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-23-paul.kocialkowski@bootlin.com>
 <20220209092203.3fieqs4mbip6heug@houat>
MIME-Version: 1.0
In-Reply-To: <20220209092203.3fieqs4mbip6heug@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_080140_102227_DC741828 
X-CRM114-Status: GOOD (  27.83  )
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
Content-Type: multipart/mixed; boundary="===============5884417506296025907=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5884417506296025907==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Nx26lHQcnXz3q04u"
Content-Disposition: inline


--Nx26lHQcnXz3q04u
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 09 Feb 22, 10:22, Maxime Ripard wrote:
> On Sat, Feb 05, 2022 at 07:53:45PM +0100, Paul Kocialkowski wrote:
> > Wrap the clock and reset preparation into runtime pm functions
> > for better organization of the code.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 94 ++++++++++++++-----
> >  1 file changed, 69 insertions(+), 25 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drive=
rs/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index 2355088fdc37..b53b92b70a89 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -152,40 +152,18 @@ int sun6i_csi_set_power(struct sun6i_csi_device *=
csi_dev, bool enable)
> > =20
> >  	if (!enable) {
> >  		regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, 0);
> > +		pm_runtime_put(dev);
> > =20
> > -		clk_disable_unprepare(csi_dev->clk_ram);
> > -		clk_disable_unprepare(csi_dev->clk_mod);
> > -		reset_control_assert(csi_dev->reset);
> >  		return 0;
> >  	}
> > =20
> > -	ret =3D clk_prepare_enable(csi_dev->clk_mod);
> > -	if (ret) {
> > -		dev_err(csi_dev->dev, "Enable csi clk err %d\n", ret);
> > +	ret =3D pm_runtime_resume_and_get(dev);
> > +	if (ret < 0)
> >  		return ret;
> > -	}
> > -
> > -	ret =3D clk_prepare_enable(csi_dev->clk_ram);
> > -	if (ret) {
> > -		dev_err(csi_dev->dev, "Enable clk_dram_csi clk err %d\n", ret);
> > -		goto clk_mod_disable;
> > -	}
> > -
> > -	ret =3D reset_control_deassert(csi_dev->reset);
> > -	if (ret) {
> > -		dev_err(csi_dev->dev, "reset err %d\n", ret);
> > -		goto clk_ram_disable;
> > -	}
> > =20
> >  	regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, CSI_EN_CSI_EN);
> > =20
> >  	return 0;
> > -
> > -clk_ram_disable:
> > -	clk_disable_unprepare(csi_dev->clk_ram);
> > -clk_mod_disable:
> > -	clk_disable_unprepare(csi_dev->clk_mod);
> > -	return ret;
> >  }
> > =20
> >  static enum csi_input_fmt get_csi_input_format(struct sun6i_csi_device=
 *csi_dev,
> > @@ -800,6 +778,65 @@ static irqreturn_t sun6i_csi_isr(int irq, void *pr=
ivate)
> >  	return IRQ_HANDLED;
> >  }
> > =20
> > +static int sun6i_csi_suspend(struct device *dev)
> > +{
> > +	struct sun6i_csi_device *csi_dev =3D dev_get_drvdata(dev);
> > +
> > +	reset_control_assert(csi_dev->reset);
> > +	clk_disable_unprepare(csi_dev->clk_ram);
> > +	clk_disable_unprepare(csi_dev->clk_mod);
> > +	clk_disable_unprepare(csi_dev->clk_bus);
> > +
> > +	return 0;
> > +}
> > +
> > +static int sun6i_csi_resume(struct device *dev)
> > +{
> > +	struct sun6i_csi_device *csi_dev =3D dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret =3D reset_control_deassert(csi_dev->reset);
> > +	if (ret) {
> > +		dev_err(dev, "failed to deassert reset\n");
> > +		return ret;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(csi_dev->clk_bus);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable bus clock\n");
> > +		goto error_reset;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(csi_dev->clk_mod);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable module clock\n");
> > +		goto error_clk_bus;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(csi_dev->clk_ram);
> > +	if (ret) {
> > +		dev_err(dev, "failed to enable ram clock\n");
> > +		goto error_clk_mod;
> > +	}
> > +
> > +	return 0;
>=20
> You've change the order of the reset vs clock initialization.

Oh right. Is there a preference regarding the order?
It probably makes more sense to release reset once all the clocks are
ready rather than the opposite (so that would match the previous order).

> Also, does that work with CONFIG_PM disabled?

It doesn't, but the driver should really depend on PM anyway (it doesn't ye=
t).
That makes me realize that I didn't cleanup the Kconfig entry, which
should have been updated along the way.

Will fix both next time.

Thanks for the review!

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--Nx26lHQcnXz3q04u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGiF0ACgkQ3cLmz3+f
v9FJzgf9HTEA41JAFrubRuhBAZ80DmRK0FYBKIH6lguEx67U0RAyPJ+XquB+1BZO
CBJzYSRsx2W5Aa2mMuqXQEBfuZH86Bg+nM2COovJGLTHZXqlUSuF4FhI8hw+I8tI
VhnahPpeoko9OrvRgyQ0+pyr2HWUt8QdQvuu++AYBXiDA1/tr8FAPyFIoRhC8ARK
Xw/eDW/Var5V7oX3GJK8at6qxGHfQCmUQtEPz6PDaxNNnhu2XNrsN5pB5PfbfUcu
/9fYCqzfAEtoA4Pc369BMZ+cz2OdZSjOJGjGMX9rbOFas/O79Mia2lipD31qbRj1
2SNPTeX5gkInRgmGzJ6ZKkUKHwcAPg==
=20/+
-----END PGP SIGNATURE-----

--Nx26lHQcnXz3q04u--


--===============5884417506296025907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5884417506296025907==--

