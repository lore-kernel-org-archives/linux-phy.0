Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D558EE77184
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 00:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8zsOXx2J7SuabamSTiH5ALI+Hv20PcYyb/S0fjsXSE=; b=UDuVDBnSVZwzFX
	amlcXwCfy56T4wsPkcvLGkAVtY+P9QiqIM0/cJPOof18LoSHrhdQl+wFmawEJhH8kzGIJJKeFZ0ft
	LqbfopOVn27sOqX6lfcHK4vIgi/v73vfKHx5hacEYPulNnDZ2g8MwE55jLl4lCAsBrpulhtZs0syU
	D/EBoGUSR1qUt9KSp9RULRnQbQv2Q97BYx1i6vu32LGliHtrp/e0KC3e68dCo6cWsL2g2acDb/1Xr
	8Y6aXqOGaWhtPiPq2YHkPFQPYkOfk1ROXnv+9M7ig8J3FDb0NL7Au3zhmDqbck0FSkdUlxJLP1t8r
	Gi3Z7H19niDcEkO+aDMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQjU-00000003RkV-2Vjx;
	Fri, 20 Dec 2024 00:19:08 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQiJ-00000003RPG-3yTu
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 00:17:57 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-3004028c714so15275421fa.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 16:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653874; x=1735258674; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=m7pYb+4AgH95gguwnzkz6byWUlEhVz7J8e0VsCGuoel8sG38IUzvjuTgBKdiUxsh4K
         Gvqd5VDb97ta55VaXmH+qL0eM99epNu424QCHBcrJLpdWAM7yr3h8Wr9P8s/7MMQGhzT
         hhFp91T0lOxEHKJjA6njlfBFh9jKFLUAFESv/Dpyi0SyJTP/v0/bZNAWO3sxIG0Is+OG
         aXxjuDLOJqF7hzRRzXU3oKkNEG2TwhCJ8J+csY00dEuVYAu9Md4Ic01YsqgcsPMQcNFl
         goLPR275+3CIZFpR/6k14gNU3jPY4LFdqmOUusrMRW1Njf3rhc3HhZWzdfhgrO8veUPt
         VdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653874; x=1735258674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88ypJKEjfY/PQxYw2dDvihxL+GlYw4/eG83FW6BzWoY=;
        b=PXfM6oRLrf75ByZ99Gcrm0Uap1mcQAv7PqVa8yg4HgUqr1vQpzrWSaklR9wXPfMHgx
         6III6Q50Y7ujmlJqj16AX8qMDuEBDIuQhToomMU9Tt0lKLO4rmi6ORwRer7hXYSMNpKJ
         4gaECzCosdN6D2K/0V+O9ExHckqaAm4bJiUr8YkP2ZHuahRMuKB+BfCAyJgs+yFgUbw/
         rQv50UloJYxLy2C92MDjps8tTBgqnLQpwDLqz10o5L/OtXUnmVzgBas8Ugd2rtDukB4l
         vAc69AX+IU6GAaLYXFXuPyXVpNWUGj12Q185NhcS56IFKm6Ro6UHUCK5JArvrZXvxwzc
         m4lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRSvFflcPXzc/vwco/RwuI+ih/cMNyRkiaI8BNO8cD040Nyr+lFypGSCAlKGfpH9WGYaCM+370Z+c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr/muUMPpUuXIiWSzR85dUpdOUKuvX+j2fdu92pdSDU0LFZ5a9
	33lkfLPDt06ZLIZmnAr0YdIhmY9gmWre0jdPF84r93Q4RSRiVoIfPPpDzA4eCAo=
X-Gm-Gg: ASbGncuaD62AQLgBo9NTW8Z6YorBSEUAyCWJSLRdiTepMJUw8CnyGrkpK48YTQjiWGI
	/U22fgVzbZqWlw8nKOh/kdagGw+YHf8TqiW7t+2LxhxH74POamjVg0I/cORqayIvhil4/cTelGu
	7BbAic/x/1roYTPkBEPvGyIJ2yUSN0nBC3zqRdw1s4QszyBQp4NG9+B5/cy89jmXZunr9HoLB7F
	JheHGi9haxD9PYLSMvUmbiM6T0IWtIK24S7uKwvPd5Dx17m7YlE0C3dxSbt34SB817vboHdwalN
	X5WS8MkshHbyVepAy0wMyPy1Da5RTgZvNiQg
X-Google-Smtp-Source: AGHT+IFB2i5vKnWXGFFd2MWZqu6ISfQEn6gsPEZ+iz0AquMdjU/HdGNzEaZYfYTM6DlCEi0nsU27SA==
X-Received: by 2002:a05:651c:4ca:b0:302:4130:e19c with SMTP id 38308e7fff4ca-30468571039mr2038491fa.19.1734653874050;
        Thu, 19 Dec 2024 16:17:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cb8asm3815281fa.18.2024.12.19.16.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:17:52 -0800 (PST)
Date: Fri, 20 Dec 2024 02:17:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <irh3rei7to7gevrr5dqwa3qr3nl2lunenyvvvlqnpiyplbk2vj@ooedydnvl4df>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_161755_983321_363EB21B 
X-CRM114-Status: GOOD (  23.37  )
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

On Thu, Dec 19, 2024 at 04:05:58PM +0800, Damon Ding wrote:
> If the panel can not be found in the beginning of rockchip_dp_probe()
> using the platform bus, we can still try to find it in analogix_dp_bind()
> through the DP AUX bus after the &analogix_dp_device.aux has been
> initialized.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 9429c50cc1bc..eae02819e3bb 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -19,12 +19,14 @@
>  #include <linux/platform_device.h>
>  
>  #include <drm/bridge/analogix_dp.h>
> +#include <drm/display/drm_dp_aux_bus.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> @@ -1733,6 +1735,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  		goto err_disable_pm_runtime;
>  	}
>  
> +	if (!dp->plat_data->panel) {
> +		/*
> +		 * If the edp-panel module has not yet been initialized, the
> +		 * devm_of_dp_aux_populate_bus() function will return 0 and
> +		 * the done_probing() callback will not be called either.
> +		 * Consequently, the panel will never be found.
> +		 *
> +		 * This is the reason why we do not use the done_probing()
> +		 * callback and do not check the reture value here.

NAK. It is there for exactly this reason, to account for the panel
driver being not present yet. Please make a use of the done_probing()
callback.

> +		 */
> +		devm_of_dp_aux_populate_bus(&dp->aux, NULL);
> +		ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0,
> +						  &dp->plat_data->panel, NULL);
> +		if (ret)
> +			goto err_unregister_aux;
> +	}
> +
>  	ret = analogix_dp_create_bridge(drm_dev, dp);
>  	if (ret) {
>  		DRM_ERROR("failed to create bridge (%d)\n", ret);
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
