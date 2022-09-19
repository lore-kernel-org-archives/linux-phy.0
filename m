Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 096FBC54EE9
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 12:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkJ8TpAr+SYWn4BxXXuaXYqjD/pLCPHWVesKeVOGxHA=; b=zQMHA9awbHg+YU
	y8iheY8mC9G0t+aOcqCHKnFGU9QHuo+cQuLj76E/J+4jTJ3bulfDrfKoxHt2oRGimRGS3Pd7TuK3f
	uU+PaEgBMOoo9x3NjASSq80O65nzIvIDHy70fV/YeHV6nt51vjMlkXJZ6HgF1T7Pi32HTmRAaizeF
	sWtd5EgaPJymA7ayx3J/yX0e2Zfn0j23LfFOliznoz0DqZmxlfimcIdZMf11J0SdK+Cn1ENkHmN/g
	OAyANr7H+YKjplyyrYhd/VQVNYrAuQ+zmSXJ0bqU6sNrmCaojgKKr8UveiCFJPrUYKmGslkTYzhka
	pp9qIxzFmlLlgdshaw1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGDE-00BkTz-F0; Mon, 19 Sep 2022 12:49:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaGD9-00BkSs-OU
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 12:49:23 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 00B4C9BA;
	Mon, 19 Sep 2022 14:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1663591758;
	bh=MDnUyaqe3HI/Mz8QwTgArxqhSJzEfcjv0LbU6gvrDHo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LU4PEslzwJjXnX8aT8CerjX8IS8utDJnxeEV3voWQmGrn+ku+xCeqLXQNABHF0QHF
	 LqPmeSLcLOE+/4Fmv4EA8aN/ZIPz/FHwPmSzAZrBp4oSfA0D345d28WSTpDJiEiwpp
	 1EaSipzPBvfkSwuPAB3gYOHMlGomZ8b11JTuBVI0=
Date: Mon, 19 Sep 2022 15:49:04 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, mchehab@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, vkoul@kernel.org, hverkuil@xs4all.nl,
	jacopo@jmondi.org, kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <YyhlQPhezmLG8ZCn@pendragon.ideasonboard.com>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhjB+RbLokmBKPx@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyhjB+RbLokmBKPx@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_054919_966868_02771FE4 
X-CRM114-Status: GOOD (  31.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Sep 19, 2022 at 12:39:35PM +0000, Sakari Ailus wrote:
> Hi Marco,
> 
> Looks good, a few comments below...
> 
> On Fri, Sep 16, 2022 at 03:45:35PM +0200, Marco Felsch wrote:
> > Adding support for the TC358746 parallel <-> MIPI CSI bridge. This chip
> > supports two operating modes:
> >   1st) parallel-in -> mipi-csi out
> >   2nd) mipi-csi in -> parallel out
> > 
> > This patch only adds the support for the 1st mode.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Changelog:
> > 
> > v2:
> > - use the correct CID_LINK_FREQ control to query the sensor_pclk_rate
> > - remove now not needed tc358746_link_setup() and
> >   struct v4l2_ctrl sensor_pclk_ctrl
> > - call v4l2_subdev_link_validate_default() during link validation
> > - remove MEDIA_BUS_FMT_GBR888_1X24/YUV444 format support
> > - use subdev active_state API
> > - replace own .get_fmt with v4l2_subdev_get_fmt
> > - remove unnecessary pad checks
> > - restructure tc358746_get_format_by_code() if-case
> > - move apply_dphy_config|apply_misc_config from resume intos s_stream
> > - use goto in s_stream enable case
> > - fix error handling in suspend/resume
> > - split probe() into more sub-functions
> > - use dev_dbg() for printing successful probe
> > 
> >  drivers/media/i2c/Kconfig    |   17 +
> >  drivers/media/i2c/Makefile   |    1 +
> >  drivers/media/i2c/tc358746.c | 1682 ++++++++++++++++++++++++++++++++++
> >  3 files changed, 1700 insertions(+)
> >  create mode 100644 drivers/media/i2c/tc358746.c

[snip]

> > diff --git a/drivers/media/i2c/tc358746.c b/drivers/media/i2c/tc358746.c
> > new file mode 100644
> > index 000000000000..4f1a809b9fc3
> > --- /dev/null
> > +++ b/drivers/media/i2c/tc358746.c

[snip]

> > +static int tc358746_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct tc358746 *tc358746;
> > +	unsigned long refclk;
> > +	unsigned int i;
> > +	int err;
> > +
> > +	tc358746 = devm_kzalloc(&client->dev, sizeof(*tc358746), GFP_KERNEL);
> > +	if (!tc358746)
> > +		return -ENOMEM;
> > +
> > +	tc358746->regmap = devm_regmap_init_i2c(client, &tc358746_regmap_config);
> > +	if (IS_ERR(tc358746->regmap))
> > +		return dev_err_probe(dev, PTR_ERR(tc358746->regmap),
> > +				     "Failed to init regmap\n");
> > +
> > +	tc358746->refclk = devm_clk_get(dev, "refclk");
> > +	if (IS_ERR(tc358746->refclk))
> > +		return dev_err_probe(dev, PTR_ERR(tc358746->refclk),
> > +				     "Failed to get refclk\n");
> > +
> > +	err = clk_prepare_enable(tc358746->refclk);
> > +	if (err)
> > +		return dev_err_probe(dev, err,
> > +				     "Failed to enable refclk\n");
> > +
> > +	refclk = clk_get_rate(tc358746->refclk);
> > +	clk_disable_unprepare(tc358746->refclk);
> > +
> > +	if (refclk < 6 * MHZ || refclk > 40 * MHZ)
> > +		return dev_err_probe(dev, -EINVAL, "Invalid refclk range\n");
> > +
> > +	for (i = 0; i < ARRAY_SIZE(tc358746_supplies); i++)
> > +		tc358746->supplies[i].supply = tc358746_supplies[i];
> > +
> > +	err = devm_regulator_bulk_get(dev, ARRAY_SIZE(tc358746_supplies),
> > +				      tc358746->supplies);
> > +	if (err)
> > +		return dev_err_probe(dev, err, "Failed to get supplies\n");
> > +
> > +	tc358746->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> > +						       GPIOD_OUT_HIGH);
> > +	if (IS_ERR(tc358746->reset_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(tc358746->reset_gpio),
> > +				     "Failed to get reset-gpios\n");
> > +
> > +	err = tc358746_init_subdev(tc358746, client);
> > +	if (err)
> > +		return dev_err_probe(dev, err, "Failed to init subdev\n");
> > +
> > +	err = tc358746_init_output_port(tc358746, refclk);
> > +	if (err)
> > +		goto err_subdev;
> > +
> > +	/*
> > +	 * Keep this order since we need the output port link-frequencies
> > +	 * information.
> > +	 */
> > +	err = tc358746_init_controls(tc358746);
> > +	if (err)
> > +		goto err_fwnode;
> > +
> > +	dev_set_drvdata(dev, tc358746);
> > +	pm_runtime_set_autosuspend_delay(dev, 200);
> > +	pm_runtime_use_autosuspend(dev);
> > +	pm_runtime_enable(dev);
> > +
> > +	err = tc358746_init_hw(tc358746);
> 
> The driver depends on runtime PM being enabled but does not depend on
> CONFIG_PM. I'd suggest to power the device on and only then enable runtime
> PM. See
> <URL:https://hverkuil.home.xs4all.nl/spec/driver-api/camera-sensor.html#power-management>.

Or simply depend on CONFIG_PM :-)

> > +	if (err)
> > +		goto err_pm;
> > +
> > +	err = tc358746_setup_mclk_provider(tc358746);
> > +	if (err)
> > +		goto err_pm;
> > +
> > +	err = tc358746_async_register(tc358746);
> > +	if (err < 0)
> > +		goto err_pm;
> > +
> > +	dev_dbg(dev, "%s found @ 0x%x (%s)\n", client->name,
> > +		client->addr, client->adapter->name);
> > +
> > +	return 0;
> > +
> > +err_pm:
> > +	pm_runtime_disable(dev);
> > +	pm_runtime_set_suspended(dev);
> > +	pm_runtime_dont_use_autosuspend(dev);
> > +	v4l2_ctrl_handler_free(&tc358746->ctrl_hdl);
> > +err_fwnode:
> > +	v4l2_fwnode_endpoint_free(&tc358746->csi_vep);
> > +err_subdev:
> > +	v4l2_subdev_cleanup(&tc358746->sd);
> > +	media_entity_cleanup(&tc358746->sd.entity);
> > +
> > +	return err;
> > +}

[snip]

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
