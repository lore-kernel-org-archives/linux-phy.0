Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A306C79F8C
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 07:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDH21vLjw1AyfcN9aaTlO168nSk3lNGuHdcmq+zruuU=; b=Y0BuGZmMbzLrfi
	6lC1dlMOIn/aEmNWpDmwpH49xsNIp9s0KnAi7CgkTSa/NN9LJ02FjbAqQHGIXLgvpLy/TRJQ8vLdO
	TCtrh7nxkXQVzdUw+uY7ui64z24MbYx70dOZEETDDEz1hYzXwEojPXe0yoZWNxGYErZZHk0mUf44W
	yzEPxPytux0uemVth2LURPKBoUn1xu3EbDytovs8Kn+9TEuL2qbFYosk5SrgTl+FMkO6XxX+tZCFS
	CD+ybaS778ZAyknd72G9et/yNCIW+Bd+PoP8nARYyX9IrPOpc2FZ0Qdv87B/O6sZd32UmLbpnhGEY
	O2oIN0n5LQPl1b7cIJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Csb-0000000B0Ns-49Qz;
	Wed, 09 Sep 2026 07:38:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Csb-0000000B0Ng-2Okj
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 07:38:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 956B040B47;
	Wed,  9 Sep 2026 07:37:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BFAF1F00A3A;
	Wed,  9 Sep 2026 07:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788939479;
	bh=4aZRlqqvMLjbIPmvvpAAGUHdgZsBWGGPHyB8VH0SxNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MGjCBk0ZAiXKm3dIguUZf+BjztEXIXL1+2asaeZkTFN0mlW/CJSsIMiZC6ghR+WKe
	 wGhK1P0Uz66JOoD1IrlLiqEYrS53oeisofGpS3BLPKFnZFCL1eyKlH9QBz6WMb00Fs
	 UUDGM5VaHjEPZqHZkZnI97zGeGRYy9T0mTzigUoW2mWqgUIB5s1lE8LS/y+YfoaTW+
	 MC68mmHFYmnMh7WOaKXV1ERC1fCKAicJlKm3Y9jmdYBvKZVDe9KPs2yjHVq4UrjKvI
	 lRu3qdOGv6YD1xFFVVC8YmW3g0RF0guV52ZxgMyU2VneFpdNZPUROjGuQ8q9RA8ewG
	 BPjtLAd+zoo/g==
Date: Wed, 9 Sep 2026 09:37:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org, rogerq@ti.com, 
	Julian.FRIEDRICH@frequentis.com, upstream+omap@sigma-star.at
Subject: Re: [PATCH v3 2/2] phy: ti: ti-pipe3: allow configuring ACSPCIe
 TX/RX mode
Message-ID: <20260909-hot-snobbish-cobra-0f97c5@quoll>
References: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
 <20260905211555.15944-3-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905211555.15944-3-david.oberhollenzer@sigma-star.at>
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

On Sat, Sep 05, 2026 at 11:15:55PM +0200, David Oberhollenzer wrote:
> For the PCIe PHYs, read the property from the device tree and
> update the RX/TX mode selection bits in the specified syscon
> register.
> 
> Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ---
>  drivers/phy/ti/phy-ti-pipe3.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
> index b5543b5c674c..bc02010dadb7 100644
> --- a/drivers/phy/ti/phy-ti-pipe3.c
> +++ b/drivers/phy/ti/phy-ti-pipe3.c
> @@ -115,6 +115,9 @@
>  #define MEM_CDR_LOS_SOURCE_MASK		GENMASK(10, 9)
>  #define MEM_CDR_LOS_SOURCE_SHIFT	9
>  
> +#define PCIE_TX_RX_CTRL_MASK		GENMASK(17, 16)
> +#define PCIE_TX_RX_CTRL_SHIFT		16
> +
>  /*
>   * This is an Empirical value that works, need to confirm the actual
>   * value required for the PIPE3PHY_PLL_CONFIGURATION2.PLL_IDLE status
> @@ -785,6 +788,24 @@ static int ti_pipe3_get_pll_base(struct ti_pipe3 *phy)
>  	return PTR_ERR_OR_ZERO(phy->pll_ctrl_base);
>  }
>  
> +static int ti_pipe3_acspcie_tx_rx_mode(struct ti_pipe3 *phy)
> +{
> +	struct device_node *np = phy->dev->of_node;
> +	struct regmap *regmap;
> +	unsigned int args[2];
> +
> +	regmap = syscon_regmap_lookup_by_phandle_args(np,
> +						      "ti,syscon-acspcie-tx-rx",
> +						      2, args);
> +	if (IS_ERR(regmap)) {
> +		dev_warn(phy->dev, "can't get ti,syscon-acspcie-tx-rx\n");
> +		return -EINVAL;
> +	}
> +
> +	return regmap_update_bits(regmap, args[0], PCIE_TX_RX_CTRL_MASK,
> +				  args[1] << PCIE_TX_RX_CTRL_SHIFT);
> +}
> +
>  static int ti_pipe3_probe(struct platform_device *pdev)
>  {
>  	struct ti_pipe3 *phy;
> @@ -807,6 +828,12 @@ static int ti_pipe3_probe(struct platform_device *pdev)
>  	phy->dpll_map = data->dpll_map;
>  	phy->settings = data->settings;
>  
> +	if (phy->mode == PIPE3_MODE_PCIE) {
> +		ret = ti_pipe3_acspcie_tx_rx_mode(phy);
> +		if (ret)
> +			dev_warn(dev, "failed to set ACSPCIe TX/RX mode\n");

This looks like new warning for existing ABI without any explanation why
is this a warning. Was it working? If yes, why existing boards should
warn now?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
