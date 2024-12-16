Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0269CE7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 10:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlKIiTae6FJpSblCNPSUCof1q2A8WaqvrGN0e/o0Aq0=; b=RY7Ve9FegIMhsh
	5n4jZjwkVydfS4iMiMgMtG0+cPLj86SzobQRaj7uc0u/tjQiHfFaDjQN4twQ+uySVAn0eQJAgpOLI
	GPiySgv/aRLYGxTYrVbYwP7MKjgTi4wTt7EmdVVXBw3F4uR5hOgP7VLeoI8Ay8LDFjwLrq5yMk6X7
	zNrXn+8Z9dSt8FCa0iC+ko8d9NcHWAr0/Y9sJ9qcJTxWE6FSa/lmDgfXWXa4YaOunZ3m43Bzy9EeR
	oBAklH7Vb89s46snJcfhHsLS5Kdfp/6Yxtmr5srgBfceZgcy7goHqsy2tcTJT90Uhq80WV2Hfob0t
	mu34VktiOlQ7664aeZ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN813-00000009dmQ-04lt;
	Mon, 16 Dec 2024 10:07:53 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7yH-00000009d9F-153Y
	for linux-phy@lists.infradead.org;
	Mon, 16 Dec 2024 10:05:02 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ffa49f623cso49007991fa.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Dec 2024 02:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734343499; x=1734948299; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=jXcy8H4j5shxWUZzhgEvSr2nhVuRTCZ+Tw32xVEgZr2eYL26fHo+0eoW+isemAJjlk
         oehjlVkteZMDAyVlt3+OYvgss/cYOV3UWqU8fpL+1kdb/iXxTXOb8rbkmBa147s0wkgn
         XLoYYVH3OXEvlMi44C2TJh6CvM4k6vRlCWR3dshY6AxZSNFh1pB5GOu3+SCRCL7ujdkI
         I4gAgPZzMMkZUenGwXQKKh7uf9CYhxC8kLIl1pFALCuPnv/P3nep5+TOEVIBku64G0PO
         3xZ+hBQz8zm9OZ3YRJEEhgBNLXczzKunq6TmoUX/pu1D4gbgnEEoZuqis2MqhOvgTsx/
         iI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734343499; x=1734948299;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=oOFSuI+q4VIfo5n9DwNOtuYajGA4NadA4JhLPtF64dXz9h4YnUOCwzFJvkq7tekCX/
         RlCf6aftFDZkCK04CPJZ5aAkLIpLiiqDHHBSOfJMhe4j0y5DVcjR/3g1RfAbWtSs70g8
         zjUjbsdTVuWGA8VHAeFtRCPUaqQSQ9LoC+FVTw8+9uDusVGZ5t97pM1WqVY8D4x+lTEG
         6mNBIrbofnnE5LZcwESO8B/ahoyT6BJ2uSJ7IvstK265WOVRs/+OszQB8CohjGz08HZf
         ZWGi75vNB+ojVQu2XUG4RrKc+G0U4zI4cCidFhwZ1n+tiX7/YF2uyusFRb2yuGSIsRCV
         LIpw==
X-Forwarded-Encrypted: i=1; AJvYcCVYdVj1hWJQO5skdUDse2TqZhvV7JR7UPofP0TbhWebQU3HC8VHpXLKPUwKXNECUX55s67M0LEKlzg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCI/bGXwV3tPwyeZdCIfO9rL85T6ZMZhtsQCjiSKtdHjVTIh7t
	gDHvLo7SpScJEZxznpB1U/xvBD9rH5OraFGrzze5+bG2Hnj/y7v63UuNNlevofc=
X-Gm-Gg: ASbGncutsXRhotz/ihhZG0AgFL0wfIPcGVCkSY3VehJzbwSXLAp2BeetWEV8XxS41uk
	XRHvxHp4bPTR7zdoFAQ9SPtFnDhiakBPub2CNBcQy93D+keOHV0D9WyvPo9aCHhNkRKrR3ulwaH
	0xLm08/fV0a+LhV3mNlf7LA0WtWOczshrMZSy2ITEeYi4o74pkmvFQ2WNOdO5TzW0b/1YAbq6zM
	XYMAPGlsx9yMQFEUkS5mxMsACwfyFlKdb2hMfKp+7ZUB6eF6S5Z8+RCT4EtfNeRdHttRdP6UA1a
	QP+fPcswnB46YDiWXXqdMK5654qzrlWXL9e5
X-Google-Smtp-Source: AGHT+IEANV1rjeOcZD+mfElWFOCdmwQitk5ard7G/sdmw/kgz+ZvJnKtp9SusUqTBt+TDbtuy27Lww==
X-Received: by 2002:a2e:a99e:0:b0:302:16da:a052 with SMTP id 38308e7fff4ca-302544ae804mr44008281fa.27.1734343499432;
        Mon, 16 Dec 2024 02:04:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344045239sm8283241fa.36.2024.12.16.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 02:04:58 -0800 (PST)
Date: Mon, 16 Dec 2024 12:04:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Damon Ding <damon.ding@rock-chips.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 03/11] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <25bh2uy6wg3kcoqmnzt5dwfamc32bjyjlivkqq4cvne6kryj3z@svlz45bbaoy7>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-4-damon.ding@rock-chips.com>
 <gwogudb5vae7wu452zwuqmdlyaibenoso4f5pjmu3uttckhy2w@shndol4mz5n4>
 <4395748.ejJDZkT8p0@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4395748.ejJDZkT8p0@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_020501_318888_FE6137F6 
X-CRM114-Status: GOOD (  32.39  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Dec 16, 2024 at 10:11:54AM +0100, Heiko St=FCbner wrote:
> Am Montag, 16. Dezember 2024, 09:57:41 CET schrieb Dmitry Baryshkov:
> > On Mon, Dec 16, 2024 at 11:12:17AM +0800, Damon Ding wrote:
> > > RK3588 integrates the analogix eDP 1.3 TX controller IP and the HDMI/=
eDP
> > > TX Combo PHY based on a Samsung IP block, and there are also two
> > > independent eDP display interface on RK3588 Soc.
> > > =

> > > Add just the basic support for now, i.e. RGB output up to 4K@60Hz, wi=
thout
> > > the tests of audio, PSR and other eDP 1.3 specific features.
> > > =

> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > =

> > > ---
> > > =

> > > Changes in v2:
> > > - Add support for the other eDP output edp1
> > > ---
> > >  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 82 ++++++++++++++++-=
--
> > >  include/drm/bridge/analogix_dp.h              |  3 +-
> > >  2 files changed, 74 insertions(+), 11 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/driver=
s/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > index 871606a31ef1..4c9a55776ada 100644
> > > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > @@ -51,10 +51,12 @@ struct rockchip_grf_reg_field {
> > >  /**
> > >   * struct rockchip_dp_chip_data - splite the grf setting of kind of =
chips
> > >   * @lcdc_sel: grf register field of lcdc_sel
> > > + * @edp_mode: grf register field of edp_mode
> > >   * @chip_type: specific chip type
> > >   */
> > >  struct rockchip_dp_chip_data {
> > >  	const struct rockchip_grf_reg_field lcdc_sel;
> > > +	const struct rockchip_grf_reg_field edp_mode;
> > >  	u32	chip_type;
> > >  };
> > >  =

> > > @@ -134,12 +136,21 @@ static int rockchip_dp_poweron(struct analogix_=
dp_plat_data *plat_data)
> > >  		return ret;
> > >  	}
> > >  =

> > > +	ret =3D rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
> > > +	if (ret !=3D 0)
> > > +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
> > =

> > Is it to be called for non-eDP hosts too? Or for older hosts?
> =

> The implementation of rockchip_grf_field_write (in patch1) seems to
> take care of checking if that field actually exists and doing nothing if
> not.
> =

> I think eDP/DP is more a naming thing, the Analogix controller is called
> an eDP controller in all documentation things.
> =

> Even back on rk3288, the Analogix-DP, still is called an eDP controller in
> documentation, with the only difference being that it does not contain
> another additional "dedicated" DP controller

At the very least this should be mentioned in the commit message.

> > > +	i =3D 0;
> > > +	while (is_rockchip(dp_data[i].chip_type))
> > > +		i++;
> > > +
> > > +	if (id >=3D i) {
> > > +		DRM_DEV_ERROR(dev, "invalid edp id: %d\n", id);
> > > +		return -ENODEV;
> > > +	}
> > =

> > Is it applicable to non-eDP case?
> =

> same as above, it's always called eDP in all pieces of documentation,
> (Compliant with DP 1.2 and eDP 1.3)

Ack

> =

> Heiko
> =

> > > +
> > >  	dp->dev =3D dev;
> > >  	dp->adp =3D ERR_PTR(-ENODEV);
> > > -	dp->data =3D dp_data;
> > > +	dp->data =3D &dp_data[id];
> > >  	dp->plat_data.panel =3D panel;
> > >  	dp->plat_data.dev_type =3D dp->data->chip_type;
> > >  	dp->plat_data.power_on =3D rockchip_dp_poweron;
> > > @@ -464,19 +507,38 @@ static int rockchip_dp_resume(struct device *de=
v)
> > >  static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_sus=
pend,
> > >  		rockchip_dp_resume, NULL);
> > >  =

> > > -static const struct rockchip_dp_chip_data rk3399_edp =3D {
> > > -	.lcdc_sel =3D GRF_REG_FIELD(0x6250, 5, 5),
> > > -	.chip_type =3D RK3399_EDP,
> > > +static const struct rockchip_dp_chip_data rk3399_edp[] =3D {
> > > +	{
> > > +		.lcdc_sel =3D GRF_REG_FIELD(0x6250, 5, 5),
> > > +		.chip_type =3D RK3399_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > > +};
> > > +
> > > +static const struct rockchip_dp_chip_data rk3288_dp[] =3D {
> > > +	{
> > > +		.lcdc_sel =3D GRF_REG_FIELD(0x025c, 5, 5),
> > > +		.chip_type =3D RK3288_DP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  =

> > > -static const struct rockchip_dp_chip_data rk3288_dp =3D {
> > > -	.lcdc_sel =3D GRF_REG_FIELD(0x025c, 5, 5),
> > > -	.chip_type =3D RK3288_DP,
> > > +static const struct rockchip_dp_chip_data rk3588_edp[] =3D {
> > > +	{
> > > +		.edp_mode =3D GRF_REG_FIELD(0x0000, 0, 0),
> > > +		.chip_type =3D RK3588_EDP,
> > > +	},
> > > +	{
> > > +		.edp_mode =3D GRF_REG_FIELD(0x0004, 0, 0),
> > > +		.chip_type =3D RK3588_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  =

> > >  static const struct of_device_id rockchip_dp_dt_ids[] =3D {
> > >  	{.compatible =3D "rockchip,rk3288-dp", .data =3D &rk3288_dp },
> > >  	{.compatible =3D "rockchip,rk3399-edp", .data =3D &rk3399_edp },
> > > +	{.compatible =3D "rockchip,rk3588-edp", .data =3D &rk3588_edp },
> > >  	{}
> > >  };
> > >  MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
> > > diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/an=
alogix_dp.h
> > > index 6002c5666031..54086cb2d97d 100644
> > > --- a/include/drm/bridge/analogix_dp.h
> > > +++ b/include/drm/bridge/analogix_dp.h
> > > @@ -15,11 +15,12 @@ enum analogix_dp_devtype {
> > >  	EXYNOS_DP,
> > >  	RK3288_DP,
> > >  	RK3399_EDP,
> > > +	RK3588_EDP,
> > >  };
> > >  =

> > >  static inline bool is_rockchip(enum analogix_dp_devtype type)
> > >  {
> > > -	return type =3D=3D RK3288_DP || type =3D=3D RK3399_EDP;
> > > +	return type =3D=3D RK3288_DP || type =3D=3D RK3399_EDP || type =3D=
=3D RK3588_EDP;
> > >  }
> > >  =

> > >  struct analogix_dp_plat_data {
> > =

> > =

> =

> =

> =

> =


-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
