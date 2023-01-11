Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27193C5479D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 09:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPeHbjdMU/U+ssroqwhKRCwhy7V1swX9F6lhGaOBXpA=; b=wiZq5GMhVIyWP4
	MTr86+kxgb232NensAMz8udGeZQrBtWxPMPfoiiTvecLqjGdWdqMPsKQg7MRWXDCewJzOuvseTGU7
	nzNfI4MSUhjltm/wU92RLK4b1SIO+eRFgHd67ekZQq+pBdvvD1SiIb34NanA+9yyaxwtDeENzrQiT
	/069QQnghYqkh9SUrDm8UlShrDSkvPraOD3h6ffwisZboDGZGcIM2SJqiJvWAibU+aFNsAtPCzGDf
	GXxib7Y67EBjdebkcWmIniSL9a67hczyqvTinnYRcYSdz3qf4Zbu7ZZLjaE99hcPlDD9b4bO+OtBq
	C4t/LljFNGqqiGx/tV4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXiu-00AcUV-K5; Wed, 11 Jan 2023 09:48:44 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXii-00AcPd-70
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 09:48:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E0546B81B6E;
	Wed, 11 Jan 2023 09:48:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF3D0C433EF;
	Wed, 11 Jan 2023 09:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673430504;
	bh=DzJRlBRLs+B8dSkP4tOGd0goaj6Tw9H27iXg1CY5XYs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K01Gh3WXBRv9YOutdTMOQQc2Tohi22oBFgmkRt5KAMAnofoXb0RzzUvcl1dmKAOTb
	 ver9nc/gkATJS8T3FuT608YSB8IqIjQXl/ik70VFNtiLJNzskV8zBmK9XxAnRoruXn
	 D6esSHUK7975uLqgv+u6CQ0OwxB30h5s39bUOHuJZNVFmfMdSO9/vNFe3yrOJVAhaq
	 Fbjf2ZPuw+2gFchYk21LyDnD1W8dq60H9/LwV37QamzNtVIzbgWXxztB9k2UOh/FOa
	 F3Mgvrwi423/kW0BXaYSpDUIZ93GifSRM3ni6tbyd9No1Z3KcLm7cCq7E++P9/0l+K
	 IS2zDNxHuSwww==
Message-ID: <18134850-da17-80c5-1f83-203db571b63b@kernel.org>
Date: Wed, 11 Jan 2023 11:48:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V2 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if
 typec-dir-gpios not specified
Content-Language: en-US
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>,
 Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20230106071714.30562-1-sinthu.raja@ti.com>
 <20230106071714.30562-2-sinthu.raja@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230106071714.30562-2-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_014832_639484_7C519F43 
X-CRM114-Status: GOOD (  27.44  )
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



On 06/01/2023 09:17, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> It's possible that the Type-C plug orientation on the DIR line will be
> implemented through hardware design. In that situation, there won't be
> an external GPIO line available, but the driver still needs to address
> this since the DT won't use the typec-dir-gpios property.
> 
> Add code to handle LN10 Type-C swap if typec-dir-gpios property is not
> specified in DT.
> 
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

> ---
> 
> Changes in V2:
> =============
> Address review comments:
> - Update commit description as per review comments.
> - Restore code to check only debounce delay only if typec-dir-gpios property is specified in DT.
> - Rename lane_phy_reg variable as master_lane_num.
> - Update inline comments.
> 
> V1: https://lore.kernel.org/lkml/20221213124854.3779-2-sinthu.raja@ti.com/T/#mb1f9f8d26b4ef735bbbc3994a1e9c16d52ca2c19
> 
>  drivers/phy/ti/phy-j721e-wiz.c | 39 +++++++++++++++++++++++++---------
>  1 file changed, 29 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index ddce5ef7711c..571f0ca18874 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -376,6 +376,7 @@ struct wiz {
>  	struct gpio_desc	*gpio_typec_dir;
>  	int			typec_dir_delay;
>  	u32 lane_phy_type[WIZ_MAX_LANES];
> +	u32 master_lane_num[WIZ_MAX_LANES];
>  	struct clk		*input_clks[WIZ_MAX_INPUT_CLOCKS];
>  	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
>  	struct clk_onecell_data	clk_data;
> @@ -1234,15 +1235,31 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
>  	struct wiz *wiz = dev_get_drvdata(dev);
>  	int ret;
>  
> -	/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
> -	if (id == 0 && wiz->gpio_typec_dir) {
> -		if (wiz->typec_dir_delay)
> -			msleep_interruptible(wiz->typec_dir_delay);
> -
> -		if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> -			regmap_field_write(wiz->typec_ln10_swap, 1);
> -		else
> -			regmap_field_write(wiz->typec_ln10_swap, 0);
> +	if (id == 0) {
> +		/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
> +		if (wiz->gpio_typec_dir) {
> +			if (wiz->typec_dir_delay)
> +				msleep_interruptible(wiz->typec_dir_delay);
> +
> +			if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> +				regmap_field_write(wiz->typec_ln10_swap, 1);
> +			else
> +				regmap_field_write(wiz->typec_ln10_swap, 0);
> +		} else {
> +			/* if no typec-dir gpio was specified and PHY type is
> +			 * USB3 with master lane number is '0', set LN10 SWAP
> +			 * bit to '1'
> +			 */
> +			u32 num_lanes = wiz->num_lanes;
> +			int i;
> +
> +			for (i = 0; i < num_lanes; i++) {
> +				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3)
> +						&& wiz->master_lane_num[i] == 0) {
> +					regmap_field_write(wiz->typec_ln10_swap, 1);
> +				}
> +			}
> +		}
>  	}
>  
>  	if (id == 0) {
> @@ -1386,8 +1403,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
>  		dev_dbg(dev, "%s: Lanes %u-%u have phy-type %u\n", __func__,
>  			reg, reg + num_lanes - 1, phy_type);
>  
> -		for (i = reg; i < reg + num_lanes; i++)
> +		for (i = reg; i < reg + num_lanes; i++) {
> +			wiz->master_lane_num[i] = reg;
>  			wiz->lane_phy_type[i] = phy_type;
> +		}
>  	}
>  
>  	return 0;

--
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
