Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34ECDE77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 13:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uCuahqS/PeWiNUFVY0DOlWr4M0AdVgHwfHVSfuzSmw=; b=vuBcJbRAqbkTnZ
	BmJNZaq1rcknkJeI5U6+McwEN2SXdHRl7FSQZG6J+HyhlLv1lsDNOMIpy/V/OfOn9fKieWxzNxdsm
	OLA3VkkZIQdYvwPZUKxycJSVo1WKs+/xsV90i35MmIFiNSCd+6nUL4AZ4eu7jP5+5TLRqr9iSMbAf
	0fdFDtxsYxn0y7Hk1aSwv12hm4z3AKO2SsSHj2Y+5dRJIa8rsknk5vGoYTUZeSNm7ZJHTf/RH3fqk
	FU7jLBI6fy/GkqieohqndQmB3XKHY9T2D5Ebdqi6ogqY+DRVFDykrCrSxgPXlQ5NSjUr2xrEP1oA5
	04TFcsMof0ibcJfzqhMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFvq-00000005HTt-1QId;
	Mon, 30 Dec 2024 13:35:42 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFvn-00000005HSj-3f0L
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 13:35:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53e3c47434eso9851047e87.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 05:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735565738; x=1736170538; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=DcwZyxZ+t3kDotT68wIz0t2E6Ko9xPxX9SZDhBCayv05E92Y4mAgyLz3RihW2ur42L
         jKyai7DAJbbB7UY8Nr54SHJv6F2xr9Z06Uiae8asJC4DiI751ylVFqvgQkaNvlcje+kn
         CQ4NUa3QKlTknhgMy4BmRsT77hCyRPwWOZTUqVDXTIi40pNV5J+sjTot7vLMT6EdXkIe
         Ahb/RBTn9XZwyQlAnp7GFW1LuVWe8S7pIpgtGvQGLrd8Ig0wynMTaIP/VqDzlQl3VnHK
         cd7o5owsi9hCEx36nIe3HbYHNGkuzi1Fa9i/+hAObk5AfEZRTr0R2PA2F/Ravm+rA6ci
         rnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735565738; x=1736170538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5prvbL4qVVxyUau/62tjpzq6Xjuv+m8EjzcAcEKEz4=;
        b=LI+gw9NngqLjrDYtMbENwLNMkD57x5+8lgjNy+bVbVeuAqsm1pCWRMgpy4d7Vr+Q4b
         PcrMgDd0pAhVw8DOGe9pTOGrkRV9M9206QHECctexLqsiZ8l4nMuD61d5BTtstoYXbmR
         LQsnpQIzizLp1XxZ6FbGLEocKDRYsyTui8LcqjTgyrOcks0VpiBftR8Wl3fWmAZy7yj4
         zop7f3v4eWi+hVC9hgog9DoHgq6W5ku0MWaICXs1DNbNgBtlBZDLA0x6KuArwmCvBwF1
         S1ecqpNmzvwUwalAzCh0S9zh9DsRiOmgKm4FB/DOgJGI+TAplG3RnXVT/FoB89XV5Mpw
         sjPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS6zKw2k2Xa5wgZzLpIqqg0yTTgTkVigxFMF7RToNRVnt6DX8GMqgQJ2U+JGfNBxEzkPFAz/VBQ9A=@lists.infradead.org
X-Gm-Message-State: AOJu0YydYeecMrOKC09+4BmOKV73nx0K5yc7/5gddRIlhOYi6MInh7XQ
	jZoqIfTLkx6smCOy98HY9n3n9FdHQsER+uDj9F5wZQNmhJ2ng2FYhRNtx614NBQ8AV6olHRNH+H
	4
X-Gm-Gg: ASbGnctXQtqdJvfiJvB6RBMiqDItEoLU16nn36z2Vq4q/Ijc67cUEBjdKtb0qk6VUPW
	+vzU+ql5lm3HEy2cBy4spGEgXgjNz9ApopAkjzrB1Y2ir8acuxJP5PYzA4LZl8x1ZVn80gNqIn2
	LzT1egS/WEyRlTvxCc4j++4Qb94Cj8A2BQHKGmZeizK5k6FrjtBp3HmgYNzOXSLeazPpzGCbxH2
	W2bHsbVvdaWIKrOHPnKUkR3PgnpQy2RSgwo59MjEM+ic1AF/0MneesGHQNrl5SXIo01fWj9AqR7
	GxHKaqqJK1hL2yGMahdJWL2v1p2sESO8nIne
X-Google-Smtp-Source: AGHT+IGYRhZnLXNmLM+FMzz0ZpamPsZkQchJSYMBUnIzcz5KdEvg8k8tQLs0cvWfBZIvHDrkMU6Dow==
X-Received: by 2002:a05:6512:3ca8:b0:542:2a20:e694 with SMTP id 2adb3069b0e04-5422a20e73dmr10688219e87.20.1735565737587;
        Mon, 30 Dec 2024 05:35:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423e0662e3sm1661166e87.188.2024.12.30.05.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 05:35:36 -0800 (PST)
Date: Mon, 30 Dec 2024 15:35:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 13/17] drm/bridge: analogix_dp: Convert
 &analogix_dp_device.aux into a pointer
Message-ID: <e52pbjnusvuoqiyoorjr5msrfmgeqs2jt5sk6zcesvzy7cszzk@fzrtpsjoklgu>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-14-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-14-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_053539_903927_F270D49F 
X-CRM114-Status: GOOD (  19.14  )
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

On Thu, Dec 26, 2024 at 02:33:09PM +0800, Damon Ding wrote:
> With the previous patch related to the support of getting panel from
> the DP AUX bus, the &analogix_dp_device.aux can be obtained from the
> &analogix_dp_plat_data.aux.
> 
> Furthermore, the assignment of &analogix_dp_plat_data.connector is
> intended to obtain the pointer of struct analogix_dp_device within the
> analogix_dpaux_transfer() function.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 92 ++++++++++---------
>  .../drm/bridge/analogix/analogix_dp_core.h    |  2 +-
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  2 +-
>  3 files changed, 50 insertions(+), 46 deletions(-)
> 

[...]

> @@ -1127,6 +1128,7 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge,
>  
>  	if (!dp->plat_data->skip_connector) {
>  		connector = &dp->connector;
> +		dp->plat_data->connector = &dp->connector;
>  		connector->polled = DRM_CONNECTOR_POLL_HPD;
>  
>  		ret = drm_connector_init(dp->drm_dev, connector,
> @@ -1535,7 +1537,9 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>  static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>  				       struct drm_dp_aux_msg *msg)
>  {
> -	struct analogix_dp_device *dp = to_dp(aux);
> +	struct analogix_dp_plat_data *plat_data = to_pdata(aux);
> +	struct drm_connector *connector = plat_data->connector;
> +	struct analogix_dp_device *dp = to_dp(connector);

I see that Analogix DP driver doesn't support
DRM_BRIDGE_ATTACH_NO_CONNECTOR, but at the same time I don't think this
is the step in the right direction. Instead please keep the AUX bus on
the Analogix side and add an API to go from struct drm_dp_aux to struct
analogix_dp_plat_data. Then your done_probing() callback can use that
function.

>  	int ret;
>  
>  	pm_runtime_get_sync(dp->dev);
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
