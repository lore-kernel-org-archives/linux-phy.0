Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBD7C001B2
	for <linux-phy@archiver.kernel.org>; Wed, 14 Dec 2022 09:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGgSo8s2rNkS3+Jk6x0hQyjvD8QDa5JpDrZew7h/MKs=; b=ijCoX/V0u6XWPS
	vZVk84MVbJzfoKB0FyqtwOl3/J3caCtU2nrQL0zTRFV9icIPO7K65jBg749Fy3/ZrH6kYGF7vzXzj
	uet5csGKBmqRBg5XhOAdWB87a5dWUTQ4xaqhgvqrfH2KZk4c0p1J2qnrPkjwYyCGxq6XIbUUdcn+7
	HljMw/E6IHyEsQ2QrlGZPydprOO3rHD12RyMMUZaPr43IcLVmK5pohUriq8Df4kuSEBarCvv5Bpck
	6TMYGPq8Zy+qR1h0+221GLhjA5I1hbQgzX/C7oPfiXt6cAKdMJygGV8E3jH0V7hjBgiKoKfctgC3M
	RdYUbZbkCQYXoXDQBrRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5NdC-00EsiW-JF; Wed, 14 Dec 2022 09:00:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Nd9-00Esbv-BU
	for linux-phy@lists.infradead.org; Wed, 14 Dec 2022 09:00:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B03D26186E;
	Wed, 14 Dec 2022 09:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AB93C433D2;
	Wed, 14 Dec 2022 09:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671008444;
	bh=OUrIeBrSPIOjDM5mNSWxlgtbSOIPYTSg6sFJ0j7pkrE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bkU7NPkSngjxvsPtosTu1P/HAKMg9xmLihYrDwsKkNZLlifhpXuAMwGGG5lTTPQFN
	 CIemETBTjYcW2LJcb2G/9VK996Q5fMYYfcKFGxrrat3MLdm5NCGw5Iw5S5wCVr1rML
	 kM6R71HVjf8mnzj5JeU4wUWcdkEjkSLso7qh/x3hh5Ek0POhl1K7o2MqFvE6i784/f
	 4o4PFX6UktkRziSrhQR0y9dPEmdorz1VFoB5ANm1Ch8uFyO5Ad1EPSQesHYVEB5mH0
	 F7FwK6XYmXalK84oele2Ghc/nQ1B+jIBDNIYqZDbkF0GZ9KCsuc6n2FDOaxAP73PRR
	 2jvqEUFD1kLkw==
Message-ID: <efb41211-e0aa-96f2-5099-677ca6b6d99b@kernel.org>
Date: Wed, 14 Dec 2022 11:00:39 +0200
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
X-CRM114-CacheID: sfid-20221214_010047_505444_6C980383 
X-CRM114-Status: GOOD (  30.94  )
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

Hi Sinthu,

On 13/12/2022 14:48, Sinthu Raja wrote:
> It's possible that the Type-C plug orientation on the DIR line will be
> implemented through hardware design. In that situation, there won't be
> an external GPIO line available, but the driver still needs to address
> this since the DT won't use the typec-gpio-dir property.

The property is actually "typec-dir-gpios"

> 
> Add code to handle LN10 Type-C swap if typec-gpio-dir property is not
> specified in DT.
> 
> Remove typec-gpio-dir check to use minimum debounce from Type-C spec if
> it is not provided in DT

Why?

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

Why do you need to have this debounce delay if there was no GPIO to begin with.
You need to move the msleep call within the next if {} block.

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
> +			u32 num_lanes = wiz->num_lanes;
> +			int i;
> +
> +			for (i = 0; i < num_lanes; i++) {typec-dir-gpios:
> +				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
> +						&& wiz->lane_phy_reg[i] == 0) {
> +					regmap_field_write(wiz->typec_ln10_swap, 1);
> +				}
> +			}
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

Why do you need to know this debounce value if you don't have a valid GPIO line?

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

All these changes are unnecessary.

>  
>  	ret = wiz_get_lane_phy_types(dev, wiz);

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
