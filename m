Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE218C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 16:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gSRfV9shB4hlwOyCZ7sby8yS9Sa/ZOafrHOfD0u2ZmY=; b=o7domwgmhQ2+yiAaiMw/+cyImq
	PUSO2uH7JTZ/jRj6wmIdMZIoTS18NiH9aIvfDT2r5Gpqv0wULw/lTsbstGcv2P8QEImKQvOFMpZ+s
	IzKNQ9aTGAUtprN30/aSoThau9JHdnHPdbB72uyeTUKXnIX/DpwKQHC5TbHQO4sREAD5++SpiQ1x6
	PVVPw+k1F8uYteKkW0v6IToQiUt46walNvlTaqc79NS+xoCQPwMhAqsomlvV4LylOYQf0hxus3gTV
	XDU0nBWpJl2o6UBJcmkg9ZaPN2fg4k6xPROO9fu50FUSxriETE44OgBlyTTpXGoywp+prrKX7zgyw
	lQ73ofwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIYoX-00812M-19; Fri, 11 Feb 2022 16:30:29 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIYnm-0080gf-8P; Fri, 11 Feb 2022 16:29:48 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7AAA9240009;
 Fri, 11 Feb 2022 16:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644596980;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4kVSfBMlOpLVxwAYqmjgdSsjcSKy3f9ulmjYySBtivY=;
 b=T4TSHYvfEdtrIdt54FMQc8fkxl6Sb+6Fb/eoGRfWYgAdoQJkHicqhpsEGSiJd0cHoyQsF0
 Vfva/O33f9O65QrX1haPnlzjQ2sIPixy0kxvHp+MbuQfN91FPpawkqwPurQIRekmoMFTg5
 qgKvKxWeNpHSODYhBMZuYE2WpvWAEd3JOjoRKSVqgBQcVuJ4n24mz4t3hrZpjVZ4hHSCFQ
 bW4jOJBvKyEPdisxxKSIzqqzIB3HyKBI4ApuvsfblSRxCFUi3AWIy4ujaGUzzOyqQFbkTY
 Lmw/3Fq/7PX7QEpH+8uAap60ARcPDWvaATeXcm8/9Fpz2Nh+MEA1tsWW9xauGA==
Date: Fri, 11 Feb 2022 17:29:37 +0100
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
Subject: Re: [PATCH v2 21/66] media: sun6i-csi: Always set exclusive module
 clock rate
Message-ID: <YgaO8bfP4gKW8BM0@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-22-paul.kocialkowski@bootlin.com>
 <20220207091443.cr5udv7fxx65ptty@houat>
MIME-Version: 1.0
In-Reply-To: <20220207091443.cr5udv7fxx65ptty@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_082942_671119_33274D5C 
X-CRM114-Status: GOOD (  29.76  )
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
Content-Type: multipart/mixed; boundary="===============3511361770497597390=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3511361770497597390==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Tv5rA21o/SqhzaB6"
Content-Disposition: inline


--Tv5rA21o/SqhzaB6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for the review,

On Mon 07 Feb 22, 10:14, Maxime Ripard wrote:
> On Sat, Feb 05, 2022 at 07:53:44PM +0100, Paul Kocialkowski wrote:
> > In some situations the default rate of the module clock is not the
> > required one for operation (for example when reconfiguring the clock
> > tree to use a different parent). As a result, always set the correct
> > rate for the clock (and take care of cleanup).
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 54 ++++++++++++++-----
> >  1 file changed, 41 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drive=
rs/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > index 8155e9560164..2355088fdc37 100644
> > --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> > @@ -154,9 +154,6 @@ int sun6i_csi_set_power(struct sun6i_csi_device *cs=
i_dev, bool enable)
> >  		regmap_update_bits(regmap, CSI_EN_REG, CSI_EN_CSI_EN, 0);
> > =20
> >  		clk_disable_unprepare(csi_dev->clk_ram);
> > -		if (of_device_is_compatible(dev->of_node,
> > -					    "allwinner,sun50i-a64-csi"))
> > -			clk_rate_exclusive_put(csi_dev->clk_mod);
> >  		clk_disable_unprepare(csi_dev->clk_mod);
> >  		reset_control_assert(csi_dev->reset);
> >  		return 0;
> > @@ -168,9 +165,6 @@ int sun6i_csi_set_power(struct sun6i_csi_device *cs=
i_dev, bool enable)
> >  		return ret;
> >  	}
> > =20
> > -	if (of_device_is_compatible(dev->of_node, "allwinner,sun50i-a64-csi"))
> > -		clk_set_rate_exclusive(csi_dev->clk_mod, 300000000);
> > -
> >  	ret =3D clk_prepare_enable(csi_dev->clk_ram);
> >  	if (ret) {
> >  		dev_err(csi_dev->dev, "Enable clk_dram_csi clk err %d\n", ret);
> > @@ -190,8 +184,6 @@ int sun6i_csi_set_power(struct sun6i_csi_device *cs=
i_dev, bool enable)
> >  clk_ram_disable:
> >  	clk_disable_unprepare(csi_dev->clk_ram);
> >  clk_mod_disable:
> > -	if (of_device_is_compatible(dev->of_node, "allwinner,sun50i-a64-csi"))
> > -		clk_rate_exclusive_put(csi_dev->clk_mod);
> >  	clk_disable_unprepare(csi_dev->clk_mod);
> >  	return ret;
> >  }
> > @@ -819,6 +811,7 @@ static int sun6i_csi_resources_setup(struct sun6i_c=
si_device *csi_dev,
> >  				     struct platform_device *platform_dev)
> >  {
> >  	struct device *dev =3D csi_dev->dev;
> > +	unsigned long clk_mod_rate;
> >  	void __iomem *io_base;
> >  	int ret;
> >  	int irq;
> > @@ -856,28 +849,53 @@ static int sun6i_csi_resources_setup(struct sun6i=
_csi_device *csi_dev,
> >  		return PTR_ERR(csi_dev->clk_ram);
> >  	}
> > =20
> > +	if (of_device_is_compatible(dev->of_node, "allwinner,sun50i-a64-csi"))
> > +		clk_mod_rate =3D 300000000;
> > +	else
> > +		clk_mod_rate =3D 297000000;
> > +
> > +	ret =3D clk_set_rate_exclusive(csi_dev->clk_mod, clk_mod_rate);
> > +	if (ret) {
> > +		dev_err(dev, "failed to set mod clock rate\n");
> > +		return ret;
> > +	}
> > +
> >  	/* Reset */
> > =20
> >  	csi_dev->reset =3D devm_reset_control_get_shared(dev, NULL);
> >  	if (IS_ERR(csi_dev->reset)) {
> >  		dev_err(dev, "failed to acquire reset\n");
> > -		return PTR_ERR(csi_dev->reset);
> > +		ret =3D PTR_ERR(csi_dev->reset);
> > +		goto error_clk_rate_exclusive;
> >  	}
> > =20
> >  	/* Interrupt */
> > =20
> >  	irq =3D platform_get_irq(platform_dev, 0);
> > -	if (irq < 0)
> > -		return -ENXIO;
> > +	if (irq < 0) {
> > +		dev_err(dev, "failed to get interrupt\n");
> > +		ret =3D -ENXIO;
> > +		goto error_clk_rate_exclusive;
> > +	}
> > =20
> >  	ret =3D devm_request_irq(dev, irq, sun6i_csi_isr, 0, SUN6I_CSI_NAME,
> >  			       csi_dev);
> >  	if (ret) {
> >  		dev_err(dev, "failed to request interrupt\n");
> > -		return ret;
> > +		goto error_clk_rate_exclusive;
> >  	}
> > =20
> >  	return 0;
> > +
> > +error_clk_rate_exclusive:
> > +	clk_rate_exclusive_put(csi_dev->clk_mod);
> > +
> > +	return ret;
> > +}
> > +
> > +static void sun6i_csi_resources_cleanup(struct sun6i_csi_device *csi_d=
ev)
> > +{
> > +	clk_rate_exclusive_put(csi_dev->clk_mod);
> >  }
>=20
> If you're going to have that function anyway, let's use
> devm_add_action_or_reset, it'll simplify the rest of the patch.

Well, this will cause issues later on when adding runtime pm support to
sun6i_csi_resources_cleanup: then it will no longer be equivalent
to the error case label.

Also I feel like making the resources_cleanup call a devm action would not
help clarify the general flow of the driver, where the matching setup/clean=
up
calls are ordered in probe/remove. The driver is quite big with various par=
ts
and I'd rather have them behave in a coherent and similar way.

What do you think?

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--Tv5rA21o/SqhzaB6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIGjvEACgkQ3cLmz3+f
v9Eq7wf/aVHx73dljDp0YxBy+q2PMLd3CTowE7OvhhXXMz24VfzET01MwXfyxeo0
IpqwMV0dz5U1iy/ofxtZPJW832v08EZXXCod4h3E+L0lRi/HSkJlW67Gt5z4uZmu
4tWN4NXJ2hXJlUT717HxRvTD7sl3oGOODuemqyPwmVLp/FJ/8dZZcwz38cyHXdL7
v1nT9o/Cdpz5Mj1IECQaqEovJ3zU6sTFfd3YAYc4qPYYXmok4mq4GoqChSlB2y4y
9DxH3t/4vciCVCon1d4Z7gOZML2IdzZBx3NwV+TKVUOBNCsVqz/pl4XVG+ZJ+Lvs
bQio4a8S1+h+txomzaXIBPr1XlOENg==
=d+6J
-----END PGP SIGNATURE-----

--Tv5rA21o/SqhzaB6--


--===============3511361770497597390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3511361770497597390==--

