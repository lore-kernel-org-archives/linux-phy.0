Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DF7CF9C64
	for <linux-phy@archiver.kernel.org>; Sat, 21 Sep 2024 20:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0NxfFcnFZhreckjS0QrNWrsiZPS48Pbzzw8JKeN2fI=; b=iX1KQM6INqCkMf
	hAnziDr2g4xb1BihmCzvkOkdh4YUr/0l97t23UJm0iBy9N6/BKFuXl5g/VYklDcjfDcfmnAOBXhjB
	sLXjnQ9E9aCbXcrr4crAydpDKO67MFv1fe9vMQzNfuO5DxrJX3c+1df4tpspALstd+f28MopK0jKH
	bYX947xaGjL0ATIqgXWlBiRxWvo+Hso+227eh4ssJB/ejLLMesiw2SQrQsA/RNwCMn+64XVpBJcoc
	2lfi3Rf+7jFQwU1DIYRfa4MlGz7HCVdiJCjt8nqxwUAMhPNQUkRG7ZewnsKA/S3kGzow394AMIp2d
	O3fP1dbFb+fDSmymGHKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss6iT-0000000EBMT-3lld;
	Sat, 21 Sep 2024 20:28:29 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss6iR-0000000EBLb-1TYF
	for linux-phy@lists.infradead.org;
	Sat, 21 Sep 2024 20:28:29 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5365392cfafso3200444e87.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Sep 2024 13:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726950505; x=1727555305; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DvDX+Qkf6ul5sVNd1hp47xzf2SFXNZFnERGsXMXc2Jc=;
        b=HdNF9iRp8KIJK8xoKJTD/CpYktJ0MuN9rA4pw7JtRZ6mY9KiPiD5qrpBBIZ9P5+2V+
         rqD3xmVEDPRsOWaMTT41oNS0uLHDZRrLH3KqJynKQOq6EQQ2TQs856vIjTue3F7dUSB+
         /D+75kKTfGcBw8eFbR4liCeQRvP/KButnYQaBOIFfjI3ZaZ6HhirMNmRD5NzBSZVYk8/
         oPSehMgAH0L9lG+RCgPOydyVcZS8TieOTOWPj1R7b3b4gQp8fhoMR5i1kAf77G4BuB7h
         ta3PzJwgQedDV4KBDJW0SmNn1Cra3lvm0X3TkKSTJ7NKEActtevBPT3yJ02nSsLmY1Ha
         pXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726950505; x=1727555305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvDX+Qkf6ul5sVNd1hp47xzf2SFXNZFnERGsXMXc2Jc=;
        b=M4WruiqdWgTm2AQDlKrURLkWXgfw2wlKr9NVEMVy+Rjk10ZMocdHdubLesN43Ud4lr
         /reqRfNca4gwjIN8V/NHcW+2CFva5W+3RpBUjy26bK00NwvFjqF6y659Ndv/sJP8RunN
         QHgqw9rskns7AQ2u2nT/46vcg96Ui8DDRX8oHRr6IYK1Uljf6qnwylyOQBKxZldsWhfK
         Gi8/J54NtL2EqSqzs0vmMkaDrTUVsEd3sF8iMNAzBQh8S1Ns9YCOIn/gwNapH4vFPlxT
         yH1YNtmgRc1BJMrTzMEGIrOi2vRHXsZJh6k3KSs5gz5RgBzTSBm3ozoRJDSAgS1Wl19G
         Ap7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXrgkO9C14Ba367p0uvpykuAIHdh/x3by7DBykEzZNQSsqjqTVmftMKnG7T4bLxYDuve6Jj78iUr2I=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywzu6+hRHvvMdTTHVfuPcpF3t25Suho3lUnhck3JNhq9vDIsOPU
	7vVDNf0tQwLqiC66JeyVqmb+9QTPDSbdo9FRw1YEIiXl9xwCP3GO0fLTeUPk9QU=
X-Google-Smtp-Source: AGHT+IFhPIT+q2MyB5RN+pnWTfR+TceVTQH7kIiLDuOrDILRvZI3ajKI2nahwHEWM6RNEd8Ms9wrXg==
X-Received: by 2002:a05:6512:acb:b0:536:a4e9:9cf7 with SMTP id 2adb3069b0e04-536ac3400e3mr3783318e87.56.1726950504875;
        Sat, 21 Sep 2024 13:28:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53691d62993sm2264292e87.269.2024.09.21.13.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 13:28:23 -0700 (PDT)
Date: Sat, 21 Sep 2024 23:28:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>, vkoul@kernel.org, mripard@kernel.org
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v16 2/8] phy: Add HDMI configuration options
Message-ID: <5bn3qcbzyyudjh34y76jj2r5j2p7mzpig4xntmjjlneznoipjw@ca7sbco5ceyk>
References: <cover.1719903904.git.Sandor.yu@nxp.com>
 <b1acbd48470d41b53b359d27fa2ea9358a037324.1719903904.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1acbd48470d41b53b359d27fa2ea9358a037324.1719903904.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_132827_422491_9F93D951 
X-CRM114-Status: GOOD (  24.77  )
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

On Tue, Jul 02, 2024 at 08:22:34PM GMT, Sandor Yu wrote:
> Allow HDMI PHYs to be configured through the generic
> functions through a custom structure added to the generic union.
> 
> The parameters added here are based on HDMI PHY
> implementation practices.  The current set of parameters
> should cover the potential users.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v15->v16:
> - Remove pixel_clk_rate, bpc and color_space fields from struct
>   phy_configure_opts_hdmi, they were replaced by unsigned long long tmds_char_rate.
> - Remove r-b and a-c tags because this patch have important change.
> 
> v9->v15:
>  *No change.
> 
>  include/linux/phy/phy-hdmi.h | 20 ++++++++++++++++++++
>  include/linux/phy/phy.h      |  7 ++++++-
>  2 files changed, 26 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/phy/phy-hdmi.h
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> new file mode 100644
> index 000000000000..dd923e19d17c
> --- /dev/null
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2022 NXP
> + */
> +
> +#ifndef __PHY_HDMI_H_
> +#define __PHY_HDMI_H_
> +
> +#include <linux/hdmi.h>

This header is not neccessary anymore. With it removed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Maxime, is this patch fine with you?

Vinod, could you please pick up this patch for 6.13 and possibly provide
an immutable tag for it? I see drm drivers using bad workarounds because
we don't have this in the API yet.

> +/**
> + * struct phy_configure_opts_hdmi - HDMI configuration set
> + * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
> + *
> + * This structure is used to represent the configuration state of a HDMI phy.
> + */
> +struct phy_configure_opts_hdmi {
> +	unsigned long long tmds_char_rate;
> +};
> +
> +#endif /* __PHY_HDMI_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 03cd5bae92d3..4ac486b101fe 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -17,6 +17,7 @@
>  #include <linux/regulator/consumer.h>
>  
>  #include <linux/phy/phy-dp.h>
> +#include <linux/phy/phy-hdmi.h>
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  
> @@ -42,7 +43,8 @@ enum phy_mode {
>  	PHY_MODE_MIPI_DPHY,
>  	PHY_MODE_SATA,
>  	PHY_MODE_LVDS,
> -	PHY_MODE_DP
> +	PHY_MODE_DP,
> +	PHY_MODE_HDMI,
>  };
>  
>  enum phy_media {
> @@ -60,11 +62,14 @@ enum phy_media {
>   *		the DisplayPort protocol.
>   * @lvds:	Configuration set applicable for phys supporting
>   *		the LVDS phy mode.
> + * @hdmi:	Configuration set applicable for phys supporting
> + *		the HDMI phy mode.
>   */
>  union phy_configure_opts {
>  	struct phy_configure_opts_mipi_dphy	mipi_dphy;
>  	struct phy_configure_opts_dp		dp;
>  	struct phy_configure_opts_lvds		lvds;
> +	struct phy_configure_opts_hdmi		hdmi;
>  };
>  
>  /**
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
