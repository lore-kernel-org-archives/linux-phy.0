Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0F5D735FA
	for <linux-phy@archiver.kernel.org>; Sat, 30 Nov 2024 08:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1du7BVG5xuSUtpzjZfa/Sm4ewgrmVLEE0HuzSiF+Hg=; b=HmP0dfQsaKPf3q
	9MGMUpWcOiW1BVw3vlfPwYkZ90kpDfjn/Hh8T73QXfnsXaDuCZlsgbXoCRVn+hBTebDrS35ml39f7
	egwQLu5dhE4es1QXpuxPqTT+XAB9t5X/oEfl7iUvDhLFHmBfBWTmklR53UP3u6DZOkm9fRqtHIWzG
	lN0o8SoeSrJd6xqbbeDn4MvY2C3kF1/IkCMXzpjzQ/ZqauNhXndNEF6R3/yhLFXv79U6Arw0/yfdF
	Duy6mf6oshsjFa3smsMOU3R0YLmqfW5veJoEEB+V6wAmUjFOpcn+Sdcrb1UkiaVNehnhvACrl+E/U
	k5L8uHBvn9DqkdQu4FOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHJEn-00000001eRi-2hHX;
	Sat, 30 Nov 2024 08:54:01 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHJEj-00000001eQH-0MRW
	for linux-phy@lists.infradead.org;
	Sat, 30 Nov 2024 08:53:59 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53df80eeeedso2626661e87.2
        for <linux-phy@lists.infradead.org>; Sat, 30 Nov 2024 00:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732956835; x=1733561635; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MCRiyMdK31NndjkRy/3fWARIEqrVAn7I6TcjbFNOugw=;
        b=M/O0tEth3MsGzoUjxII8hdK5W3irxjLpNYwKgyRZFCittNZ0h23xM36zp06GH7qtIY
         dsRxe7Zc5L3CCH6Qaje//rkBznTal9+v2GNFbxejh2mRjWltkhcjLYWfSEa2vGuK7fK7
         zS+NDenGdLmrNr+Hf5vyMZVUniHlF8SXWxOSiV1s/CPD6yZvICKX26MQfcpTAF2lhvUr
         LydNoYuZaGo2qzw3S0Qe1FsJf4bTWmC7d6olLjPaJIwdGMlP7fsMUvwd9Jkevb4yXAmU
         3gLwNA64AbnNGgozXFYmeiQyNzpCydacep7idzRgoJqzAaNwo9qEETxPxSNiLpp+DiG1
         eP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732956835; x=1733561635;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCRiyMdK31NndjkRy/3fWARIEqrVAn7I6TcjbFNOugw=;
        b=sbF8dwscSDHsUHvC0Dknrsak6zoNyBsYGnT6iNo1IFPzX3laUUa0FpUn5VrhgcfjGW
         MtFPhMe50i/hY/84GNigHX3WIDONnEZrke1D+bV9GAEqj4oM8nymTmGB2pkDuhZV/e9s
         e5lS2VlyQQ9BhLUM76V+Sn/aJ2qT8QIGNgHTpCNJPxXZPrDg6tuLUgEUwqpXkxX1a9Mw
         wBYyyJBTgGxpp/zmRs72cvAftbpe13tSA3LghZvkXx/0Bw2d3+mOula4oQvl9fhhe0yS
         y4VRmGieGKhn0bmD0JgoVVeEMEXejNPnJm1hT5YI5yR8KxbXDi8crnoEXUDBe6fdyEIz
         QqCA==
X-Forwarded-Encrypted: i=1; AJvYcCU2yU8738E4Mh3WX6myqgRklQLgZSeR4L5n3+sNL4uA0EgJZEtnE6lK6RgsLKoy4FLjGHo0DBrrEn8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKGvObkPnyGef2PzMuGOeVYp8HEZ59eb7aWxBogKebW+ItsDmW
	lJpjZWzCfiZlHGTmfvyKBg4R95JzGXOIW9PZuNIotjPmTVHt24u4RVnA/xoRZpo=
X-Gm-Gg: ASbGncsvoDylge9nJd7E4tHPz4bMuBnX/YU87upwDHEZFCw1q1NZ1PXkPR5WRPgRyX4
	YYuFQe0HOHKss4OzucUai5VX+HUk3YfWrPLxv2ZFB+9C5Uc0onJuiCc8S6o7NNHwdGZV/R5mk+c
	blH9Pc2gvyC+B+9DZU2VItvybqOApJ5prmUaH0MiKTpCDTizYN2LKsSjwJIupiZTbchCHzwNp23
	yyNEWL6mfhAqimEr/HQn0XmPP+4TRczGN0nhq3WnYjrsLmk7gPHHhTqT8J2/O5FjEG4WeyOqItX
	LXp2gx+hpKB/pQIKL6VN9GkXc70N2w==
X-Google-Smtp-Source: AGHT+IEW2arMDWGqYZ1mh73vhp8aH4A2JUPywHSwLMM0QAhe/TE1+vmLynKojA+Q9JDxHrSsDsIweA==
X-Received: by 2002:a05:6512:280e:b0:53d:e50a:7031 with SMTP id 2adb3069b0e04-53df00c6063mr8808918e87.3.1732956835260;
        Sat, 30 Nov 2024 00:53:55 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df646f2cesm695508e87.121.2024.11.30.00.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 00:53:53 -0800 (PST)
Date: Sat, 30 Nov 2024 10:53:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, 
	algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, 
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, 
	linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Subject: Re: [PATCH v1 06/10] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <twhosvpoyafo472gqsblpvxmuewe2lkqufxabp2q7o636uinfm@unzyfv2pchqn>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127075157.856029-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_005357_952484_E11AC215 
X-CRM114-Status: GOOD (  21.89  )
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

On Wed, Nov 27, 2024 at 03:51:53PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  4 +-
>  .../drm/bridge/analogix/analogix_dp_core.h    |  2 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 90 +++++++++++++++++++
>  3 files changed, 94 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 6f10d88a34c5..7624ed13cdbf 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1672,7 +1672,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_probe);
>  
>  int analogix_dp_suspend(struct analogix_dp_device *dp)
>  {
> -	phy_power_off(dp->phy);
> +	analogix_dp_phy_power_off(dp);

Why?

>  
>  	if (dp->plat_data->power_off)
>  		dp->plat_data->power_off(dp->plat_data);
> @@ -1696,7 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
>  	if (dp->plat_data->power_on)
>  		dp->plat_data->power_on(dp->plat_data);
>  
> -	phy_power_on(dp->phy);
> +	analogix_dp_phy_power_on(dp);

Why?

>  
>  	analogix_dp_init_dp(dp);
>  
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
> index 774d11574b09..a76079d61768 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
> @@ -232,5 +232,7 @@ int analogix_dp_send_psr_spd(struct analogix_dp_device *dp,
>  			     struct dp_sdp *vsc, bool blocking);
>  ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>  			     struct drm_dp_aux_msg *msg);
> +void analogix_dp_phy_power_on(struct analogix_dp_device *dp);
> +void analogix_dp_phy_power_off(struct analogix_dp_device *dp);
>  
>  #endif /* _ANALOGIX_DP_CORE_H */
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> index 3afc73c858c4..809bb0c72d18 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> @@ -11,6 +11,7 @@
>  #include <linux/gpio/consumer.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> +#include <linux/phy/phy.h>
>  
>  #include <drm/bridge/analogix_dp.h>
>  
> @@ -513,10 +514,27 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
>  void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
>  {
>  	u32 reg;
> +	int ret;
>  
>  	reg = bwtype;
>  	if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
>  		writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;

You can drop this, .set_lanes is false.

> +		phy_cfg.dp.link_rate =
> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> +		phy_cfg.dp.set_lanes = false;
> +		phy_cfg.dp.set_rate = true;
> +		phy_cfg.dp.set_voltages = false;

You don't need to set those to false, it's cleared by = {0};

> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> @@ -530,9 +548,24 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>  void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
>  {
>  	u32 reg;
> +	int ret;
>  
>  	reg = count;
>  	writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> +		phy_cfg.dp.set_lanes = true;
> +		phy_cfg.dp.set_rate = false;
> +		phy_cfg.dp.set_voltages = false;

Likewise

> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> @@ -546,10 +579,39 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>  void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
>  {
>  	u8 lane;
> +	int ret;
>  
>  	for (lane = 0; lane < dp->link_train.lane_count; lane++)
>  		writel(dp->link_train.training_lane[lane],
>  		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		for (lane = 0; lane < dp->link_train.lane_count; lane++) {
> +			u8 training_lane = dp->link_train.training_lane[lane];
> +			u8 vs, pe;
> +
> +			vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> +			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
> +			pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
> +			phy_cfg.dp.voltage[lane] = vs;
> +			phy_cfg.dp.pre[lane] = pe;
> +		}
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> +		phy_cfg.dp.link_rate =
> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;

You can drop these two.

> +		phy_cfg.dp.set_lanes = false;
> +		phy_cfg.dp.set_rate = false;
> +		phy_cfg.dp.set_voltages = true;
> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
> @@ -1053,3 +1115,31 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>  
>  	return -EREMOTEIO;
>  }
> +
> +void analogix_dp_phy_power_on(struct analogix_dp_device *dp)
> +{
> +	int ret;
> +
> +	ret = phy_set_mode(dp->phy, PHY_MODE_DP);
> +	if (ret) {
> +		dev_err(dp->dev, "%s: phy_set_mode() failed: %d\n", __func__, ret);
> +		return;
> +	}
> +
> +	ret = phy_power_on(dp->phy);
> +	if (ret) {
> +		dev_err(dp->dev, "%s: phy_power_on() failed: %d\n", __func__, ret);

There is already a dev_err() call in phy_power_on().

> +		return;
> +	}
> +}
> +
> +void analogix_dp_phy_power_off(struct analogix_dp_device *dp)
> +{
> +	int ret;
> +
> +	ret = phy_power_off(dp->phy);
> +	if (ret) {
> +		dev_err(dp->dev, "%s: phy_power_off() failed: %d\n", __func__, ret);

There is already a dev_err() call in phy_power_off().

> +		return;
> +	}
> +}
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
