Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5003C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 14:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn34JgTpg8beMcJhx6yQrWA4cpqO0SxFMGdQbHYn+lE=; b=qRjimBKu7/o0Iz
	YHxdfaiYq1sXtfIXUscivQMatw9RyVjCIMUgWQwKvxJx/gocqyHXng+mLwCdufNtz08EV3xGSiEte
	AQor5mNESVJrH25V6QoE+Z17lUQ11d0eC6+Fgkei41RtVhQvHPpwZCY9spcGblw+dz59oImBNS9nN
	wpb4GLJYM9df8nrMqrUypwqZTTW90hAkxJcWHEhtlWij9eiR5FUbNHloxNnP14tkULY69whDYiFn2
	drBl4S0gPuhHrQSwwK9OGqu3fU89JMl2omhq+Sx6Pe4AcUOOtVK/ZgNOjgK5KG98S+9O5wwLI1N/I
	Z5maULtmLFcTfGtB9E/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKdE-006ljY-CE; Sat, 05 Nov 2022 14:58:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKd9-006liG-7F
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 14:58:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9149DB8010F;
	Sat,  5 Nov 2022 14:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5442AC433D6;
	Sat,  5 Nov 2022 14:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667660320;
	bh=BKBJM4WxLxtpoTSh2/CeSWgsWM5iS+n0pm4kX6li5xs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=elUfWsElUulpUKUL2DFAnh8XIQtmpACPFi98LDNDtUS3qvfk3HP3gNOhENCVb25ji
	 DecJyr5DRYej95eI6qS7FvlkN+bXXEFJmcXO8PTcPpCo0kjuPfKaTqdYkVoKJGjBd+
	 b3xHnt3iAUrxp/rnyJWyqNVl+jbLXyldbUdXdNBX1wNMwlJpIY9/D49ou7UhLa7P0V
	 HMhjj76kESl8sni5uY4h/yI+TrpWDh1Dp4B1gb0ijvK3oSVIESIdVzRpuMrV0jhUNx
	 QVmaY5LGwCZ06HZUoUXhP4sM35kTxDdhCHzLtFq/sbwONaf3rBa4GgtVHCzlIJEMsm
	 nQref6lhf06/Q==
Date: Sat, 5 Nov 2022 20:28:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	jonathanh@nvidia.com, thierry.reding@gmail.com,
	heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 08/11] phy: tegra: xusb: Disable trk clk when not using
Message-ID: <Y2Z6Gzd3RmmxMaXO@matsya>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-9-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024074128.1113554-9-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_075843_436656_CD31270C 
X-CRM114-Status: GOOD (  15.58  )
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

On 24-10-22, 15:41, Wayne Chang wrote:

Consider revision of title to: "Disable trk clk when not in use"

> The change fixes an issue that the pad tracking is a one-time calibration
> for Tegra186 and Tegra194. We should disable the clk when it is done.
> The 100us delay is for HW recording the calibration value.

Consider:

"pad tracking is a one-time calibration for Tegra186 and Tegra194. clk
should be disabled after calibration.

Disable clk after claibration.

While at it add 100us delay  HW recording the calibration

> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  drivers/phy/tegra/xusb-tegra186.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
> index 0996ede63387..f121b4ffbbfd 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
> @@ -609,6 +609,10 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>  	value &= ~USB2_PD_TRK;
>  	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>  
> +	udelay(100);
> +
> +	clk_disable_unprepare(priv->usb2_trk_clk);
> +
>  	mutex_unlock(&padctl->lock);
>  }
>  
> @@ -633,8 +637,6 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>  	value |= USB2_PD_TRK;
>  	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>  
> -	clk_disable_unprepare(priv->usb2_trk_clk);
> -
>  	mutex_unlock(&padctl->lock);
>  }
>  
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
