Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F732E77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVvQrpc9OxTyQI1v9HiH/giOX0ixw98VgGDqgCM14FI=; b=OZRX8d8iuaiKgO
	TxOuc1a6gaMWnn6b0L5ODqRhR/nl+nZbra7bDCoyctWaWk0tUnTVSn8xxBm+/goDQ0kf45kYzthaT
	jTMIEXcx6GdLJ76Wfm/xyDhYmmwJyLRDp3Upu2BSFE6tZchIotKHttWSJ/XFKrz86yDLP0rq6h4n4
	ceOnEgLUMZ3bxN1KMVWpwaXVTKIkKGRB69z0oY//KChJBcV+gi4f4OWBd7m8DshNfD/9InSs+Tq1e
	SinClrpJcg2Bu5rf3hH30uhLCmHMxWQMnuXPC+jyHW5ccV8h2zukgAXpRAa/sejUvdcRqIdyUUSsG
	Xo2Ws86rKas93zysGEww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrw6-0000000Bthk-0Cw9;
	Thu, 09 Jan 2025 12:46:54 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVruq-0000000BtNP-2FGw
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 12:45:38 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3047818ac17so6257201fa.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 04:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426734; x=1737031534; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=lNmjmPyh83kP6fuR7NDGzwxt0tHdNmzlA7L9TAPo+S7b+JIFO7VQNgz993KoOthprf
         rVNXLLovReOoOh0lG1yufedhDu/zxoFT7iZRiuLKXb0QfowH3tjpNIlJxzRa6MR3II+F
         Rh4uTvCoa/Yn3rdQUgvlfhUAdNLEgqta6uAU2+JqA9MNmLueHyuxYxArCU4pg865i4gK
         MM+R4VOvZsL2TTBrrIr0VGba2rfDFmUJuK6OFY6HetcenoCoPXGBKRBjq+etQoDHXmY7
         EcPa7oafvNE8cKdfj106PvDXnXFcOwsUlirhX0woBn40JBUPqg2vmO0TSiAi58BEohI6
         7l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426734; x=1737031534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHN/5X/Qy69qyMpCWb8kneKgFMU5IOAUBhcGNPPugoM=;
        b=Sz0O7MDzm/YSK6dWPJhExnryhD3mhwrHWpSU8SWF/VCi3woHs/QC1LTffN5OPnol77
         GWhT2DJDUgl08b+JnzHnq/UIIB5E8dopySHKyqUJ2ArQdwYEUmcvkl8m56kN+r3vfMAB
         KY2F2B5M2N6qocovkpkmjU2MhW/WcA27L2dBFT9wDyzCE/665CBOO52MK0QOogUHHbnX
         2+zfa4fAn3u1Lxsfr9Lb+g8iD3564EjLtYK841rifErqegHWqwOX3nQ+IQvV4bUsViwM
         nGNdKXjsOj1NWrpeY0OZuJfhR310V6OQAM1sjb7GGdrXLhFggNB+LAYqmqiakNcr/opc
         3eZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQTohXz5uqiQr7Lg7WWu7BZZz6r9ITkDu/YC88CWoBrC5YN0+jbk9+4SIDYcbcy3SVT83eySFD4Sg=@lists.infradead.org
X-Gm-Message-State: AOJu0YygUBRp3nMD5KuSEq6R+gTaUOPIrud+59tOJo8MJby1FNtrrenG
	JdF6S7roZM/NWljGgLaobiOYL0Lo0d/96/KC09Z1gUR7Uz5foZyZX/3OafcyA74=
X-Gm-Gg: ASbGncuYxAPEyF3XifLEcuu4BMbC8k9zlfdefU5FVNWp+S7QL+e7+qAmnozmZMPor+X
	yfNtaWY7F4fE20nSo5Adrg3GbrQsogVm0e9VOTD4h6gv0hkap+nq62duH8fIvK42npVZMYb+DOt
	6h4n5QxVl2E5tPM34+CtQRayl0rBuMNH1/CCmRqgRIZkEnSXVbcNVeDydUPr0CgBkRUqIN01U9U
	JREHYntV1V5yeMTwR/YiTQS8ejVNvyKYiwBUxF3lEAWcXRz/bwvstwHgBm6yRvETQ7QX0N0VDzZ
	22iuzsfmQyFZsTLDIQdRzX03ScIGyFE75ISF
X-Google-Smtp-Source: AGHT+IElPQjul5XrLoFmXQxy4bhtqUX4GjET6+7h8yvFk+lQX7gbeGOus+f4biXivZj6ML5v9KKwQQ==
X-Received: by 2002:a05:651c:f11:b0:301:2d8d:a3ba with SMTP id 38308e7fff4ca-305f45a06d8mr18524331fa.23.1736426734459;
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0cfc32sm1877911fa.45.2025.01.09.04.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:45:34 -0800 (PST)
Date: Thu, 9 Jan 2025 14:45:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <v3is3v3fpx42i2eh2qrfkx3qx3z7iema3honi544qoc4j2whdo@h6ajv5h53gry>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-12-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044536_617574_AB87DC12 
X-CRM114-Status: GOOD (  22.51  )
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

On Thu, Jan 09, 2025 at 11:27:16AM +0800, Damon Ding wrote:
> The main modification is moving the DP AUX initialization from function
> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> eDP panel during probing, it is also needed to advance PM operaions to
> ensure that eDP controller and phy are prepared for AUX transmission.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>   component_add() when getting panel from the DP AUX bus
> 
> Changes in v5:
> - Advance PM operations to make eDP AUX work well
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
>  1 file changed, 34 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8251adfce2f9..78e78fb474d3 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  	return ret;
>  }
>  
> +static void analogix_dp_runtime_disable(void *data)
> +{
> +	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_dont_use_autosuspend(dp->dev);
> +		pm_runtime_disable(dp->dev);
> +	} else {
> +		analogix_dp_suspend(dp);
> +	}
> +}
> +
>  struct analogix_dp_device *
>  analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  {
> @@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>  	}
>  	disable_irq(dp->irq);
>  
> +	dp->aux.name = "DP-AUX";
> +	dp->aux.transfer = analogix_dpaux_transfer;
> +	dp->aux.dev = dp->dev;
> +	drm_dp_aux_init(&dp->aux);
> +
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		pm_runtime_use_autosuspend(dp->dev);
> +		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> +		pm_runtime_enable(dp->dev);
> +	} else {
> +		ret = analogix_dp_resume(dp);
> +		if (ret)
> +			goto err_disable_clk;
> +	}
> +
> +	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);

This looks like a local version of devm_pm_runtime_enable()

> +	if (ret)
> +		goto err_disable_pm_runtime;
> +
>  	return dp;
>  
> +err_disable_pm_runtime:
> +	analogix_dp_runtime_disable((void *)dp);
>  err_disable_clk:
>  	clk_disable_unprepare(dp->clock);
>  	return ERR_PTR(ret);
> @@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  	dp->drm_dev = drm_dev;
>  	dp->encoder = dp->plat_data->encoder;
>  
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_use_autosuspend(dp->dev);
> -		pm_runtime_set_autosuspend_delay(dp->dev, 100);
> -		pm_runtime_enable(dp->dev);
> -	} else {
> -		ret = analogix_dp_resume(dp);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	dp->aux.name = "DP-AUX";
> -	dp->aux.transfer = analogix_dpaux_transfer;
> -	dp->aux.dev = dp->dev;
>  	dp->aux.drm_dev = drm_dev;
>  
>  	ret = drm_dp_aux_register(&dp->aux);
>  	if (ret) {
>  		DRM_ERROR("failed to register AUX (%d)\n", ret);
> -		goto err_disable_pm_runtime;
> +		return ret;
>  	}
>  
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
> @@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  
>  err_unregister_aux:
>  	drm_dp_aux_unregister(&dp->aux);
> -err_disable_pm_runtime:
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  
>  	return ret;
>  }
> @@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
>  	}
>  
>  	drm_dp_aux_unregister(&dp->aux);
> -
> -	if (IS_ENABLED(CONFIG_PM)) {
> -		pm_runtime_dont_use_autosuspend(dp->dev);
> -		pm_runtime_disable(dp->dev);
> -	} else {
> -		analogix_dp_suspend(dp);
> -	}
>  }
>  EXPORT_SYMBOL_GPL(analogix_dp_unbind);
>  
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
