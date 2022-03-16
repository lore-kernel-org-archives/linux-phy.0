Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11857C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Mar 2022 13:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt4moYzwEglgQge1/FwJkmeQ3qF5uwIKMPmrE6DbHfQ=; b=wa0CKluRF4QRAI
	nu79fVpnp+r3o06vJZ5hr7LqMTPRg25lFZPxxs0Yqu/IGWu2tZkaz2beMXV1GdSIgugxCJAe1dEzw
	GLWqyWnd2DOe2umLFKui+a3himXlt68rSvSFwZZrS2fgdbBIcQRFYJP5Xoo/HCy/6ghAYPloHl1Ed
	O/NAfV7Mbl+iQ8zgwD8i8BY7nm8fzODPUgtBZMofyv2pvG/PXWakYJJPmkh02effGVqgS8cp69nac
	LIp0Tkd5lc1FvLy3axcRoqvdiIF+hYe0vVYM05NEhodueVN5cgn11zZS7ygMVFvlaSmrS2RYYgpPp
	BX2hEeN0g3zzlhmo4KkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUTiO-00D2Gb-DG; Wed, 16 Mar 2022 13:29:24 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUTga-00D1at-6S; Wed, 16 Mar 2022 13:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647437252; x=1678973252;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=H3eR4ffkE3oVB+3S4NOOn5kmmmYiIAis+JFyVC1vbpw=;
 b=cjpGcbEx2YlYg9nBf99imIrWjRn/heCkb0Efujf6hI9aMtIIUwehT70T
 6XJhnL7G4bF+eMubSAIWH0avCo52Z6XWjl19QdWWB5Datz60RgI97DIw5
 G2qNzbc4dBsEn9MqhLqSML0taVxPOaB4qpMfVSqJkSHmBDJkY+RQoO9S6
 Z2yoCa0yt1G20PFYY/vjTtX9hvlBF1iO38s3X4fJaIxvyRmda0uAlFUt9
 diLg56OnR9pg5h/+CMbRQhyQ8uQ74RnWH8lJ+G/FFaREGJPNODtPb/866
 +cAV2o0HX+lXJMSfKP7+YSLK7TLQ/ucbecpm/28K3kEe+fwZa6LSh0znu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255415085"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="255415085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:27:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="516331411"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:27:25 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id 2EEEA20090;
 Wed, 16 Mar 2022 15:27:23 +0200 (EET)
Date: Wed, 16 Mar 2022 15:27:23 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
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
Message-ID: <YjHluwVnbPyHo1kp@paasikivi.fi.intel.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-6-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302220739.144303-6-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_062732_308426_FF5B1D80 
X-CRM114-Status: GOOD (  21.62  )
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

Hi Paul,

Thanks for the set.

On Wed, Mar 02, 2022 at 11:07:35PM +0100, Paul Kocialkowski wrote:
...
> +static int sun6i_mipi_csi2_s_stream(struct v4l2_subdev *subdev, int on)
> +{
> +	struct sun6i_mipi_csi2_device *csi2_dev = v4l2_get_subdevdata(subdev);
> +	struct v4l2_subdev *source_subdev = csi2_dev->bridge.source_subdev;
> +	union phy_configure_opts dphy_opts = { 0 };
> +	struct phy_configure_opts_mipi_dphy *dphy_cfg = &dphy_opts.mipi_dphy;
> +	struct v4l2_mbus_framefmt *mbus_format = &csi2_dev->bridge.mbus_format;
> +	const struct sun6i_mipi_csi2_format *format;
> +	struct phy *dphy = csi2_dev->dphy;
> +	struct device *dev = csi2_dev->dev;
> +	struct v4l2_ctrl *ctrl;
> +	unsigned int lanes_count =
> +		csi2_dev->bridge.endpoint.bus.mipi_csi2.num_data_lanes;
> +	unsigned long pixel_rate;
> +	/* Initialize to 0 to use both in disable label (ret != 0) and off. */
> +	int ret = 0;
> +
> +	if (!source_subdev)
> +		return -ENODEV;
> +
> +	if (!on) {
> +		v4l2_subdev_call(source_subdev, video, s_stream, 0);
> +		goto disable;
> +	}
> +
> +	/* Runtime PM */
> +
> +	ret = pm_runtime_resume_and_get(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Sensor Pixel Rate */
> +
> +	ctrl = v4l2_ctrl_find(source_subdev->ctrl_handler, V4L2_CID_PIXEL_RATE);
> +	if (!ctrl) {
> +		dev_err(dev, "missing sensor pixel rate\n");
> +		ret = -ENODEV;
> +		goto error_pm;
> +	}
> +
> +	pixel_rate = (unsigned long)v4l2_ctrl_g_ctrl_int64(ctrl);
> +	if (!pixel_rate) {
> +		dev_err(dev, "missing (zero) sensor pixel rate\n");
> +		ret = -ENODEV;
> +		goto error_pm;
> +	}
> +
> +	/* D-PHY */
> +
> +	if (!lanes_count) {

I first thought this check could be moved to the beginning, but it's also
redundant. v4l2_fwnode_endpoint_parse() will check the configuration is
valid, i.e. the number of lanes is not zero.

But should you add checks to make sure the hardware supports what has been
configured? I'd do that right after parsing the endpoint.

And you only seem to be using the number of data lanes, nothing more. So
I'd store that, instead of the entire parsed v4l2_fwnode_endpoint.

The same applies to patch 8.

I think these could be done on top of this set after it is merged. Up to
you.

...

> +static int
> +sun6i_mipi_csi2_bridge_source_setup(struct sun6i_mipi_csi2_device *csi2_dev)
> +{
> +	struct v4l2_async_notifier *notifier = &csi2_dev->bridge.notifier;
> +	struct v4l2_fwnode_endpoint *endpoint = &csi2_dev->bridge.endpoint;
> +	struct v4l2_async_subdev *subdev_async;
> +	struct fwnode_handle *handle;
> +	struct device *dev = csi2_dev->dev;
> +	int ret;
> +
> +	handle = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0,
> +						 FWNODE_GRAPH_ENDPOINT_NEXT);
> +	if (!handle)
> +		return -ENODEV;
> +
> +	endpoint->bus_type = V4L2_MBUS_CSI2_DPHY;
> +
> +	ret = v4l2_fwnode_endpoint_parse(handle, endpoint);
> +	if (ret)
> +		goto complete;
> +
> +	subdev_async = v4l2_async_nf_add_fwnode_remote(notifier, handle,
> +		struct v4l2_async_subdev);
> +	if (IS_ERR(subdev_async))
> +		ret = PTR_ERR(subdev_async);
> +
> +complete:
> +	fwnode_handle_put(handle);
> +
> +	return ret;
> +}

-- 
Kind regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
