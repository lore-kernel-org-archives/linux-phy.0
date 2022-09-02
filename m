Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 017C6C001B5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+bNlTlnv9sikJfdkaje5pA1ex4v2M/43mhf5zelk+c=; b=aBOlE5jJeES9ZV
	QpOBwIpPIPaBcXnGXYL4LK7FXlYDzZFGoGr6LC0cq2EYy/3VTvPNUioiTY2JIbGgQxmGkWbAXtLJR
	Le8l/AFkH91dZqGDbxy0I9DE1pn4lMJ8UyKL0e2JMNR50nF24OAFtSx0cQW39sdBiDNi/0TflhkVF
	6s8+a75O60s4TnAxKsnfQGkIvZntKiOau8DlWHpnKINmX7t5If8brd3UxNa2AH3Y1K7SpnL0WOdx9
	skO7HaSUrN2HolPEJAMDXTpugAyI7wrBhGqC1aFGiwXKKgGj/3USiSnsVEYdnZs92T+YTu7HmYZXv
	0lnZelG58Sa4QIWBs9HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU8nN-006MDV-Ee; Fri, 02 Sep 2022 15:41:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU8nL-006M8u-1Z
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 15:41:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9CB7A61F9F;
	Fri,  2 Sep 2022 15:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D07CC433C1;
	Fri,  2 Sep 2022 15:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662133282;
	bh=RHF+iPV+9y6fkf2PRh6T5dtDaD/6HNSfKAwBnKjHmmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UqfgfnsfJeYifaGkyzSDENUkeCAaIcHMqXl2erI/+uIVeEL7OBW1+5V70HnCs5h6O
	 DNMv231L/329Gv33x2Apjj6sZiEl7/NuJOLb1yS6lPyfl82NZ9BdO9HvBvGp1vvqic
	 6ZSXjr/H7vshFdCOqjnqoOhkAbN96I7jLaayDVzYN6IEOpurP0FIH5J8SvFZJogDaO
	 N3TNiFnOLTpT5lJAlR6lFd32CME6+En/NP32Wh+QbAUHCvNm59Xg3BD8EKYz8bzsPH
	 xs70TBwudemDQtv9H3mc0WtgHr2YrNBOAN5OrXTDO/9hLI6F/MN+hYlBG8ZgAy1Kep
	 pbERPBkB4SJxg==
Date: Fri, 2 Sep 2022 21:11:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liang He <windhl@126.com>
Cc: kishon@ti.com, narmstrong@baylibre.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold
 reference returned by of_get_parent()
Message-ID: <YxIkGocG/WuwtI7d@matsya>
References: <20220705021526.281441-1-windhl@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220705021526.281441-1-windhl@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_084123_154613_B3819E64 
X-CRM114-Status: GOOD (  19.75  )
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

On 05-07-22, 10:15, Liang He wrote:
> We should hold the reference returned by of_get_parent() and use it
> to call of_node_put() for reference balance.

And why should we hold and drop reference?

> 
> Fixes: 8eff8b4e22d9 ("phy: amlogic: phy-meson-axg-mipi-pcie-analog: add support for MIPI DSI analog")
> Signed-off-by: Liang He <windhl@126.com>
> ---
>  drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
> index 1027ece6ca12..a3e1108b736d 100644
> --- a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
> +++ b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
> @@ -197,7 +197,7 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
>  	struct phy_provider *phy;
>  	struct device *dev = &pdev->dev;
>  	struct phy_axg_mipi_pcie_analog_priv *priv;
> -	struct device_node *np = dev->of_node;
> +	struct device_node *np = dev->of_node, *parent_np;
>  	struct regmap *map;
>  	int ret;
>  
> @@ -206,7 +206,9 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	/* Get the hhi system controller node */
> -	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
> +	parent_np = of_get_parent(dev->of_node);
> +	map = syscon_node_to_regmap(parent_np);
> +	of_node_put(parent_np);
>  	if (IS_ERR(map)) {
>  		dev_err(dev,
>  			"failed to get HHI regmap\n");
> -- 
> 2.25.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
