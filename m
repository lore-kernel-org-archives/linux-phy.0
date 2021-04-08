Return-Path: <SRS0=ZRRf=JF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6010C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 08:14:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A88D6113B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 08:14:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A88D6113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:CC:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tYb8SkxC9dFw0BBxA/vA66Kh72KCYHXdKAoNVst5F5g=; b=NMuHRNLx914gf9GzCdau/4K4q
	W0zY6kP4H3ohBQszk/3Aatm0Npj3vApNAGJn5VQY+u9WRV/GK84xp4sbOUcog0PqBIZXr9P9pepzg
	V4H1e/WIWV9NoaJ7og18pHw2IDHU4V4QP+JI66cE7HtUd4D+ldZj0/lGbGAcqKv9Cn0Ef6+VUOeim
	GBrtOQ8e18XGaEjkFz0lAwQcsfwmcEPA2iM0n2IdbdHOx/ExxRpADl4O+g4LqqvqIZE0BohwGeY3K
	XOUFSKwO1N5wQrGSxfGee2zzUl3AVxfFiyHmpDgSBDuoUgmQdbtSSoI8HOgPmg0uT1DLZeOTkXvgQ
	Yd5OfSsLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUPnt-007JkC-Ed; Thu, 08 Apr 2021 08:14:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUPnn-007JjQ-Nt
 for linux-phy@lists.infradead.org; Thu, 08 Apr 2021 08:14:15 +0000
X-UUID: 48de2e301c3c44959c66625bbaefec78-20210408
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iuGGiWJ1qzvQThXrFOtwosqikmsgHb4KFH40heYunTc=; 
 b=BMrcuR4Q2iN27fu91Ole8S0xr+IBfBaYYC7DSHvvdq3ggrkQkzm9E0sfYF1NbluzJdI8r6Wxp9SKMQlayRvCSy6MQOLIDkt/GCxAOZ3OdYyl66VFpnE3Fun/kgYXjIfGpRiOf2wVaI1kRJnDQ3fEMqgKlJjXqnq7gT4qFjTixMA=;
X-UUID: 48de2e301c3c44959c66625bbaefec78-20210408
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 621365262; Thu, 08 Apr 2021 01:14:04 -0700
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 8 Apr 2021 01:14:03 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 8 Apr 2021 16:13:59 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 8 Apr 2021 16:13:58 +0800
Message-ID: <1617869638.10189.15.camel@mhfsdcap03>
Subject: Re: [PATCH 05/16] media: cadence: csi2rx: Add external DPHY support
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Pratyush Yadav <p.yadav@ti.com>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Stanimir Varbanov
 <stanimir.varbanov@linaro.org>, Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, "Tomi
 Valkeinen" <tomi.valkeinen@ideasonboard.com>
Date: Thu, 8 Apr 2021 16:13:58 +0800
In-Reply-To: <20210406185439.6o5hkejtinq7y7sy@ti.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-6-p.yadav@ti.com>
 <1617182653.2752.9.camel@mhfsdcap03>
 <20210406185439.6o5hkejtinq7y7sy@ti.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 76747285B64592D288D425D5797E0CF2F6FEBB6A22A5174824F2F9BC97E02DE12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_091412_653989_2C36B1CA 
X-CRM114-Status: GOOD (  36.16  )
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

On Wed, 2021-04-07 at 00:24 +0530, Pratyush Yadav wrote:
> On 31/03/21 05:24PM, Chunfeng Yun wrote:
> > On Tue, 2021-03-30 at 23:03 +0530, Pratyush Yadav wrote:
> > > Some platforms like TI's J721E can have the CSI2RX paired with an
> > > external DPHY. Add support to enable and configure the DPHY using the
> > > generic PHY framework.
> > > 
> > > Get the pixel rate and bpp from the subdev and pass them on to the DPHY
> > > along with the number of lanes. All other settings are left to their
> > > default values.
> > > 
> > > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > > ---
> > >  drivers/media/platform/cadence/cdns-csi2rx.c | 147 +++++++++++++++++--
> > >  1 file changed, 137 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> > > index c68a3eac62cd..31bd80e3f780 100644
> > > --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> > > +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> > > @@ -30,6 +30,12 @@
> > >  #define CSI2RX_STATIC_CFG_DLANE_MAP(llane, plane)	((plane) << (16 + (llane) * 4))
> > >  #define CSI2RX_STATIC_CFG_LANES_MASK			GENMASK(11, 8)
> > >  
> > > +#define CSI2RX_DPHY_LANE_CTRL_REG		0x40
> > > +#define CSI2RX_DPHY_CL_RST			BIT(16)
> > > +#define CSI2RX_DPHY_DL_RST(i)			BIT((i) + 12)
> > > +#define CSI2RX_DPHY_CL_EN			BIT(4)
> > > +#define CSI2RX_DPHY_DL_EN(i)			BIT(i)
> > > +
> > >  #define CSI2RX_STREAM_BASE(n)		(((n) + 1) * 0x100)
> > >  
> > >  #define CSI2RX_STREAM_CTRL_REG(n)		(CSI2RX_STREAM_BASE(n) + 0x000)
> > > @@ -54,6 +60,11 @@ enum csi2rx_pads {
> > >  	CSI2RX_PAD_MAX,
> > >  };
> > >  
> > > +struct csi2rx_fmt {
> > > +	u32				code;
> > > +	u8				bpp;
> > > +};
> > > +
> > >  struct csi2rx_priv {
> > >  	struct device			*dev;
> > >  	unsigned int			count;
> > > @@ -85,6 +96,52 @@ struct csi2rx_priv {
> > >  	int				source_pad;
> > >  };
> > >  
> > > +static const struct csi2rx_fmt formats[] = {
> > > +	{
> > > +		.code	= MEDIA_BUS_FMT_YUYV8_2X8,
> > > +		.bpp	= 16,
> > > +	},
> > > +	{
> > > +		.code	= MEDIA_BUS_FMT_UYVY8_2X8,
> > > +		.bpp	= 16,
> > > +	},
> > > +	{
> > > +		.code	= MEDIA_BUS_FMT_YVYU8_2X8,
> > > +		.bpp	= 16,
> > > +	},
> > > +	{
> > > +		.code	= MEDIA_BUS_FMT_VYUY8_2X8,
> > > +		.bpp	= 16,
> > > +	},
> > > +};
> > > +
> > > +static u8 csi2rx_get_bpp(u32 code)
> > > +{
> > > +	int i;
> > > +
> > > +	for (i = 0; i < ARRAY_SIZE(formats); i++) {
> > > +		if (formats[i].code == code)
> > > +			return formats[i].bpp;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static s64 csi2rx_get_pixel_rate(struct csi2rx_priv *csi2rx)
> > > +{
> > > +	struct v4l2_ctrl *ctrl;
> > > +
> > > +	ctrl = v4l2_ctrl_find(csi2rx->source_subdev->ctrl_handler,
> > > +			      V4L2_CID_PIXEL_RATE);
> > > +	if (!ctrl) {
> > > +		dev_err(csi2rx->dev, "no pixel rate control in subdev: %s\n",
> > > +			csi2rx->source_subdev->name);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	return v4l2_ctrl_g_ctrl_int64(ctrl);
> > > +}
> > > +
> > >  static inline
> > >  struct csi2rx_priv *v4l2_subdev_to_csi2rx(struct v4l2_subdev *subdev)
> > >  {
> > > @@ -101,6 +158,55 @@ static void csi2rx_reset(struct csi2rx_priv *csi2rx)
> > >  	writel(0, csi2rx->base + CSI2RX_SOFT_RESET_REG);
> > >  }
> > >  
> > > +static int csi2rx_configure_external_dphy(struct csi2rx_priv *csi2rx)
> > > +{
> > > +	union phy_configure_opts opts = { };
> > > +	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
> > > +	struct v4l2_subdev_format sd_fmt;
> > > +	s64 pixel_rate;
> > > +	int ret;
> > > +	u8 bpp;
> > > +
> > > +	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> > > +	sd_fmt.pad = 0;
> > > +
> > > +	ret = v4l2_subdev_call(csi2rx->source_subdev, pad, get_fmt, NULL,
> > > +			       &sd_fmt);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	bpp = csi2rx_get_bpp(sd_fmt.format.code);
> > > +	if (!bpp)
> > > +		return -EINVAL;
> > > +
> > > +	pixel_rate = csi2rx_get_pixel_rate(csi2rx);
> > > +	if (pixel_rate < 0)
> > > +		return pixel_rate;
> > > +
> > > +	ret = phy_mipi_dphy_get_default_config(pixel_rate, bpp,
> > > +					       csi2rx->num_lanes, cfg);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	ret = phy_set_mode_ext(csi2rx->dphy, PHY_MODE_MIPI_DPHY,
> > > +			       PHY_MIPI_DPHY_SUBMODE_RX);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	ret = phy_power_on(csi2rx->dphy);
> > > +	if (ret)
> > > +		return ret;
> > Seems phy_power_on, then phy_set_mode_ext?
> 
> Shouldn't the mode be set before the PHY is powered on so the correct 
> power on procedure can be performed based on the mode of operation?
Of course, it is fine for cnds-dphy.
But it depends on HW design and also phy driver;
if the mode is controlled in PHY IP register, we can't access it before
phy_power_on if no phy_init called (e.g. clock/power is not enabled).

Just let you pay attention on the phy sequence.

Thanks
> 
> > 
> > > +
> > > +	ret = phy_configure(csi2rx->dphy, &opts);
> > > +	if (ret) {
> > > +		/* Can't do anything if it fails. Ignore the return value. */
> > > +		phy_power_off(csi2rx->dphy);
> > > +		return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static int csi2rx_start(struct csi2rx_priv *csi2rx)
> > >  {
> > >  	unsigned int i;
> > > @@ -139,6 +245,17 @@ static int csi2rx_start(struct csi2rx_priv *csi2rx)
> > >  	if (ret)
> > >  		goto err_disable_pclk;
> > >  
> > > +	/* Enable DPHY clk and data lanes. */
> > > +	if (csi2rx->dphy) {
> > > +		reg = CSI2RX_DPHY_CL_EN | CSI2RX_DPHY_CL_RST;
> > > +		for (i = 0; i < csi2rx->num_lanes; i++) {
> > > +			reg |= CSI2RX_DPHY_DL_EN(csi2rx->lanes[i] - 1);
> > > +			reg |= CSI2RX_DPHY_DL_RST(csi2rx->lanes[i] - 1);
> > > +		}
> > > +
> > > +		writel(reg, csi2rx->base + CSI2RX_DPHY_LANE_CTRL_REG);
> > > +	}
> > > +
> > >  	/*
> > >  	 * Create a static mapping between the CSI virtual channels
> > >  	 * and the output stream.
> > > @@ -169,10 +286,21 @@ static int csi2rx_start(struct csi2rx_priv *csi2rx)
> > >  	if (ret)
> > >  		goto err_disable_pixclk;
> > >  
> > > +	if (csi2rx->dphy) {
> > > +		ret = csi2rx_configure_external_dphy(csi2rx);
> > > +		if (ret) {
> > > +			dev_err(csi2rx->dev,
> > > +				"Failed to configure external DPHY: %d\n", ret);
> > > +			goto err_disable_sysclk;
> > > +		}
> > > +	}
> > > +
> > >  	clk_disable_unprepare(csi2rx->p_clk);
> > >  
> > >  	return 0;
> > >  
> > > +err_disable_sysclk:
> > > +	clk_disable_unprepare(csi2rx->sys_clk);
> > >  err_disable_pixclk:
> > >  	for (; i > 0; i--)
> > >  		clk_disable_unprepare(csi2rx->pixel_clk[i - 1]);
> > > @@ -200,6 +328,13 @@ static void csi2rx_stop(struct csi2rx_priv *csi2rx)
> > >  
> > >  	if (v4l2_subdev_call(csi2rx->source_subdev, video, s_stream, false))
> > >  		dev_warn(csi2rx->dev, "Couldn't disable our subdev\n");
> > > +
> > > +	if (csi2rx->dphy) {
> > > +		writel(0, csi2rx->base + CSI2RX_DPHY_LANE_CTRL_REG);
> > > +
> > > +		if (phy_power_off(csi2rx->dphy))
> > > +			dev_warn(csi2rx->dev, "Couldn't power off DPHY\n");
> > > +	}
> > >  }
> > >  
> > >  static int csi2rx_s_stream(struct v4l2_subdev *subdev, int enable)
> > > @@ -306,15 +441,6 @@ static int csi2rx_get_resources(struct csi2rx_priv *csi2rx,
> > >  		return PTR_ERR(csi2rx->dphy);
> > >  	}
> > >  
> > > -	/*
> > > -	 * FIXME: Once we'll have external D-PHY support, the check
> > > -	 * will need to be removed.
> > > -	 */
> > > -	if (csi2rx->dphy) {
> > > -		dev_err(&pdev->dev, "External D-PHY not supported yet\n");
> > > -		return -EINVAL;
> > > -	}
> > > -
> > >  	clk_prepare_enable(csi2rx->p_clk);
> > >  	dev_cfg = readl(csi2rx->base + CSI2RX_DEVICE_CFG_REG);
> > >  	clk_disable_unprepare(csi2rx->p_clk);
> > > @@ -339,7 +465,7 @@ static int csi2rx_get_resources(struct csi2rx_priv *csi2rx,
> > >  	 * FIXME: Once we'll have internal D-PHY support, the check
> > >  	 * will need to be removed.
> > >  	 */
> > > -	if (csi2rx->has_internal_dphy) {
> > > +	if (!csi2rx->dphy && csi2rx->has_internal_dphy) {
> > >  		dev_err(&pdev->dev, "Internal D-PHY not supported yet\n");
> > >  		return -EINVAL;
> > >  	}
> > > @@ -460,6 +586,7 @@ static int csi2rx_probe(struct platform_device *pdev)
> > >  	dev_info(&pdev->dev,
> > >  		 "Probed CSI2RX with %u/%u lanes, %u streams, %s D-PHY\n",
> > >  		 csi2rx->num_lanes, csi2rx->max_lanes, csi2rx->max_streams,
> > > +		 csi2rx->dphy ? "external" :
> > >  		 csi2rx->has_internal_dphy ? "internal" : "no");
> > >  
> > >  	return 0;
> > 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
