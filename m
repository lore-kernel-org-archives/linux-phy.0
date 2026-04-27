Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8063FF8860
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 13:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rauEJX0MTs/dhht73Kr6u+Jdu6yo8xkKP7S0oDjKquM=; b=I3Yars/gplBX/u
	L4oiNX6YlFAWnMwrSzewlughf4lWXvhFuCD4EI2ynaak17zkY9su3GMFWqWUxk5/AFMZ0ObXT+bur
	mfn1Fjt7AgCx8tdlfsOhM1XIfdFaMUGYfdbyIN/AEded9QWAhieqneqbXsCfg6YZseCCRrSUMgmSy
	NfvXlcTnpUsiK4vTdeCrbFwDxVI/gNE1/QJ3U7ioLghkQTeasPFcFyXPic9LFd7NMB9Hrivc/KZQa
	TiazTepWj/PgGJ/RvVMlk0VIPe7fpqehBidz9c+9oArj3BGoE8hwKBcgXZqdh0Pw3OCuQEAj+m4Ef
	dR9m6+BuY0uc7VhCVSgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHLZI-0000000GwmC-1srE;
	Mon, 27 Apr 2026 13:00:08 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHLZB-0000000GwjB-33Wk
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 13:00:03 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 59023C5CD49;
	Mon, 27 Apr 2026 13:00:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 26DBA600D1;
	Mon, 27 Apr 2026 13:00:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CE0791072806A;
	Mon, 27 Apr 2026 14:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1777294798; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ONCngfvdZKG04Y5xOFYFcJaPqFKOYgTjJdd9UAdynm8=;
	b=QS9tJsZ47VMdS5lOnm00fpaBvbYhRGWOra+baDhj7sePjohjjxzycBRQmdqknIBDCdGkzL
	4zG3uo2Gs95WDMyoPpnlpEMo0G0Hkkmdj8LwRv7XKeKuzzXousFT8cV/9GeJSv2SJms6hD
	2Jav3LAjfyAn/I7CFkhPxF5T0AGvTze5CeA6FSQ2/LKz1WjVN746KwjHR+iU6F4eC6+EdS
	ZrmyFiDxeefro4G9IhLrHVwwYrWB+BExFSBD0uSlZX22spc7hAQ4Z1kW4kAkQYi/m1y+TN
	mPnpYr6ibqNYaNjAAbpZ/n48Fc5gjpX7iXxaRLIQcw1cwKxOeDZ9ij7JOiJg6Q==
Mime-Version: 1.0
Date: Mon, 27 Apr 2026 14:59:51 +0200
Message-Id: <DI3YF7J7ZW0P.3OKMUXAM7GW5C@bootlin.com>
Subject: Re: [PATCH v22 4/8] drm: bridge: Cadence: Add MHDP8501 DP/HDMI
 driver
Cc: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux@ew.tq-group.com>, "Alexander Stein"
 <alexander.stein@ew.tq-group.com>, "Ying Liu" <victor.liu@nxp.com>
To: "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>, "Parshuram Thombare"
 <pthombar@cadence.com>, "Swapnil Jakhade" <sjakhade@cadence.com>, "Dmitry
 Baryshkov" <lumag@kernel.org>, "Nikhil Devshatwar" <nikhil.nd@ti.com>,
 "Jayesh Choudhary" <j-choudhary@ti.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260424-dcss-hdmi-upstreaming-v22-0-30a28f89298d@oss.nxp.com>
 <20260424-dcss-hdmi-upstreaming-v22-4-30a28f89298d@oss.nxp.com>
In-Reply-To: <20260424-dcss-hdmi-upstreaming-v22-4-30a28f89298d@oss.nxp.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_060002_105355_CF78B54D 
X-CRM114-Status: GOOD (  24.85  )
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

Hello Laurentiu,

On Fri Apr 24, 2026 at 1:07 PM CEST, Laurentiu Palcu wrote:
> From: Sandor Yu <Sandor.yu@nxp.com>
>
> Add a new DRM DisplayPort and HDMI bridge driver for Candence MHDP8501
> used in i.MX8MQ SOC. MHDP8501 could support HDMI or DisplayPort
> standards according embedded Firmware running in the uCPU.
>
> For iMX8MQ SOC, the DisplayPort/HDMI FW was loaded and activated by
> SOC's ROM code. Bootload binary included respective specific firmware
> is required.
>
> Driver will check display connector type and
> then load the corresponding driver.
>
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Co-developed-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>

...

> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-core.c
...
> +enum drm_connector_status cdns_mhdp8501_detect(struct drm_bridge *bridge,
> +					       struct drm_connector *connector)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;

Please don't use driver_private. Write a oneliner function wrapping
container_of(). There are many examples in bridges,
e.g. bridge_to_sn65dsi83().

> +static int cdns_mhdp8501_get_bridge_type(struct device_node *out_ep,
> +					 int *bridge_type)
> +{
> +	struct device_node *incoming_ep, *node, *ep;
> +	int ret = -ENODEV;
> +
> +	incoming_ep = of_graph_get_remote_endpoint(out_ep);
> +	if (!incoming_ep)
> +		return -ENODEV;
> +
> +	node = of_graph_get_port_parent(incoming_ep);
> +	if (!node) {
> +		of_node_put(incoming_ep);
> +		return -ENODEV;
> +	}
> +
> +	if (of_device_is_compatible(node, "hdmi-connector")) {
> +		*bridge_type = DRM_MODE_CONNECTOR_HDMIA;
> +		ret = 0;
> +	} else if (of_device_is_compatible(node, "dp-connector")) {
> +		*bridge_type = DRM_MODE_CONNECTOR_DisplayPort;
> +		ret = 0;
> +	} else {
> +		for_each_endpoint_of_node(node, ep) {
> +			if (ep == incoming_ep)
> +				continue;
> +
> +			ret = cdns_mhdp8501_get_bridge_type(ep, bridge_type);
> +			if (!ret) {
> +				of_node_put(ep);
> +				break;
> +			}
> +		}
> +	}

I don't follow what this logic is doing. Can you provide a practical
example of the "next node" (@node variable) where you fall in the else
case?

Also, while this resursion will probably work in most, if not all,
realistic cases, it could take incorrect decisions. Consider the case there
in the else branch your @node points to some node having two input
endpoints: ep0 is the incoming_ep and ep1 is another input endpoint. In
such case you would recurse on ep1 and return its bridge type, which
however has nothing to to with the output and might be incorrect.

Another question is whether this driver should have two compatible strings,
one for hdmi and one for dp, and set the bridge_type based on that. This
would make it a lot simpler and remove the need for this function.

But if I guess right from the code, this device can output either hdmi or
dp, and the implementation infers the type based on this device tree
walk. Is it the case?

> +static int cdns_mhdp8501_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct cdns_mhdp8501_device *mhdp;
> +	const struct drm_bridge_funcs *bridge_funcs;
> +	enum phy_mode phy_mode;
> +	struct resource *res;
> +	u32 lane_mapping;
> +	int bridge_type;
> +	u32 reg;
> +	int ret;
> +
> +	ret = cdns_mhdp8501_dt_parse(pdev, &bridge_type, &lane_mapping);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = devm_of_platform_populate(dev);
> +	if (ret)
> +		return ret;
> +
> +	bridge_funcs = (bridge_type == DRM_MODE_CONNECTOR_HDMIA) ?
> +			&cdns_hdmi_bridge_funcs : &cdns_dp_bridge_funcs;
> +
> +	mhdp = devm_drm_bridge_alloc(dev, struct cdns_mhdp8501_device,
> +				     bridge, bridge_funcs);
> +	if (!mhdp)
> +		return -ENOMEM;
> +
> +	mhdp->dev = dev;
> +	mhdp->bridge_type = bridge_type;
> +	mhdp->lane_mapping = lane_mapping;
> +
> +	mhdp->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> +	if (IS_ERR(mhdp->next_bridge))
> +		return dev_err_probe(dev, PTR_ERR(mhdp->next_bridge),
> +				     "failed to get next bridge\n");

devm_drm_of_get_bridge() is there to either create a new panel_bridge
wrapping a panel or return an existing bridge. However based on the
cdns_mhdp8501_get_bridge_type() code it seems to me that you will always
have another bridge after this bridge. And so instead of
devm_drm_of_get_bridge() you should use of_drm_find_and_get_bridge(),
which handles bridge refcounting.

When switching to it, you additionally can use the drm_bridge::next_bridge
pointer instead of having your mhdp->next_bridge. This will simplify
putting the bridge reference. An example of its usage is in [0].

[0] https://lore.kernel.org/lkml/20260109-drm-bridge-alloc-getput-drm_of_find_bridge-2-v2-4-8bad3ef90b9f@bootlin.com/

> +++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8501-dp.c
...
> +static int cdns_dp_bridge_attach(struct drm_bridge *bridge,
> +				 struct drm_encoder *encoder,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct cdns_mhdp8501_device *mhdp = bridge->driver_private;
> +	int ret;
> +
> +	ret = drm_bridge_attach(encoder, mhdp->next_bridge, bridge,
> +				flags | DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)) {
> +		dev_err(mhdp->dev, "do not support creating a drm_connector\n");
> +		return -EINVAL;
> +	}

Any good reason for doing this check after calling drm_bridge_attach()? It
looks to me that you should first check for valid arguments, and if they
pass take any actions.

Same below for the HDMI version.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
