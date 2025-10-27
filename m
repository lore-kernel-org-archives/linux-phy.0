Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7939CCF9E0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 09:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbZJNedxni3hkcyR/5cyskAK8s5pwz/oHldoSAWprh4=; b=A0JZodJ9ApYYb1
	5KLSzK26sI/3PNh/zmiMFNxAK3zp3EyxuhQC2nQ5DktzYBy21AYcSzFadAw6vbl4jXXmBBCnc5kh8
	u4rvZULAdnYzGcyEbu8r1i4TYiLY/LddUi8h/CFRT0AqRznGYUyCaIWsDGP8Uj8DT2k5L30HKyYdl
	yKBhwDHkr5A8j371sRromIvMnXwJRNStobqJi1oy14/69fgnIDdB/V3BUUhZnlEK2Sd81xy+nn9Iz
	S9IKgR1EV2448ZDzqNc2+hgAdJ9y6eUZJSJV0ukw8vT+vhS75n77Rdjw08k5ouAIQ395rZ0aSWn/R
	zeemj71vYcKKZ3cvsyfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJE7-0000000DUdS-27sR;
	Mon, 27 Oct 2025 09:09:19 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJE4-0000000DUcc-01a5;
	Mon, 27 Oct 2025 09:09:17 +0000
Received: from hillosipuli.retiisi.eu (91-158-51-183.elisa-laajakaista.fi [91.158.51.183])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4cw73r2GJFzySG;
	Mon, 27 Oct 2025 11:09:12 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1761556153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6j0r4WsWkcl7drnJIo9dfVk4tLcInytBpxeSXRluRoY=;
	b=u0ppOfKhIbYPDOLJpVQq8gxa3U9bimOoh0/8G/I/aVJ9CN8ZsiAuBtDPn+T1p3LrS6IlaV
	EMpn3kkU9AToKt6c2oY6U/M17Lh/6cLk3y7Enjz6oxjIC4uxwERVuhnv3l6uu/MPeJjGPT
	x4V8FFfdDKyyBilPlQZmIrUNfyRENDw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1761556153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6j0r4WsWkcl7drnJIo9dfVk4tLcInytBpxeSXRluRoY=;
	b=xer77ERM/L33oNcBaUBUrrwtEIo8aOGILzir2DWeF0pn/gF6pVytnRg8ovQ0abkRZQHPOc
	5CPpE6SsshcnTcIKswHIDFm+CKSDpgPy9VtD0yYBPT0PuWCFOoqvgTifLGSQTErznR/jse
	5xnfCIXCNujOc+U2BnjN6SCmdwC33dU=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1761556153; a=rsa-sha256; cv=none;
	b=BKYzExpAnCTnDxGHURcSgwKCnRxJzZgNVzaIT42kMEDR31xeq6HA8845LUPLw7jOHP36KN
	Hdm0+NoDsO1i9p0gt7XD06aRNuRhS6h1/Pw9kUgJSFiP3v4wR/+3ZXUGFahn5c/jQ47fd8
	3OTi7SV921Dcc+8hvNNgWGsikA6JZcM=
Received: from valkosipuli.retiisi.eu (valkosipuli.local [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 12251634C5B;
	Mon, 27 Oct 2025 11:09:12 +0200 (EET)
Date: Mon, 27 Oct 2025 11:09:11 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Alice Yuan <alice.yuan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v3 19/31] media: synopsys: csi2: Add phy interface support
Message-ID: <aP82tyYmkrASPNA3@valkosipuli.retiisi.eu>
References: <20250821-95_cam-v3-0-c9286fbb34b9@nxp.com>
 <20250821-95_cam-v3-19-c9286fbb34b9@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-95_cam-v3-19-c9286fbb34b9@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_020916_226942_4A7C1E54 
X-CRM114-Status: GOOD (  15.82  )
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

Hi Frank,

On Thu, Aug 21, 2025 at 04:15:54PM -0400, Frank Li wrote:
> Add standard phy interface support.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/media/platform/synopsys/mipi-csi2.c | 91 +++++++++++++++++++++++++++--
>  include/media/dw-mipi-csi2.h                |  4 ++
>  2 files changed, 90 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/synopsys/mipi-csi2.c b/drivers/media/platform/synopsys/mipi-csi2.c
> index 922b59670383db7c920625f8a149009fa4dc5f22..27d802b3c3937473c8e08defa661b55b0655f758 100644
> --- a/drivers/media/platform/synopsys/mipi-csi2.c
> +++ b/drivers/media/platform/synopsys/mipi-csi2.c
> @@ -14,6 +14,7 @@
>  #include <linux/of_graph.h>
>  #include <linux/platform_device.h>
>  #include <media/dw-mipi-csi2.h>
> +#include <media/mipi-csi2.h>
>  #include <media/v4l2-common.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/v4l2-device.h>
> @@ -268,7 +269,63 @@ static int csi2_get_active_lanes(struct dw_mipi_csi2_dev *csi2, unsigned int *la
>  	return 0;
>  }
>  
> -static int csi2_start(struct dw_mipi_csi2_dev *csi2)
> +static int dw_csi2_get_dphy_configuration(struct dw_mipi_csi2_dev *csi2,
> +					  union phy_configure_opts *opts,
> +					  int bpp)
> +{
> +	struct phy_configure_opts_mipi_dphy *cfg = &opts->mipi_dphy;
> +	struct v4l2_subdev *source = csi2->src_sd;
> +	s64 link_freq;
> +
> +	link_freq = v4l2_get_link_freq(source->ctrl_handler,

Please rebase.

> +				       bpp,
> +				       csi2->data_lanes * 2);

Fits on fewer lines.

> +	if (link_freq < 0) {
> +		dev_err(csi2->dev, "Unable to obtain link frequency: %d\n",
> +			(int)link_freq);
> +		return link_freq;
> +	}
> +
> +	memset(cfg, 0x0, sizeof(*cfg));
> +	cfg->hs_clk_rate = link_freq * 2;
> +	cfg->lanes = csi2->data_lanes;
> +
> +	return 0;
> +}

-- 
Regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
