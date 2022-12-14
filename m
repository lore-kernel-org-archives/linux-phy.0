Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23CAAC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 14 Dec 2022 09:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB0yC0FKakVs9n+X4zv5pOU5avOoqT5+dzzTnf2uE6o=; b=3enkDBUd/iwlmr
	8XAG7qFNEQvWWKQOVx8JL41pUXOLZPNFIO4+B2enUm+QBOprKCkgtaLkScafFt9jGsjHsM9EL9M5T
	RTY8RvTjwKnG9+4+D+r5mpU7Wsi56D6Ry0QQBGIsM6u59fMCUQPjvSQl/RM5OE9c6d5GMIVunJDKh
	fKS2il7sZsA+qbWSR8QuBxUzD7AAyc/sLMiq/i8SSfQ+uCsqBmpxd9Cflu6TXiBbmp4fPOyUvVw39
	GPd/ipBdOJbgtFqFRFduRpIO2M/H43YEISwmIhRLQB/vDS4FqEwBQBk3Yx/XRaYDuPPig7fbWjpAL
	XHEYdV+Cxme19WAiMmYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5OHP-00FDF6-FA; Wed, 14 Dec 2022 09:42:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5OHM-00FDCt-5O
	for linux-phy@lists.infradead.org; Wed, 14 Dec 2022 09:42:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 85A206189A;
	Wed, 14 Dec 2022 09:42:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29032C433D2;
	Wed, 14 Dec 2022 09:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671010939;
	bh=ZetinRbh+1bkq+Ggb3nuqcA7yRax5OVLvj6ymNd2xII=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NJU5Nbadqt70jkWfgj3asfnl19yA5hTN4ABWDLEj3SqTRjKu8D8X8blpS49tsBXtV
	 pRT3uc1usu/VaeJZ+jkWt47uSze9RL3Lo95zKYm8xlzD2T385L4JwG3QbPsK19CnbD
	 Ry+WfQ+80K/LaG9SLMGYNim3tw+zuJjRpRJ9gE97+RQ7qDnnpSUHtpjZojYrdd1Ktl
	 Dg6yFpCtPAyFFai7uXXb/3pJFj7yfKayA2jxxYxjOd6LHH5tWytrxMyo0xAEk6YrbZ
	 GVS6RawTiPZI5SkrGpqkhkRi1H71kqJcAi5pAPmWPZWXnPCdnC4Z0X9akca3BqnG0x
	 tXLfyWQercT7Q==
Message-ID: <b4f725b1-3ed6-51fd-4973-92e28987f488@kernel.org>
Date: Wed, 14 Dec 2022 11:42:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] phy: ti: j721e-wiz: Manage TypeC lane swap if
 typec-gpio-dir not specified
Content-Language: en-US
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>,
 Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20221213124854.3779-1-sinthu.raja@ti.com>
 <20221213124854.3779-2-sinthu.raja@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20221213124854.3779-2-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_014220_316316_7C280BAE 
X-CRM114-Status: GOOD (  32.83  )
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

Hi,

Some more comments below.

On 13/12/2022 14:48, Sinthu Raja wrote:
> It's possible that the Type-C plug orientation on the DIR line will be
> implemented through hardware design. In that situation, there won't be
> an external GPIO line available, but the driver still needs to address
> this since the DT won't use the typec-gpio-dir property.
> 
> Add code to handle LN10 Type-C swap if typec-gpio-dir property is not
> specified in DT.
> 
> Remove typec-gpio-dir check to use minimum debounce from Type-C spec if
> it is not provided in DT
> 
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 65 +++++++++++++++++++++-------------
>  1 file changed, 40 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 141b51af4427..b17eec632d49 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -375,6 +375,7 @@ struct wiz {
>  	struct gpio_desc	*gpio_typec_dir;
>  	int			typec_dir_delay;
>  	u32 lane_phy_type[WIZ_MAX_LANES];
> +	u32 lane_phy_reg[WIZ_MAX_LANES];

This name looks misleading. I'll discuss about it where you are setting it.

>  	struct clk		*input_clks[WIZ_MAX_INPUT_CLOCKS];
>  	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
>  	struct clk_onecell_data	clk_data;
> @@ -1231,14 +1232,28 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
>  	int ret;
>  
>  	/* if typec-dir gpio was specified, set LN10 SWAP bit based on that */
> -	if (id == 0 && wiz->gpio_typec_dir) {
> -		if (wiz->typec_dir_delay)
> -			msleep_interruptible(wiz->typec_dir_delay);
> -
> -		if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> -			regmap_field_write(wiz->typec_ln10_swap, 1);
> -		else
> -			regmap_field_write(wiz->typec_ln10_swap, 0);
> +	if (id == 0 && wiz->typec_dir_delay) {
> +		msleep_interruptible(wiz->typec_dir_delay);
> +
> +		if (wiz->gpio_typec_dir) {
> +			if (gpiod_get_value_cansleep(wiz->gpio_typec_dir))
> +				regmap_field_write(wiz->typec_ln10_swap, 1);
> +			else
> +				regmap_field_write(wiz->typec_ln10_swap, 0);
> +		} else {
> +			/* if no typec-dir gpio was specified, and USB lines
> +			 * are connected to Lane 0 then set LN10 SWAP bit to 1.
> +			 */

Why should lanes 1 and 0 be swapped if USB is connected to lane 0?

> +			u32 num_lanes = wiz->num_lanes;
> +			int i;
> +
> +			for (i = 0; i < num_lanes; i++) {
> +				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
> +						&& wiz->lane_phy_reg[i] == 0) {
> +					regmap_field_write(wiz->typec_ln10_swap, 1);
> +				}
> +			}

I really don't understand what you are doing here.
It definitely doesn't match your comment.
As an example. If num_lanes = 2 then wiz->lane_phy_reg[1] is being used without being
really initialized (see later). Just because of kzalloc, it would of course be 0.

> +		}
>  	}
>  
>  	if (id == 0) {
> @@ -1370,8 +1385,10 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
>  		dev_dbg(dev, "%s: Lanes %u-%u have phy-type %u\n", __func__,
>  			reg, reg + num_lanes - 1, phy_type);
>  
> -		for (i = reg; i < reg + num_lanes; i++)
> +		for (i = reg; i < reg + num_lanes; i++) {
> +			wiz->lane_phy_reg[i] = reg;

As per DT binding
      reg:
        description:
          The master lane number. This is the lowest numbered lane in the lane group.

So you are in fact storing the Master lane number of every Link (or lane group).
A link may have 1 or more lanes in it.

Also notice that if num_lanes has been 2 then wiz->lane_phy_reg[1] is not initialized.

>  			wiz->lane_phy_type[i] = phy_type;
> +		}
>  	}
>  
>  	return 0;
> @@ -1464,24 +1481,22 @@ static int wiz_probe(struct platform_device *pdev)
>  		goto err_addr_to_resource;
>  	}
>  
> -	if (wiz->gpio_typec_dir) {
> -		ret = of_property_read_u32(node, "typec-dir-debounce-ms",
> -					   &wiz->typec_dir_delay);
> -		if (ret && ret != -EINVAL) {
> -			dev_err(dev, "Invalid typec-dir-debounce property\n");
> -			goto err_addr_to_resource;
> -		}
> +	ret = of_property_read_u32(node, "typec-dir-debounce-ms",
> +				   &wiz->typec_dir_delay);
> +	if (ret && ret != -EINVAL) {
> +		dev_err(dev, "Invalid typec-dir-debounce property\n");
> +		goto err_addr_to_resource;
> +	}
>  
> -		/* use min. debounce from Type-C spec if not provided in DT  */
> -		if (ret == -EINVAL)
> -			wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
> +	/* use min. debounce from Type-C spec if not provided in DT  */
> +	if (ret == -EINVAL)
> +		wiz->typec_dir_delay = WIZ_TYPEC_DIR_DEBOUNCE_MIN;
>  
> -		if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
> -		    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
> -			ret = -EINVAL;
> -			dev_err(dev, "Invalid typec-dir-debounce property\n");
> -			goto err_addr_to_resource;
> -		}
> +	if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
> +	    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
> +		ret = -EINVAL;
> +		dev_err(dev, "Invalid typec-dir-debounce property\n");
> +		goto err_addr_to_resource;
>  	}
>  
>  	ret = wiz_get_lane_phy_types(dev, wiz);

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
