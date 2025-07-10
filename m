Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3410C83F18
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 08:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMfYOSAAc32ytQhcoKJKkaEvZf/hbt2BijDi3AjvskE=; b=lYrCfAgIC3HzBU
	rezSSO/1WhDOhbFTOqy+/BDvNlTXhpoMy2RzoO1eL4j8hjvpZSPC7HQzaGU41iRHjM9Qht1dg8eLT
	LPlk3EqzFA/rTxviJwZJGrLQruT9SKohqdHnGnzt6aZ0uEgLWKy+KXrHv4Rvno4XDuY/1qTYFHdwv
	7ZjEYzO1cKj2jDNriW7MKWxNJiHBCbQxSo509FmhwBlARLVnbjNSjxaasENtJA6xHiXK1RXZKliiQ
	/vQCPsPmw2c75xu/IdLc4Gw6ae3Bvc+sFajAJ68WDJv9d62R2FBW53Er1iil8rwbzi/iJc8dWeRxu
	En2S/pfUN1saj+kroA+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZmSm-0000000B8w5-1Ies;
	Thu, 10 Jul 2025 08:17:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZlfS-0000000B09R-3GQQ
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 07:26:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D81756146A;
	Thu, 10 Jul 2025 07:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05D63C4CEE3;
	Thu, 10 Jul 2025 07:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752132365;
	bh=S8zzqP7m8nDKjbkX5GeKEnyhQD//kGc7olrVD3SohzA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rB+FnS+NgGqBg7cfEhioIsVnv9NflbSh5+zGFkD7Q5AgHl9IJEWfX3+5wZQxvziiw
	 wNxrOF5iE7oWRaZgbznYwWp7XMTAF6kH5htQsgEaN07x4jmt6PVhn6/duqO7Z2VDgq
	 zMSKeMEWs7ZaumQHdsoDFlSFUuUcm7UCrI35ch8VQud98CT1DE7r1ecTnh5NPO+EgE
	 6hyLP4kEPWPb51HRxlZtEZQgFce2WzGPYVar3OHUfA0gwQm/FJGrW0aubh2SwJ0H1O
	 zy8tYOCpQNxpA4blXYUjXYxPc7lavF507PopQIhvqN+AGW3ofXYmSAbW5aV+rUgan0
	 gfV8l3glDHnaA==
Date: Thu, 10 Jul 2025 09:26:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Karthik Poduval <kpoduval@lab126.com>
Cc: jyxiong@amazon.com, miguel.lopes@synopsys.com, anishkmr@amazon.com, 
	vkoul@kernel.org, kishon@kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: dw-dphy-rx: Add Synopsys DesignWare D-PHY RX
Message-ID: <20250710-sly-rigorous-silkworm-6d67ea@krzk-bin>
References: <cover.1752106239.git.kpoduval@lab126.com>
 <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2383f8cf2a8f5e1b914d4cf9bd11674ed55876d2.1752106239.git.kpoduval@lab126.com>
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

On Wed, Jul 09, 2025 at 07:42:20PM -0700, Karthik Poduval wrote:
> +static const struct regmap_config dw_dphy_regmap_cfg1 = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.name = "dw-dhpy-cfg1",
> +	.fast_io = true,
> +};
> +
> +/**
> + * dw_dphy_regmap_cfg2 - Register map configuration for DW DPHY
> + * @reg_bits: Width of register address in bits (32)
> + * @val_bits: Width of register value in bits (32)
> + * @reg_stride: Number of bytes between registers (4)
> + * @name: Name identifier for this register map
> + * @fast_io: Flag to indicate fast I/O operations are supported
> + *
> + **/

Drop

> +static const struct regmap_config dw_dphy_regmap_cfg2 = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.name = "dw-dhpy-cfg2",
> +	.fast_io = true,
> +};
> +
> +/**
> + * dw_dphy_probe - Probe and initialize DW DPHY device
> + * @pdev: Platform device pointer
> + * Return: 0 on success, negative error code on failure
> + *
> + **/

Drop

> +static int dw_dphy_probe(struct platform_device *pdev)
> +{
> +	struct dw_dphy *dphy;
> +	struct resource *res;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *phy_provider;
> +	int ret;
> +
> +	dphy = devm_kzalloc(&pdev->dev, sizeof(*dphy), GFP_KERNEL);
> +	if (!dphy)
> +		return -ENOMEM;
> +
> +	dphy->dt_data =
> +		(struct dt_data_dw_dphy *)of_device_get_match_data(&pdev->dev);
> +	dev_set_drvdata(&pdev->dev, dphy);
> +	dphy->dev = &pdev->dev;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	dphy->iomem_cfg1 = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(dphy->iomem_cfg1))
> +		return PTR_ERR(dphy->iomem_cfg1);
> +
> +	dphy->regmap_cfg1 =
> +		devm_regmap_init_mmio(dev, dphy->iomem_cfg1, &dw_dphy_regmap_cfg1);
> +	if (IS_ERR(dphy->regmap_cfg1))
> +		return PTR_ERR(dphy->regmap_cfg1);
> +
> +	ret = devm_regmap_field_bulk_alloc(dev, dphy->regmap_cfg1, dphy->rf_cfg1,
> +					   dw_dphy_v1_2_cfg1, DW_DPHY_RF_CFG1_MAX);
> +	if (ret < 0) {
> +		dev_err(dev, "Could not alloc RF\n");
> +		return ret;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +	dphy->iomem_cfg2 = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(dphy->iomem_cfg2))
> +		return PTR_ERR(dphy->iomem_cfg2);
> +
> +	dphy->regmap_cfg2 = devm_regmap_init_mmio(dev, dphy->iomem_cfg2,
> +						 &dw_dphy_regmap_cfg2);
> +	if (IS_ERR(dphy->regmap_cfg2))
> +		return PTR_ERR(dphy->regmap_cfg2);
> +
> +	ret = devm_regmap_field_bulk_alloc(dev, dphy->regmap_cfg2, dphy->rf_cfg2,
> +					   dw_dphy_v1_2_cfg2, DW_DPHY_RF_CFG2_MAX);
> +	if (ret < 0) {
> +		dev_err(dev, "Could not alloc RF\n");
> +		return ret;
> +	}
> +
> +	dphy->phy = devm_phy_create(&pdev->dev, NULL, dphy->dt_data->phy_ops);
> +	if (IS_ERR(dphy->phy)) {
> +		dev_err(dev, "failed to create PHY\n");
> +		return PTR_ERR(dphy->phy);
> +	}
> +
> +	phy_set_drvdata(dphy->phy, dphy);
> +	phy_provider =
> +		devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
> +
> +	return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +/**
> + * dw_dphy_of_match - Device tree match table for DW DPHY
> + * @compatible: Compatible string to match device tree node
> + * @data: Pointer to configuration data for matched device
> + *
> + * Table of compatible strings and associated configuration data
> + * for supported DW DPHY variants.
> + * Currently supports:
> + * - DW DPHY v1.2 ("snps,dw-dphy-1p2")
> + *
> + **/

Drop

> +static const struct of_device_id dw_dphy_of_match[] = {
> +	{ .compatible = "snps,dw-dphy-1p2", .data = &dw_dphy_1p2 },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, dw_dphy_of_match);
> +
> +/**
> + * dw_dphy_platform_driver - Platform driver structure for DW DPHY
> + * @probe: Pointer to probe function called on device discovery
> + * @driver: Core driver structure containing:
> + *         - name: Driver name used for matching and debugging
> + *         - of_match_table: Table of compatible device tree matches
> + *
> + **/

Drop all such useless generic kerneldocs. Not helpful. Keep useful ones,
so ones not saying obvious parts of core


> +static struct platform_driver dw_dphy_platform_driver = {
> +	.probe		= dw_dphy_probe,

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
