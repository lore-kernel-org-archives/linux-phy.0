Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCBDFC021B3
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 23:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y4c0uwG0F2jN+MKp+NksCWxfrnH8vUSe5UfCm6nxiI=; b=RWMwsHRcZL+W3r
	1wIBhC3FSnv6n9Flmfv3r1frWdH8CF57zse4Um8QRey/W9LMH6oPhjogwmJKcJO8wTqEF0SDVgpTl
	t5AskZ44cdI7e813NLzwMDUGn5NxhiDH192+uDncm0Ru32qOidM1wTKlaL6iNEIOWcST7Vo0k1Y6z
	ivNtdNzWC9m8AHn/71ltE6d1TmC1RgALGCwMOhWOUyfHyqJcAKfHSz1G6EfqsKVAeE8VOjwHVZKpw
	Lmh3GvorD6ZaSFgBuujht4z+eTJRN2f0TyclHRMSYkN5t3D9ev8938GzTqogJxt24YV0SUlxupjUU
	bDF/cBOudgRN7LDJ2MGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLoM-0000000BzxA-2CvX;
	Sun, 23 Feb 2025 23:55:02 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLoL-0000000BzwG-06Sm
	for linux-phy@lists.infradead.org;
	Sun, 23 Feb 2025 23:55:02 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-30737db1aa9so36876841fa.1
        for <linux-phy@lists.infradead.org>; Sun, 23 Feb 2025 15:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354899; x=1740959699; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MO69vvfxawoe2HNuQ/9QFZVUJBZNSU898FyLnskC1yc=;
        b=tGXG4JkiC7hxRDBxO7YDtXoCX+rysFj/gqHN1bhrdHs89p8IueZabgYh+Nk6L8DtWK
         6o8cBCd1ifyPd6Gn7q7Z0n05xmwxAhwmzi4Gbe2XRJm9jAydaUotyqvMA6cWhET63o0Q
         PhbZ2mqfhcrphl96737phAfnXp3GpmgTsLjYpNzdQlVGoYOIlM7lXm++itmxMdMG3Gfm
         3N+yhWQXQwfAPPhPGhagm+DQDbv5bp/zvv+z9zNYt5r5Qqh/hVpWsR+1FEJMTVQeWszj
         tNxD2+Ypjc4cRQ4iPihVLWrVXiihEFryupMbUH0m+KjSbGR+aXzclA7zTmClQgS1MMqX
         OizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354899; x=1740959699;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MO69vvfxawoe2HNuQ/9QFZVUJBZNSU898FyLnskC1yc=;
        b=OMvAmE0bRYwlvovEHq/YG5WJseokUXSkylyFL7rqVTuzdmD8fGIqOCdrchuavF9/wb
         32ODQyxh36JOxH2La1A643pi4oZ+xUJzMNwFaSdG32YtnzpQYGrbu0xDzM0mWCwjXhJO
         1Q9EXQa7yVWNZUhC/vB9bhBPIe4rRH5FVMfdb+iOJcKFDbsbNo+0sr5xMU2ZRovS/5iQ
         EUEY9xwo6VComPwseJqfhYSbRTC8anqgDRPhIDYEVpQOK/tPf11wTzF+D64nuhTDfi66
         TykeHFwZ2y+pn4eeD7AZ2dFYz5ua9FkbEuIWA9z9DtMyhQqt+PlNdwulpdxk+ccd8QvR
         J24A==
X-Forwarded-Encrypted: i=1; AJvYcCXUpCm6BJuHu0uW1q2/Pe3P3VBF8+4r7P+PbqgyD1U96KakY5ZJ21UKXHMbKUznYmDqExoeLqslg4U=@lists.infradead.org
X-Gm-Message-State: AOJu0YzShjZIlSWcPlwVRNc2BLcJ92C75HLAiJqj2WrkfjDZiWtuJpor
	PVaExid/p4uNvlxuwmkDdqGGgAukUtP24WjOH64X96GIl40V8LmTJkxZSD0lAEM=
X-Gm-Gg: ASbGncsN7lPRXSNu7780cIQj8KIlxUKTOFCh6pmcF8F7dB4BWo8CaNg4pGvY5irxspQ
	63b2lbe8jDf9TEWtSD1hvi5iz6PXkLF1lHPxVvCFNfWHWcnuXF8G2BafgDfc4I+ZOjhIwcmN/W6
	YrHmNStkpYrJY0wXi655/EN+TaPYhHGNmqN6WodlYl+kAT4xiP+Z48QxKJFqz2n7WZQYIomiYCY
	fqA5WkIUNvcZD8OnuU5HtBb+5S7+kbfR8DcG+UMTA0bR+ffaMl1EJCKFXNesNhTkDt2v89KBXi4
	K7ktJYpxRyFstTd6dH3de92KNaeNqANniqapHWD6KCmDOwYj8U1LqiM5PeUBk0S4sUs7bbRi8F6
	jXssjTg==
X-Google-Smtp-Source: AGHT+IHWZiY9l4ceFSLMfzXCkrvrA7BoZtPrqLKoUOz7ReQ2TLLajGXi72SpKOyuPoZptA2mBy16jg==
X-Received: by 2002:a05:6512:3b10:b0:545:2efc:745d with SMTP id 2adb3069b0e04-54838f79c81mr4594575e87.46.1740354898995;
        Sun, 23 Feb 2025 15:54:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462f125a0esm1423144e87.24.2025.02.23.15.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:54:57 -0800 (PST)
Date: Mon, 24 Feb 2025 01:54:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/8] phy: samsung: add Exynos2200 usb phy controller
Message-ID: <tkzfgfbu6j22c75zieponozeld5vvlqv65fnzjy3n2am2ajim5@yhc3tcr5ulfy>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-9-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-9-ivo.ivanov.ivanov1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_155501_102717_80983598 
X-CRM114-Status: GOOD (  30.82  )
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

On Sun, Feb 23, 2025 at 02:22:27PM +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC comes with a TI external repeater and 3 USB PHYs:
> - snps eUSB2 for UTMI
> - snps USBDP combophy for PIPE3 and DP
> - samsung USBCON phy
> 
> The USBCON phy is an intermediary between the USB controller (DWC3)
> and the underlying PHYs. Add a new driver for it, modelled to take
> a phandle to the high-speed PHY for now.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/samsung/Kconfig                 |  12 +
>  drivers/phy/samsung/Makefile                |   1 +
>  drivers/phy/samsung/phy-exynos2200-usbcon.c | 250 ++++++++++++++++++++
>  3 files changed, 263 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-exynos2200-usbcon.c
> 
> diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
> index e2330b089..0f809a382 100644
> --- a/drivers/phy/samsung/Kconfig
> +++ b/drivers/phy/samsung/Kconfig
> @@ -77,6 +77,18 @@ config PHY_S5PV210_USB2
>  	  particular SoC is compiled in the driver. In case of S5PV210 two phys
>  	  are available - device and host.
>  
> +config PHY_EXYNOS2200_USBCON
> +	tristate "Exynos2200 USBCON PHY driver"
> +	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	select GENERIC_PHY
> +	select MFD_SYSCON
> +	default y
> +	help
> +	  Enable USBCON PHY support for Exynos2200 SoC.
> +	  This driver provides PHY interface for the USBCON phy, which acts as
> +	  an intermediary between the USB controller and underlying PHYs.
> +
>  config PHY_EXYNOS5_USBDRD
>  	tristate "Exynos5 SoC series USB DRD PHY driver"
>  	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
> diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
> index fea1f96d0..e2686a3f5 100644
> --- a/drivers/phy/samsung/Makefile
> +++ b/drivers/phy/samsung/Makefile
> @@ -14,5 +14,6 @@ phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4X12_USB2)	+= phy-exynos4x12-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS5250_USB2)	+= phy-exynos5250-usb2.o
>  phy-exynos-usb2-$(CONFIG_PHY_S5PV210_USB2)	+= phy-s5pv210-usb2.o
> +obj-$(CONFIG_PHY_EXYNOS2200_USBCON)	+= phy-exynos2200-usbcon.o
>  obj-$(CONFIG_PHY_EXYNOS5_USBDRD)	+= phy-exynos5-usbdrd.o
>  obj-$(CONFIG_PHY_EXYNOS5250_SATA)	+= phy-exynos5250-sata.o
> diff --git a/drivers/phy/samsung/phy-exynos2200-usbcon.c b/drivers/phy/samsung/phy-exynos2200-usbcon.c
> new file mode 100644
> index 000000000..aad59349e
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynos2200-usbcon.c
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/soc/samsung/exynos-regs-pmu.h>
> +
> +#define EXYNOS2200_USBCON_LINKCTRL		0x4
> +#define LINKCTRL_FORCE_QACT			BIT(8)
> +
> +#define EXYNOS2200_USBCON_UTMI_CTRL		0x10
> +#define UTMI_CTRL_FORCESLEEP			BIT(13)
> +#define UTMI_CTRL_FORCESUSPEND			BIT(12)
> +#define UTMI_CTRL_FORCE_VBUSVALID		BIT(1)
> +#define UTMI_CTRL_FORCE_BVALID			BIT(0)
> +
> +#define EXYNOS2200_USBCON_LINK_CLKRST		0xc
> +#define LINK_CLKRST_SW_RST			BIT(0)
> +
> +struct exynos2200_usbcon_phy_drvdata {
> +	const char * const *clk_names;
> +	int num_clks;
> +};
> +
> +struct exynos2200_usbcon_phy {
> +	struct phy *phy;
> +	void __iomem *base;
> +	struct regmap *reg_pmu;
> +	struct clk_bulk_data *clks;
> +	const struct exynos2200_usbcon_phy_drvdata *drv_data;
> +	u32 pmu_offset;
> +	struct phy *hs_phy;
> +};
> +
> +static void exynos2200_usbcon_phy_isol(struct exynos2200_usbcon_phy *inst,
> +				       bool isolate)
> +{
> +	unsigned int val;
> +
> +	if (!inst->reg_pmu)
> +		return;
> +
> +	val = isolate ? 0 : EXYNOS4_PHY_ENABLE;
> +
> +	regmap_update_bits(inst->reg_pmu, inst->pmu_offset,
> +			   EXYNOS4_PHY_ENABLE, val);
> +}
> +
> +static void exynos2200_usbcon_phy_write_mask(void __iomem *base, u32 offset,
> +					     u32 mask, u32 val)
> +{
> +	u32 reg;
> +
> +	reg = readl(base + offset);
> +	reg &= ~mask;
> +	reg |= val & mask;
> +	writel(reg, base + offset);

Does this need any kind of locking? Maybe you can use regmap for this
access too?

> +
> +	/* Ensure above write is completed */
> +	readl(base + offset);
> +}

[...]

> +
> +	generic_phy = devm_phy_create(dev, NULL, &exynos2200_usbcon_phy_ops);
> +	if (IS_ERR(generic_phy))
> +		return dev_err_probe(dev, PTR_ERR(generic_phy),
> +				     "failed to create phy %d\n", ret);
> +
> +	dev_set_drvdata(dev, phy);

Nit: unused. LGTM otherwise.

> +	phy_set_drvdata(generic_phy, phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return dev_err_probe(dev, PTR_ERR(phy_provider),
> +				     "failed to register phy provider\n");
> +
> +	return 0;
> +}
> +
> +static const char * const exynos2200_clk_names[] = {
> +	"bus",
> +};
> +
> +static const struct exynos2200_usbcon_phy_drvdata exynos2200_usbcon_phy = {
> +	.clk_names		= exynos2200_clk_names,
> +	.num_clks		= ARRAY_SIZE(exynos2200_clk_names),
> +};
> +
> +static const struct of_device_id exynos2200_usbcon_phy_of_match_table[] = {
> +	{
> +		.compatible = "samsung,exynos2200-usbcon-phy",
> +		.data = &exynos2200_usbcon_phy,
> +	}, { },
> +};
> +MODULE_DEVICE_TABLE(of, exynos2200_usbcon_phy_of_match_table);
> +
> +static struct platform_driver exynos2200_usbcon_phy_driver = {
> +	.probe		= exynos2200_usbcon_phy_probe,
> +	.driver = {
> +		.name	= "exynos2200-usbcon-phy",
> +		.of_match_table = exynos2200_usbcon_phy_of_match_table,
> +	},
> +};
> +
> +module_platform_driver(exynos2200_usbcon_phy_driver);
> +MODULE_DESCRIPTION("Exynos2200 USBCON PHY driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
