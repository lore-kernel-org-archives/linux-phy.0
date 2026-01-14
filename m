Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD37D29FF8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 12:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMJgou/IA51VuG1vHWqKw6u1c658AWvntoFX8HTCjD8=; b=w0UdR7AlzA91CQ
	aiEZqBGDVWKh1pC0QCWUJatsRDZsFpmq849dFi/inYexJyv671yT9qTYa6i+hbknuoNcquzwDQWee
	MVtH49wDEIjt2K+iizJhTIbKfL5KTuaGKbSmtKrYN15ascukD7CR86vyo4gI/TeufN3bAY3X0UpKs
	agu8th9FCRynnH8hbdR8ZQtqYg2dgJY7DJ8rhkgDR25iDtfCValpN+VW4803Y9mqrdrrZN215mavC
	MW06zj3XsyAmBKyy1CpHdRw9NTsigv5km7btngG69MPaplUKFRsGJmdaichwLxbIs4I8wtvRqKnTt
	fKWsd0EngNBcjQzTD8/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzig-0000000978w-16lP;
	Wed, 14 Jan 2026 12:11:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzic-0000000975h-07TY
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 12:11:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7919060123;
	Wed, 14 Jan 2026 12:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9C65C19422;
	Wed, 14 Jan 2026 12:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768392681;
	bh=szr9cClxg8KjSW370uSSiIfgX+yuSRkv5RG2F5zrt48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UDLstAPz0aWl509ySD6Ero3XSOvI986WvF1xA/FXEoQf7aicJM95CV8bl399bNFYM
	 0Ksph0Y7TKyKXCHN9lq11BBfGA/pIY847RPIsX+mdJCtYtHzgbbNcgx3YW5Ln+Nqir
	 RFUohK3DZz+PYD60i3qlHQKIZ62/2cHIcjy7ffVSvNZdaimRPvV+tAcxAY1FdKYTPt
	 tohtlmVJ20CoknmHPHBmpwh7BK0jTePsKRD6Fw8E+GhJgywWBnVwZAc1apH7cnGGhl
	 JND3qawYnrYlzb7Q+bdyW0NExvCm6rp75jBf2fSCphfomO6Jri2XkOM7UgypdK7aYM
	 ULLgJ1KaTFHMA==
Date: Wed, 14 Jan 2026 17:41:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com
Subject: Re: [PATCH v7 2/2] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
Message-ID: <aWeH5fn8nGOzjDpP@vaman>
References: <20260106062944.1529-1-luyulin@eswincomputing.com>
 <20260106063309.241-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106063309.241-1-luyulin@eswincomputing.com>
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

On 06-01-26, 14:33, Yulin Lu wrote:
> Created the eswin phy driver directory and added support for
> the SATA phy driver on the EIC7700 SoC platform.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>  drivers/phy/Kconfig                  |   1 +
>  drivers/phy/Makefile                 |   1 +
>  drivers/phy/eswin/Kconfig            |  14 ++
>  drivers/phy/eswin/Makefile           |   2 +
>  drivers/phy/eswin/phy-eic7700-sata.c | 221 +++++++++++++++++++++++++++
>  5 files changed, 239 insertions(+)
>  create mode 100644 drivers/phy/eswin/Kconfig
>  create mode 100644 drivers/phy/eswin/Makefile
>  create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0a..6d50704917f0 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -105,6 +105,7 @@ source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
>  source "drivers/phy/cadence/Kconfig"
> +source "drivers/phy/eswin/Kconfig"
>  source "drivers/phy/freescale/Kconfig"
>  source "drivers/phy/hisilicon/Kconfig"
>  source "drivers/phy/ingenic/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494..482a143d3417 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -17,6 +17,7 @@ obj-y					+= allwinner/	\
>  					   amlogic/	\
>  					   broadcom/	\
>  					   cadence/	\
> +					   eswin/	\
>  					   freescale/	\
>  					   hisilicon/	\
>  					   ingenic/	\
> diff --git a/drivers/phy/eswin/Kconfig b/drivers/phy/eswin/Kconfig
> new file mode 100644
> index 000000000000..37447cc3af63
> --- /dev/null
> +++ b/drivers/phy/eswin/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Phy drivers for ESWIN platforms
> +#
> +config PHY_EIC7700_SATA
> +	tristate "eic7700 Sata SerDes/PHY driver"
> +	depends on ARCH_ESWIN || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support SerDes/Phy found on ESWIN's
> +	  EIC7700 SoC.This Phy supports SATA 1.5 Gb/s,
> +	  SATA 3.0 Gb/s, SATA 6.0 Gb/s speeds.
> +	  It supports one SATA host port to accept one SATA device.
> diff --git a/drivers/phy/eswin/Makefile b/drivers/phy/eswin/Makefile
> new file mode 100644
> index 000000000000..db08c66be812
> --- /dev/null
> +++ b/drivers/phy/eswin/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_PHY_EIC7700_SATA)	+= phy-eic7700-sata.o
> diff --git a/drivers/phy/eswin/phy-eic7700-sata.c b/drivers/phy/eswin/phy-eic7700-sata.c
> new file mode 100644
> index 000000000000..96ae62a1b637
> --- /dev/null
> +++ b/drivers/phy/eswin/phy-eic7700-sata.c
> @@ -0,0 +1,221 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ESWIN SATA PHY driver
> + *
> + * Copyright 2026, Beijing ESWIN Computing Technology Co., Ltd..
> + * All rights reserved.
> + *
> + * Authors: Yulin Lu <luyulin@eswincomputing.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +
> +#define SATA_AXI_LP_CTRL			0x08
> +#define SATA_MPLL_CTRL				0x20
> +#define SATA_P0_PHY_STAT			0x24
> +#define SATA_PHY_CTRL0				0x28
> +#define SATA_PHY_CTRL1				0x2c
> +#define SATA_REF_CTRL				0x34
> +#define SATA_REF_CTRL1				0x38
> +#define SATA_LOS_IDEN				0x3c
> +
> +#define SATA_CLK_RST_SOURCE_PHY			BIT(0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK	GENMASK(6, 0)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK	GENMASK(14, 8)
> +#define SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK	GENMASK(22, 16)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN1_MASK	GENMASK(5, 0)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN2_MASK	GENMASK(13, 8)
> +#define SATA_P0_PHY_TX_PREEMPH_GEN3_MASK	GENMASK(21, 16)
> +#define SATA_LOS_LEVEL_MASK			GENMASK(4, 0)
> +#define SATA_LOS_BIAS_MASK			GENMASK(18, 16)
> +#define SATA_M_CSYSREQ				BIT(0)
> +#define SATA_S_CSYSREQ				BIT(16)
> +#define SATA_REF_REPEATCLK_EN			BIT(0)
> +#define SATA_REF_USE_PAD			BIT(20)
> +#define SATA_MPLL_MULTIPLIER_MASK		GENMASK(22, 16)
> +#define SATA_P0_PHY_READY			BIT(0)
> +
> +#define PLL_LOCK_SLEEP_US			10
> +#define PLL_LOCK_TIMEOUT_US			1000
> +
> +struct eic7700_sata_phy {
> +	struct reset_control *rst;
> +	struct regmap *regmap;
> +	struct clk *clk;
> +	struct phy *phy;
> +};
> +
> +static const struct regmap_config eic7700_sata_phy_regmap_config = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +	.reg_stride = 4,
> +	.max_register = SATA_LOS_IDEN,
> +};
> +
> +static int wait_for_phy_ready(struct regmap *regmap, u32 reg, u32 checkbit,
> +			      u32 status)
> +{
> +	u32 val;
> +	int ret;
> +
> +	ret = regmap_read_poll_timeout(regmap, reg, val,
> +				       (val & checkbit) == status,
> +				       PLL_LOCK_SLEEP_US, PLL_LOCK_TIMEOUT_US);
> +
> +	return ret;
> +}
> +
> +static int eic7700_sata_phy_init(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	u32 val;
> +	int ret;
> +
> +	ret = clk_prepare_enable(sata_phy->clk);
> +	if (ret)
> +		return ret;
> +
> +	regmap_write(sata_phy->regmap, SATA_REF_CTRL1, SATA_CLK_RST_SOURCE_PHY);
> +
> +	val = FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK, 0x42) |
> +	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK, 0x46) |
> +	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK, 0x73);
> +	regmap_write(sata_phy->regmap, SATA_PHY_CTRL0, val);
> +
> +	val = FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN1_MASK, 0x5) |
> +	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN2_MASK, 0x5) |
> +	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN3_MASK, 0x8);

Where are the magic values you are writing coming from..?

> +	regmap_write(sata_phy->regmap, SATA_PHY_CTRL1, val);
> +
> +	val = FIELD_PREP(SATA_LOS_LEVEL_MASK, 0x9) |
> +	      FIELD_PREP(SATA_LOS_BIAS_MASK, 0x2);
> +	regmap_write(sata_phy->regmap, SATA_LOS_IDEN, val);
> +
> +	val = SATA_M_CSYSREQ | SATA_S_CSYSREQ;
> +	regmap_write(sata_phy->regmap, SATA_AXI_LP_CTRL, val);
> +
> +	val = SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD;
> +	regmap_write(sata_phy->regmap, SATA_REF_CTRL, val);
> +
> +	val = FIELD_PREP(SATA_MPLL_MULTIPLIER_MASK, 0x3c);
> +	regmap_write(sata_phy->regmap, SATA_MPLL_CTRL, val);
> +
> +	usleep_range(15, 20);
> +
> +	ret = reset_control_deassert(sata_phy->rst);
> +	if (ret)
> +		goto disable_clk;
> +
> +	ret = wait_for_phy_ready(sata_phy->regmap, SATA_P0_PHY_STAT,
> +				 SATA_P0_PHY_READY, 1);
> +	if (ret < 0) {
> +		dev_err(&sata_phy->phy->dev, "PHY READY check failed\n");
> +		goto disable_clk;
> +	}
> +
> +	return 0;
> +
> +disable_clk:
> +	clk_disable_unprepare(sata_phy->clk);
> +	return ret;
> +}
> +
> +static int eic7700_sata_phy_exit(struct phy *phy)
> +{
> +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> +	int ret;
> +
> +	ret = reset_control_assert(sata_phy->rst);
> +	if (ret)
> +		return ret;
> +
> +	clk_disable_unprepare(sata_phy->clk);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops eic7700_sata_phy_ops = {
> +	.init		= eic7700_sata_phy_init,
> +	.exit		= eic7700_sata_phy_exit,
> +	.owner		= THIS_MODULE,
> +};
> +
> +static int eic7700_sata_phy_probe(struct platform_device *pdev)
> +{
> +	struct eic7700_sata_phy *sata_phy;
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct resource *res;
> +	void __iomem *regs;
> +
> +	sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
> +	if (!sata_phy)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -ENOENT;
> +
> +	regs = devm_ioremap(dev, res->start, resource_size(res));
> +	if (IS_ERR(regs))
> +		return PTR_ERR(regs);

devm_platform_get_and_ioremap_resource() please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
