Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EACDC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 08:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF/AACLsjfI2EzIYnSvEWD4LCnNeruOHQZSv+wOFUyw=; b=Ii3hvJerqowNjD
	Kgjb/DESKYZNZ/5fX+bF3PsNOciav9a21/39rWpn2u0bE4jWxE3UL6/gsk/dfNg3h/OkQbPPOXSC4
	BNvydLY+hqDEliMyeLgqV8bB7BMHff14NoWEazpDqhIJ48RZ4jFA9EASIeyOx11CZK3H3IGmEeIz2
	+HYTtUhKB2fo1af7A4c5AVtAyB4fNy32CKigBdF9sVSAzgkN/EVJ5cJ2KoPAYMWjHKtrts2BwcvVd
	gOurPuMLwmisqwTbgjDypwADdI/6b8XtlLOgebXHFmMMon7KlgBBuGNgfjBzgOOb5YWMqJEa88raG
	o1Lkl1Rdma1PQZFfjOpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxl9R-00FXwD-GH; Wed, 23 Nov 2022 08:30:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxl8U-00FXSK-Ti; Wed, 23 Nov 2022 08:29:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E63FFB81EE7;
	Wed, 23 Nov 2022 08:29:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9308FC433C1;
	Wed, 23 Nov 2022 08:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669192175;
	bh=1BVaOqfXuj4I5Ypqc1c1M244A6McDU05cdjjlMqBUnI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cW7PM2K93a9HEr+v4oAeFnlAfmVPagtNm6qktvIdE06dttAHAnQne6QYgOoLr3rPA
	 ATMhio0lrgehcp7s9mB39e3CXvn1FRBVyKW121KgZTPIfFpVPHmpeifmtR6WAYDSJU
	 TPZMN9nPinclJjp49wCAw1a5ozBX7D+yB8kHn8vUTno9IhyRiBWSNyHmaCr4zrBL/4
	 fRJvExMsOh8XjttnNvD7MP7Y8OGnFGmBG5Zsp5K/i541brLXtsSnw6kVmHbwKLDgQP
	 YKEg4Miq59pu83ay9vMF71m5YMj/3JdSTDxMGWz9Qh96S86cyfqeDRWt+A5+9HzN5O
	 nj4N23KLjT9kw==
Message-ID: <d26d3a65-ce71-7b4c-27d3-45f5ccf50e02@kernel.org>
Date: Wed, 23 Nov 2022 10:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: ti: phy-j721e-wiz: add j721s2-wiz-10g module
 support
To: Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20221123032413.1193961-1-mranostay@ti.com>
 <20221123032413.1193961-3-mranostay@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20221123032413.1193961-3-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_002939_310455_B871F36C 
X-CRM114-Status: GOOD (  18.49  )
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



On 23/11/2022 05:24, Matt Ranostay wrote:
> Add support for j721s2-wiz-10g device which is similar to j721e-wiz-10g but
> uses clock-names interface versus explicitly defining clock nodes within
> device tree node.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---

Reviewed-by: Roger Quadros <rogerq@kernel.org>

>  drivers/phy/ti/phy-j721e-wiz.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index 141b51af4427..ddce5ef7711c 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -322,6 +322,7 @@ enum wiz_type {
>  	AM64_WIZ_10G,
>  	J7200_WIZ_10G,  /* J7200 SR2.0 */
>  	J784S4_WIZ_10G,
> +	J721S2_WIZ_10G,
>  };
>  
>  struct wiz_data {
> @@ -1000,6 +1001,7 @@ static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
>  	case AM64_WIZ_10G:
>  	case J7200_WIZ_10G:
>  	case J784S4_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		of_clk_del_provider(dev->of_node);
>  		return;
>  	default:
> @@ -1132,6 +1134,7 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
>  	case AM64_WIZ_10G:
>  	case J7200_WIZ_10G:
>  	case J784S4_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		ret = wiz_clock_register(wiz);
>  		if (ret)
>  			dev_err(dev, "Failed to register wiz clocks\n");
> @@ -1214,6 +1217,7 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
>  		break;
>  	case J721E_WIZ_10G:
>  	case J7200_WIZ_10G:
> +	case J721S2_WIZ_10G:
>  		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
>  			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
>  		break;
> @@ -1318,6 +1322,15 @@ static struct wiz_data j784s4_10g_data = {
>  	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
>  };
>  
> +static struct wiz_data j721s2_10g_data = {
> +	.type = J721S2_WIZ_10G,
> +	.pll0_refclk_mux_sel = &pll0_refclk_mux_sel,
> +	.pll1_refclk_mux_sel = &pll1_refclk_mux_sel,
> +	.refclk_dig_sel = &refclk_dig_sel_10g,
> +	.clk_mux_sel = clk_mux_sel_10g,
> +	.clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G,
> +};
> +
>  static const struct of_device_id wiz_id_table[] = {
>  	{
>  		.compatible = "ti,j721e-wiz-16g", .data = &j721e_16g_data,
> @@ -1334,6 +1347,9 @@ static const struct of_device_id wiz_id_table[] = {
>  	{
>  		.compatible = "ti,j784s4-wiz-10g", .data = &j784s4_10g_data,
>  	},
> +	{
> +		.compatible = "ti,j721s2-wiz-10g", .data = &j721s2_10g_data,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, wiz_id_table);

--
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
