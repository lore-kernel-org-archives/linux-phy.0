Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEBC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:56:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FAC7610A0
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:56:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3FAC7610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JIOGfy6kLjEyGacyJGlEYDDySRiDYvhY6UDmFV/UGJg=; b=mwlCILtUmGEip94qdDiV1ryIi
	DeICt/4O3eYg7btU+t5WRV1YBoNGfHnx5qJLZbVZi6/klOL8dnHXX5viXtEy06cImkOnMB0AAmtYJ
	lfe75it5y0TPPQ0RJqF/jeq3HFafrfxGZ8hR3EDfHxuFLuEGpJJjESHd94G9gJWeGPmJlymusg2vM
	drsm0HDltIaQ3rJ+PSN3qRzJHnxzM3BcuVjgYt4gSJpFJEc/uEygVwdt+YS0AY+w+5A3atDjOQLMX
	rurwAK2ZUCmWc8qKtM2vopeEFNSoHd8JW9stAeXMiO0IjmcwtjW9VatAVPkYAkQVqueYdnDlQbXVw
	9Iao91YyQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSHTU-00Cp5T-8y; Fri, 02 Apr 2021 10:56:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSHTP-00Cp51-QB
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:56:21 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0A83D2C1;
 Fri,  2 Apr 2021 12:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617360979;
 bh=6eYqrEyZZU/9oqYbn/7t26/s8F+2OY3y3ACoAKZHSa4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mr4LNeAhc1IVzQf9Ok/ScczcYUQN9fFhw8fhDTO/Ku0XHqINqDEYB/+GKBD0gbDKc
 lALpd6EuwdIQK3ITfoLiZfOgSH/d6w/Cuq3cW08DEh4VIQbN7rRBNMmDdWOjcSIsd8
 yrUjjw9JBjwP4nAp0MRN1ywmg3QYpnLsnvSdO96k=
Date: Fri, 2 Apr 2021 13:55:35 +0300
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
Subject: Re: [PATCH 09/16] media: cadence: csi2rx: Turn subdev power on
 before starting stream
Message-ID: <YGb4J5q9N0ExOgn9@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-10-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-10-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_115620_201003_B5659975 
X-CRM114-Status: GOOD (  16.73  )
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

On Tue, Mar 30, 2021 at 11:03:41PM +0530, Pratyush Yadav wrote:
> The subdevice power needs to be turned on before the stream is started.
> Otherwise it might not be in the proper state to stream the data. Turn
> it off when stopping the stream.

The .s_power() operation is deprecated. Subdev drivers should control
power internally in their .s_stream() operation, and they should use
runtime PM to do so (this will allow usage of runtime PM autosuspend, to
avoid expensive power off/on cycles when stopping and restarting video
capture).

> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  drivers/media/platform/cadence/cdns-csi2rx.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/media/platform/cadence/cdns-csi2rx.c b/drivers/media/platform/cadence/cdns-csi2rx.c
> index 7d1ac51e0698..3385e1bc213e 100644
> --- a/drivers/media/platform/cadence/cdns-csi2rx.c
> +++ b/drivers/media/platform/cadence/cdns-csi2rx.c
> @@ -256,6 +256,10 @@ static int csi2rx_start(struct csi2rx_priv *csi2rx)
>  
>  	writel(reg, csi2rx->base + CSI2RX_STATIC_CFG_REG);
>  
> +	ret = v4l2_subdev_call(csi2rx->source_subdev, core, s_power, true);
> +	if (ret && ret != -ENOIOCTLCMD)
> +		goto err_disable_pclk;
> +
>  	ret = v4l2_subdev_call(csi2rx->source_subdev, video, s_stream, true);
>  	if (ret)
>  		goto err_disable_pclk;
> @@ -358,6 +362,10 @@ static void csi2rx_stop(struct csi2rx_priv *csi2rx)
>  	if (v4l2_subdev_call(csi2rx->source_subdev, video, s_stream, false))
>  		dev_warn(csi2rx->dev, "Couldn't disable our subdev\n");
>  
> +	ret = v4l2_subdev_call(csi2rx->source_subdev, core, s_power, false);
> +	if (ret && ret != -ENOIOCTLCMD)
> +		dev_warn(csi2rx->dev, "Couldn't power off subdev\n");
> +
>  	if (csi2rx->dphy) {
>  		writel(0, csi2rx->base + CSI2RX_DPHY_LANE_CTRL_REG);
>  

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
