Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0034CC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 14 Dec 2022 09:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t08b47VmAKHvhf5ASMY8P0My7zfnBC3Czq1dkvORj8E=; b=xmXPnOPQfKQPE2
	0FuuNGGJ4p/b+p17gMLSa/R1ZvmSmw4bDP14BEwInzhra0+lcQ6r0pJ+tgOXmj8lxXZUCzKdxKQrg
	ll/bTHPEQJ888WpVm+3HgOge49JX95C55bgMd1al7zaIXDgPYK2MjNb1+RIPjMeWAqRTRcJmUPqsk
	Hx/kAzkrz3f8Cg0hXIjnCWC1aNGrKLB96NCV2Ty3gmbNWhsEXoEXAZvybLTUBYEzY6oVUDHjLxs07
	Vp00fn+Mh0cfpWNCXf5g2GwdlwNwag/28z05gKNcJEbuBcahFm59MvzPQaezC7su2R8VCMXYlqQAn
	CiJdU5nmHU7DeJPXVtPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Nth-00F2DH-Di; Wed, 14 Dec 2022 09:17:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Ntf-00F2AD-4g
	for linux-phy@lists.infradead.org; Wed, 14 Dec 2022 09:17:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7E1B761812;
	Wed, 14 Dec 2022 09:17:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D799C433D2;
	Wed, 14 Dec 2022 09:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671009469;
	bh=LhfxboEowfTBAIAnIsZQ33ABn//iM5+t2VumPb1Kwzs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sGE11KMznVEngn0T0Y4SA29AZSuAx2qm08w/V7uwRA8HUaft6kOQ/Kuh8TLXwIe5T
	 VyI3Kv2OZO0qG/hyTcxT18h1iBrMCIf8lwOjgKFy7AGFGnbTcv+CDkSXb2/bEjEAto
	 HQUrzdlDy4TPZLrs9zRWE4JCPGtmCEl3Ez/sOE6fZpKeySQ5zWbkcPUvWYy+Z3dpnM
	 ozVNWAgSbW6cr9APL5zRsDG9Ocw0HdEYDsUj4u5+AN+bJ6f2EXlRdhn2wvZVmqze8e
	 A6ngVOMzMID0Cr+xu9pxCxeofes2IUKksrUzKUtw/NxBjz0ezA2avLF3SUGUBbm13I
	 0quiyfifGgwZA==
Message-ID: <47c159b6-a1d3-dd7f-265e-6acbfc06ead0@kernel.org>
Date: Wed, 14 Dec 2022 11:17:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] phy: ti: j721e-wiz: Add support to enable LN23 Type-C
 swap
Content-Language: en-US
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>,
 Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20221213124854.3779-1-sinthu.raja@ti.com>
 <20221213124854.3779-3-sinthu.raja@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20221213124854.3779-3-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_011751_293032_B852E0ED 
X-CRM114-Status: GOOD (  24.78  )
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



On 13/12/2022 14:48, Sinthu Raja wrote:
> Serdes wiz supports both LN23 and LN10 Type-C swap. Add support to

SerDes?

what is wiz?

It has nothing to do with Type-C. It is just a lane swap.
There may or may not be a Type-C port.

> configure LN23 bit to swap between lane2 or lane3 if required.

What do you mean by "swap between lane2 or lane3"?

Do you mean "swap lanes 2 and 3"?

Is LN23 bit supported on all variants?

> 
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> ---
>  drivers/phy/ti/phy-j721e-wiz.c | 33 +++++++++++++++++++++++++++++----
>  1 file changed, 29 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index b17eec632d49..0091892af0b0 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -58,6 +58,11 @@ enum wiz_lane_standard_mode {
>  	LANE_MODE_GEN4,
>  };
>  
> +enum wiz_lane_typec_swap_mode {
> +	LANE10_SWAP = 0,
> +	LANE23_SWAP = 2,
> +};

What is this? Is it a register setting?

> +
>  enum wiz_refclk_mux_sel {
>  	PLL0_REFCLK,
>  	PLL1_REFCLK,
> @@ -194,6 +199,9 @@ static const struct reg_field p_mac_div_sel1[WIZ_MAX_LANES] = {
>  static const struct reg_field typec_ln10_swap =
>  					REG_FIELD(WIZ_SERDES_TYPEC, 30, 30);
>  
> +static const struct reg_field typec_ln23_swap =
> +					REG_FIELD(WIZ_SERDES_TYPEC, 31, 31);
> +
>  struct wiz_clk_mux {
>  	struct clk_hw		hw;
>  	struct regmap_field	*field;
> @@ -366,6 +374,7 @@ struct wiz {
>  	struct regmap_field	*mux_sel_field[WIZ_MUX_NUM_CLOCKS];
>  	struct regmap_field	*div_sel_field[WIZ_DIV_NUM_CLOCKS_16G];
>  	struct regmap_field	*typec_ln10_swap;
> +	struct regmap_field	*typec_ln23_swap;
>  	struct regmap_field	*sup_legacy_clk_override;
>  
>  	struct device		*dev;
> @@ -675,6 +684,13 @@ static int wiz_regfield_init(struct wiz *wiz)
>  		return PTR_ERR(wiz->typec_ln10_swap);
>  	}
>  
> +	wiz->typec_ln23_swap = devm_regmap_field_alloc(dev, regmap,
> +						       typec_ln23_swap);
> +	if (IS_ERR(wiz->typec_ln23_swap)) {
> +		dev_err(dev, "LN23_SWAP reg field init failed\n");
> +		return PTR_ERR(wiz->typec_ln23_swap);
> +	}
> +
>  	wiz->phy_en_refclk = devm_regmap_field_alloc(dev, regmap, phy_en_refclk);
>  	if (IS_ERR(wiz->phy_en_refclk)) {
>  		dev_err(dev, "PHY_EN_REFCLK reg field init failed\n");
> @@ -1242,15 +1258,24 @@ static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
>  				regmap_field_write(wiz->typec_ln10_swap, 0);
>  		} else {
>  			/* if no typec-dir gpio was specified, and USB lines
> -			 * are connected to Lane 0 then set LN10 SWAP bit to 1.
> +			 * are connected to SWAP lanes '0' or '2' then set LN10 SWAP
> +			 * or LN23 bit to 1 respectively.
>  			 */
>  			u32 num_lanes = wiz->num_lanes;
>  			int i;
>  
>  			for (i = 0; i < num_lanes; i++) {
> -				if ((wiz->lane_phy_type[i] == PHY_TYPE_USB3) \
> -						&& wiz->lane_phy_reg[i] == 0) {
> -					regmap_field_write(wiz->typec_ln10_swap, 1);
> +				if (wiz->lane_phy_type[i] == PHY_TYPE_USB3) {
> +					switch (wiz->lane_phy_reg[i]) {
> +					case LANE10_SWAP:
> +						regmap_field_write(wiz->typec_ln10_swap, 1);
> +						break;
> +					case LANE23_SWAP:
> +						regmap_field_write(wiz->typec_ln23_swap, 1);
> +						break;
> +					default:
> +						break;
> +					}

Could you please explain what is going on here?
What is the basis for deciding if LN10 or LN23 bit must be set or not?

What about clearing those bits?

>  				}
>  			}
>  		}

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
