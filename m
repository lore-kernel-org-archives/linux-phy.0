Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6747C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 17 Mar 2022 16:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=flLw4HS4T2ZiIXAwO/LylPdVrMyJ3RfDZMd4QMMdCus=; b=Mz03uT5HqV5/2kpG6l0hbNkJaY
	1PCZE0Zj2jTaIcVl1SGO1AA1RrP+s0IeHWNAylVoYuU6wL+2thhPPfmS6zXh8tk3FM/uNGc8DXABL
	lQOqSVE8nq/MHMCxCFfSl84aNYufnk/cND0t9CHEa3xIsFmkIs25mLIuBoeSgTHdLlDIILZzBzPXM
	frVln2PPKW+gSGy390qBKYO8beyrmtjoSaaVwK8NQzlFzwG62ckzfAJnLb2aO1lzQEoXJUqOzUIX9
	4/O8OUuZRC6bt7J0TASwy6KRAsGqlP5bN/eA3rBDqQI+W4/eAxiVWt4Ui1AgB/LogqObXyflJWUa0
	6qipWPSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUt0u-00GnBV-Nx; Thu, 17 Mar 2022 16:30:12 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUswS-00Gki4-TR; Thu, 17 Mar 2022 16:25:38 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 022D71C000F;
 Thu, 17 Mar 2022 16:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1647534333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ALLei3Iid7g2f1Vlipcd3o4ARbpYuWc1mA/FuF55Vc8=;
 b=k9f2Sl/YQbbeQF2+xpKVWjRLn+R21VdIU6zkCahjTpxNn0SWaJien4auiqVQBavL9Qm+E7
 eprs5GO1ca5uE+oIgeltqYtcB83uVuDX8DtdW+WQY4cXY7plXWp9owt+qOlx/AbKnkNUWj
 1ocrN2PvfVeGSjNYZoPphiLcKjwcp9cTI+QfuW56iHcjvde17Ph83Hw6JngXQjMkXUPG+4
 T+TZbml6cUtyYqEEYExF6T98cRR/bmNV+UZ8qy3moYP7czZzwQ0uBMhVlMzVzCOmJh4th4
 2KGYIaiIilZoAOtv/Of545k1tyQm/1SE7x+DLL6G1LfbmJ3/iL21LoML05pu5Q==
Date: Thu, 17 Mar 2022 17:25:29 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 5/9] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <YjNg+T+J1YkOm9LE@aptenodytes>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-6-paul.kocialkowski@bootlin.com>
 <YjHluwVnbPyHo1kp@paasikivi.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YjHluwVnbPyHo1kp@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_092537_252112_EFE6CC64 
X-CRM114-Status: GOOD (  26.65  )
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
Content-Type: multipart/mixed; boundary="===============2504128167146640703=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2504128167146640703==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bi/43uRme1u2xO1q"
Content-Disposition: inline


--bi/43uRme1u2xO1q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sakari,

On Wed 16 Mar 22, 15:27, Sakari Ailus wrote:
> Hi Paul,
>=20
> Thanks for the set.
>=20
> On Wed, Mar 02, 2022 at 11:07:35PM +0100, Paul Kocialkowski wrote:
> ...
> > +static int sun6i_mipi_csi2_s_stream(struct v4l2_subdev *subdev, int on)
> > +{
> > +	struct sun6i_mipi_csi2_device *csi2_dev =3D v4l2_get_subdevdata(subde=
v);
> > +	struct v4l2_subdev *source_subdev =3D csi2_dev->bridge.source_subdev;
> > +	union phy_configure_opts dphy_opts =3D { 0 };
> > +	struct phy_configure_opts_mipi_dphy *dphy_cfg =3D &dphy_opts.mipi_dph=
y;
> > +	struct v4l2_mbus_framefmt *mbus_format =3D &csi2_dev->bridge.mbus_for=
mat;
> > +	const struct sun6i_mipi_csi2_format *format;
> > +	struct phy *dphy =3D csi2_dev->dphy;
> > +	struct device *dev =3D csi2_dev->dev;
> > +	struct v4l2_ctrl *ctrl;
> > +	unsigned int lanes_count =3D
> > +		csi2_dev->bridge.endpoint.bus.mipi_csi2.num_data_lanes;
> > +	unsigned long pixel_rate;
> > +	/* Initialize to 0 to use both in disable label (ret !=3D 0) and off.=
 */
> > +	int ret =3D 0;
> > +
> > +	if (!source_subdev)
> > +		return -ENODEV;
> > +
> > +	if (!on) {
> > +		v4l2_subdev_call(source_subdev, video, s_stream, 0);
> > +		goto disable;
> > +	}
> > +
> > +	/* Runtime PM */
> > +
> > +	ret =3D pm_runtime_resume_and_get(dev);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	/* Sensor Pixel Rate */
> > +
> > +	ctrl =3D v4l2_ctrl_find(source_subdev->ctrl_handler, V4L2_CID_PIXEL_R=
ATE);
> > +	if (!ctrl) {
> > +		dev_err(dev, "missing sensor pixel rate\n");
> > +		ret =3D -ENODEV;
> > +		goto error_pm;
> > +	}
> > +
> > +	pixel_rate =3D (unsigned long)v4l2_ctrl_g_ctrl_int64(ctrl);
> > +	if (!pixel_rate) {
> > +		dev_err(dev, "missing (zero) sensor pixel rate\n");
> > +		ret =3D -ENODEV;
> > +		goto error_pm;
> > +	}
> > +
> > +	/* D-PHY */
> > +
> > +	if (!lanes_count) {
>=20
> I first thought this check could be moved to the beginning, but it's also
> redundant. v4l2_fwnode_endpoint_parse() will check the configuration is
> valid, i.e. the number of lanes is not zero.

Good to know, thanks!

> But should you add checks to make sure the hardware supports what has been
> configured? I'd do that right after parsing the endpoint.

I guess you mean checking that we don't get more than 4 lanes?
And maybe something related to lane ordering too?

> And you only seem to be using the number of data lanes, nothing more. So
> I'd store that, instead of the entire parsed v4l2_fwnode_endpoint.

That's correct, why not.

> The same applies to patch 8.
>=20
> I think these could be done on top of this set after it is merged. Up to
> you.

I'll go for another iteration.

Thanks!

Paul

> ...
>=20
> > +static int
> > +sun6i_mipi_csi2_bridge_source_setup(struct sun6i_mipi_csi2_device *csi=
2_dev)
> > +{
> > +	struct v4l2_async_notifier *notifier =3D &csi2_dev->bridge.notifier;
> > +	struct v4l2_fwnode_endpoint *endpoint =3D &csi2_dev->bridge.endpoint;
> > +	struct v4l2_async_subdev *subdev_async;
> > +	struct fwnode_handle *handle;
> > +	struct device *dev =3D csi2_dev->dev;
> > +	int ret;
> > +
> > +	handle =3D fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0,
> > +						 FWNODE_GRAPH_ENDPOINT_NEXT);
> > +	if (!handle)
> > +		return -ENODEV;
> > +
> > +	endpoint->bus_type =3D V4L2_MBUS_CSI2_DPHY;
> > +
> > +	ret =3D v4l2_fwnode_endpoint_parse(handle, endpoint);
> > +	if (ret)
> > +		goto complete;
> > +
> > +	subdev_async =3D v4l2_async_nf_add_fwnode_remote(notifier, handle,
> > +		struct v4l2_async_subdev);
> > +	if (IS_ERR(subdev_async))
> > +		ret =3D PTR_ERR(subdev_async);
> > +
> > +complete:
> > +	fwnode_handle_put(handle);
> > +
> > +	return ret;
> > +}
>=20
> --=20
> Kind regards,
>=20
> Sakari Ailus

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--bi/43uRme1u2xO1q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmIzYPkACgkQ3cLmz3+f
v9FKsQf/REx8HWGAsHL4EqjK6NNY4P9j3krw6UROSlwsH6bZY5rQyi+CvqZgK3/P
yD7lqlJLu0Ejaifq6TFv/2G5trwxpR9CMdUS4XDGLKMNpQwFQihPIKN9GeZaB9GJ
xEWMgbnwMd+j7ip9XOPtQNNLMmEiuGEJe1cNgWNOlY6srAvLgJ9oe6ceUhEJoGWa
OZhAZ7ZUYNY0QAxZ343P3W9cIvGEOJEDGXEz29BUlNH3XKvzFyw6esG7CI606aE0
HoNlm/6r3uPwvjcmTu8TmX/bAFInySEN+KED2AQEFJfNnX3OQSLgwz+nM857wva7
0iXY8fnh8ItjVpkNOGg8hZ066dzSCg==
=1gfj
-----END PGP SIGNATURE-----

--bi/43uRme1u2xO1q--


--===============2504128167146640703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2504128167146640703==--

