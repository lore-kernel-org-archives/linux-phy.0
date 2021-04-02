Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AECC43470
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:48:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AB4461103
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:48:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1AB4461103
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=75die+beGua3hIujDXbHKMWFmDa2XvQd7WaddFvnDfU=; b=AkedtuA6zzKUx58hXwhzL2lUp
	OdWrS3JKp08fea32tlLREHKvlSFN5ZcCNVamh+EMuyRdrCrMfpqmCIwtsJ+MlHSxa16iSL0tFXqXZ
	nlUKpseLMLW+x2djAndMACzNyVUgJA5J/91B7jJDknLbicNKTo8ULzMEtblt60MSj3SoOzusfX1ZT
	C5K8vf0jrw+kDCGeT+n7N0UsnTwZlp7IBzQjIrYlI+tHO1N+YZii0ZuTbcI8hGUEI5/wkQ0pT1mcU
	04+ZhR4qMRd48xKstEnRC8KmA9bveU0J7MI1EwMMal6hpgdghVUX6EflMRysfPE7LLiclwukNA0/g
	z++HCAgzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSHLN-00CoYy-6s; Fri, 02 Apr 2021 10:48:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSHLI-00CoYY-Ly
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:47:58 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A1D892C1;
 Fri,  2 Apr 2021 12:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617360475;
 bh=1M9MbEtoPz4Eibg+WiqbztDFfFygAjrnU0pezCLoxLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oq/kH/lpnd1eoUemU796c4+rV2rmOdk7Vkvo+Wv1eKf3Mz8AHF09p4EKVGT/KnXly
 vnmZcjLEFa6h0gdpYS9X1YvplUADARP0mdd7tXbL/yw0xpcVwvlU5RGnyXU75F/4br
 poFZETlkyzJZRr8eE39Wgpep5BfDUjrh2n1CVkwg=
Date: Fri, 2 Apr 2021 13:47:11 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 10/16] media: cadence: csi2rx: Add wrappers for subdev
 calls
Message-ID: <YGb2L7dq0fBma1or@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-11-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-11-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_114756_865218_06A3ED2D 
X-CRM114-Status: GOOD (  19.17  )
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

Hi Pratyush,

Thank you for the patch.

On Tue, Mar 30, 2021 at 11:03:42PM +0530, Pratyush Yadav wrote:
> When this bridge driver is being user by another platform driver, it
> might want to call subdev operations like getting format, setting
> format, enumerating format codes, etc. Add wrapper functions that pass
> that call through to the sensor.
> 
> Currently wrappers are added only for the ops used by TI's platform
> driver. More can be added later as needed.

This isn't the direction we want to take. For new platforms, propagation
of subdev configuration should be handled by userspace, using the V4L2
userspace subdev API. This subdev should not call any subdev operation
from its source other than .s_stream().

> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/media/platform/cadence/cdns-csi2rx.c | 77 ++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> index 3385e1bc213e..2e8bbc53cb8b 100644
> --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> @@ -408,12 +408,89 @@ static int csi2rx_s_stream(struct v4l2_subdev *subdev, int enable)
>  	return ret;
>  }
>  
> +static int csi2rx_g_frame_interval(struct v4l2_subdev *subdev,
> +				   struct v4l2_subdev_frame_interval *fi)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, video, g_frame_interval,
> +				fi);
> +}
> +
> +static int csi2rx_s_frame_interval(struct v4l2_subdev *subdev,
> +				   struct v4l2_subdev_frame_interval *fi)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, video, s_frame_interval,
> +				fi);
> +}
> +
> +static int csi2rx_enum_mbus_code(struct v4l2_subdev *subdev,
> +				 struct v4l2_subdev_pad_config *cfg,
> +				 struct v4l2_subdev_mbus_code_enum *code)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, pad, enum_mbus_code,
> +				cfg, code);
> +}
> +
> +static int csi2rx_get_fmt(struct v4l2_subdev *subdev,
> +			  struct v4l2_subdev_pad_config *cfg,
> +			  struct v4l2_subdev_format *fmt)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, pad, get_fmt, cfg, fmt);
> +}
> +
> +static int csi2rx_set_fmt(struct v4l2_subdev *subdev,
> +			  struct v4l2_subdev_pad_config *cfg,
> +			  struct v4l2_subdev_format *fmt)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, pad, set_fmt, cfg, fmt);
> +}
> +
> +static int csi2rx_enum_frame_size(struct v4l2_subdev *subdev,
> +				  struct v4l2_subdev_pad_config *cfg,
> +				  struct v4l2_subdev_frame_size_enum *fse)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, pad, enum_frame_size,
> +				cfg, fse);
> +}
> +
> +static int csi2rx_enum_frame_interval(struct v4l2_subdev *subdev,
> +				      struct v4l2_subdev_pad_config *cfg,
> +				      struct v4l2_subdev_frame_interval_enum *fie)
> +{
> +	struct csi2rx_priv *csi2rx = v4l2_subdev_to_csi2rx(subdev);
> +
> +	return v4l2_subdev_call(csi2rx->source_subdev, pad, enum_frame_interval,
> +				cfg, fie);
> +}
> +
>  static const struct v4l2_subdev_video_ops csi2rx_video_ops = {
>  	.s_stream	= csi2rx_s_stream,
> +	.g_frame_interval = csi2rx_g_frame_interval,
> +	.s_frame_interval = csi2rx_s_frame_interval,
> +};
> +
> +static const struct v4l2_subdev_pad_ops csi2rx_pad_ops = {
> +	.enum_mbus_code = csi2rx_enum_mbus_code,
> +	.get_fmt	= csi2rx_get_fmt,
> +	.set_fmt	= csi2rx_set_fmt,
> +	.enum_frame_size = csi2rx_enum_frame_size,
> +	.enum_frame_interval = csi2rx_enum_frame_interval,
>  };
>  
>  static const struct v4l2_subdev_ops csi2rx_subdev_ops = {
>  	.video		= &csi2rx_video_ops,
> +	.pad		= &csi2rx_pad_ops,
>  };
>  
>  static int csi2rx_async_bound(struct v4l2_async_notifier *notifier,

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
