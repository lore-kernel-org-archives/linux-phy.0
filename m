Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A76CF6497
	for <linux-phy@archiver.kernel.org>; Sun, 29 Sep 2024 19:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCb7x5rPyIkprlPENahoRPZQ/w+/R3F7XjqkuWRH9IY=; b=wGQbwjl9Q3gCYg
	Op1s5M2BkuyWCtbapr50sOb1FDRc5v2WEgqeSRu3CPvSOf7V/vLMXw8qp6jFrhjZfnWf4cHqP+Yjn
	+7I4ODTnMrxxttAF3mGsdJci961hypgs0zyQvgEXKAICCnnMLga9O/VjFQ4lPAaXd9piMYbJ17PNQ
	JtF32Xunqb6Hya2h6GLRv0E7iSzzI0XRYZ0Lh9Lgp93/2ca1uTn1LQrnvlWj6nzwOvJ7g2WUaUZn/
	FfJam2d6qb7VaBKbHtFqQZEY1b+7Gff0VXjG0aDil0DP+aZHgBZCqPoM2ca7xATQHX/oqB1Ie6fjC
	Vxs7+2QpzfwerS9d3NOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suzlT-0000000FFpD-3Dj5;
	Sun, 29 Sep 2024 19:39:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suzkH-0000000FFi9-2nkl;
	Sun, 29 Sep 2024 19:38:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 09DBAA401FE;
	Sun, 29 Sep 2024 19:38:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36016C4CEC5;
	Sun, 29 Sep 2024 19:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727638696;
	bh=Gwtszj5Nk759k9PZ2OEt04obFCWbH2CndmW7h6sywWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PM4nIeh4tSMrUdjBaRa7EO+aHT+o5nET9fptg9WxWpnBXKGRR0sEsFvrEb+xV2+QL
	 uAstDXDO0IiOQ+gI3wseh2m4WVVK57KlDukySnGh+Y7xHpQg0Qrbzi6cFAClLYbC0W
	 w5KeO/iq4Xtuhob2563mQGoLdZ9atNrF+Gtv0oFC1fuacGWLLTOllrDZ9Ja/jTiHVp
	 eCZWxZdqKe4cicY0frmV+YIG+LQA7YJ4a06isnbPeSDulMnwqIzP3f9s+w9qnnWiM5
	 9mzB5VxbBVKxhkJrD6tDsqksk0JEkJOhUpqNrR+yyAE8RJ8B12T6eDCsLVcjFcU9WR
	 mvAEsS8FuQZXQ==
Date: Sun, 29 Sep 2024 21:38:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
	tim.chen@rock-chips.com, frank.wang@rock-chips.com
Subject: Re: [PATCH v4 1/3] phy: rockchip: inno-usb2: convert clock
 management to bulk
Message-ID: <jx55slsincpzq6mugfsyc6qpbku2555azj7lithwggo733ggnb@rkqsxpsyoaw7>
References: <20240929061025.3704-1-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240929061025.3704-1-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_123817_865332_2609B011 
X-CRM114-Status: GOOD (  27.25  )
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

On Sun, Sep 29, 2024 at 02:10:23PM +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Since some Rockchip SoCs (e.g RK3576) have more than one clock,
> this converts the clock management from single to bulk method to
> make the driver more flexible.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v4:
>  - a new patch split from the [PATCH v3 2/2], suggestions from Heiko.
> 
> v1-v3:
>  - none
> 
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 43 ++++++++++++++++---
>  1 file changed, 36 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 4f71373ae6e1..ad3e65dc6aa4 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -229,9 +229,10 @@ struct rockchip_usb2phy_port {
>   * @dev: pointer to device.
>   * @grf: General Register Files regmap.
>   * @usbgrf: USB General Register Files regmap.
> - * @clk: clock struct of phy input clk.
> + * @clks: array of phy input clocks.
>   * @clk480m: clock struct of phy output clk.
>   * @clk480m_hw: clock struct of phy output clk management.
> + * @num_clks: number of phy input clocks.
>   * @phy_reset: phy reset control.
>   * @chg_state: states involved in USB charger detection.
>   * @chg_type: USB charger types.
> @@ -246,9 +247,10 @@ struct rockchip_usb2phy {
>  	struct device	*dev;
>  	struct regmap	*grf;
>  	struct regmap	*usbgrf;
> -	struct clk	*clk;
> +	struct clk_bulk_data	*clks;
>  	struct clk	*clk480m;
>  	struct clk_hw	clk480m_hw;
> +	int			num_clks;
>  	struct reset_control	*phy_reset;
>  	enum usb_chg_state	chg_state;
>  	enum power_supply_type	chg_type;
> @@ -310,6 +312,13 @@ static int rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
>  	return 0;
>  }
>  
> +static void rockchip_usb2phy_clk_bulk_disable(void *data)
> +{
> +	struct rockchip_usb2phy *rphy = data;
> +
> +	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
> +}
> +
>  static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
>  {
>  	struct rockchip_usb2phy *rphy =
> @@ -376,7 +385,9 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>  {
>  	struct device_node *node = rphy->dev->of_node;
>  	struct clk_init_data init;
> +	struct clk *refclk = NULL;
>  	const char *clk_name;
> +	int i;
>  	int ret = 0;
>  
>  	init.flags = 0;
> @@ -386,8 +397,15 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>  	/* optional override of the clockname */
>  	of_property_read_string(node, "clock-output-names", &init.name);
>  
> -	if (rphy->clk) {
> -		clk_name = __clk_get_name(rphy->clk);
> +	for (i = 0; i < rphy->num_clks; i++) {
> +		if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
> +			refclk = rphy->clks[i].clk;
> +			break;
> +		}
> +	}
> +
> +	if (!IS_ERR(refclk)) {
> +		clk_name = __clk_get_name(refclk);
>  		init.parent_names = &clk_name;
>  		init.num_parents = 1;
>  	} else {
> @@ -1406,18 +1424,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(rphy->phy_reset))
>  		return PTR_ERR(rphy->phy_reset);
>  
> -	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
> -	if (IS_ERR(rphy->clk)) {
> -		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
> +	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
> +	if (ret == -EPROBE_DEFER) {

This does not make much sense. Why would you proceed on other critical
errors?

You want to use optional variant, I guess?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
