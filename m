Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C2DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 16:00:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 95483611CE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 16:00:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 95483611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9thT6tx2ltgfQoLSi2+kMYWHgjQOOT0r/8Vqs8uzh0k=; b=EcckUoVdLySXoq
	ZljgfJSHsBiI4Ob+Amj3nEjVTlvBewAWxHyQMpc/XGld5jAbh4dcjs84Yr1aOA+5X9nSDZ5QSYXiX
	YwVoaS24KIHOcg47a+1+8cW4h3w0821HI0PTmL3XjrzXFDjNhZMecTxF1N5jHuQpO9X0RJZcIYldi
	43VVOebzSgALOCY/VqM/BKK3U0jN2oFeIF41rzPRT5ba9gNxkO2KBrAYRKTZH7VLmA/JOudgRi8we
	+P702okowd/hF5cq1dWxGhpGJFnqUIrWDTWHE66IZplGtdAlOlk2lqVp1S+fiTxP1MuusuS9y6v6u
	mow1iZXUE4qGr3AxfTDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdaUZ-008HIW-3e; Thu, 21 Oct 2021 16:00:31 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdaUL-008HEO-5M
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 16:00:19 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 t5-20020a17090a4e4500b001a0a284fcc2so3486369pjl.2
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 09:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oXjjIT53pPSN6EbNLdcQYZ+Q8H1oQIkUaSTYH2ornZc=;
 b=uplk04eI3vJAJyTTRkjGI0uENtNd9oA3K4w/OioRJi0KvjATmTtkaJ+x5DPcPyKjGZ
 +oNZ083nEA7aYfv1y9S/8PBN5bLaRxnjT8486KOj3GvT0h3G5WyIRTo0iCi45nh2F9xL
 aw9t/KovixYfZEdsAmaRVavfX+mxvPWfRrNvAUTYgav1ieVoFobHKMOKSLgf2Xf4ldNo
 C6lKQGzxpoGfE+MWrT7xVijGnuPnUkjgO94HsioQqvpKtJ9s33S+T6KHzE2rono5ldtn
 Svy7KX4shc+h7l+A82NB73pJWkt7T/yRSoQvIvsee3MJR5rl81OTkQDM4abWwRypWsDC
 828w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oXjjIT53pPSN6EbNLdcQYZ+Q8H1oQIkUaSTYH2ornZc=;
 b=dXVs7q/2vuwcjqGiWTyKckujWZAB2LsNe+B0knlpRNnYy5lQTJHT5oLpdjIVNzOVXl
 hXc9U6N9pGeom9k7ir2t1bWVjSFB+/MaORNLw9ztvEGocSQTHa3Rw14JmlUpdy/hi315
 1ZG9O3lAzJiaD1FbOvywFc7/3EasA5w7qtrj9dyvvYh1vNEu1h+ymkaagrIA71Aivj+M
 ljJLVotr1ipZQl7xUyWC7hj/coPYaNhH1Kg/lFWn6gP7hvQO2n5wgRwqzlqQpjCgQrXP
 vgNHODDWbVnaHjvqiyPWmfbiDymuXyyAzCb0D1TB2fmpw/qf4WAOHS+ppXR8QEimZX+d
 R1tQ==
X-Gm-Message-State: AOAM531ogO01klvUX30nt6j67fO1r0cnuzrHVzJh/MXAyzyFBfAGxmMx
 /vFl6F+u6JrmHeukeB6/p5QoqAlCsVPJpwREEyzYxw==
X-Google-Smtp-Source: ABdhPJzW4PtQ9QL75FFgjvDLZdyqwOcbpV/RHBL7qic1z9hHTdynl2LRTjI4DPbJoNo3+VvPg123BfpCN+0j9IBM0cg=
X-Received: by 2002:a17:902:b907:b0:13f:ccaf:9ed8 with SMTP id
 bf7-20020a170902b90700b0013fccaf9ed8mr6057236plb.46.1634832016207; Thu, 21
 Oct 2021 09:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
 <1634028078-2387-6-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1634028078-2387-6-git-send-email-hongxing.zhu@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 21 Oct 2021 09:00:04 -0700
Message-ID: <CAJ+vNU192BCiVQ=UwXgVCgCMA7tqcAQXQokyh5bO08a+SycOzQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
 standalone phy driver
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, vkoul@kernel.org, 
 Rob Herring <robh@kernel.org>, galak@kernel.crashing.org, 
 Shawn Guo <shawnguo@kernel.org>, linux-phy@lists.infradead.org, 
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_090017_305333_591A9094 
X-CRM114-Status: GOOD (  35.44  )
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

On Tue, Oct 12, 2021 at 2:06 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Add the standalone i.MX8 PCIe PHY driver.
> Some reset bits should be manipulated between PHY configurations and
> status check(internal PLL is locked or not).
> So, do the PHY configuration in the phy_calibrate().
> And check the PHY is ready or not in the phy_init().
>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/phy/freescale/Kconfig              |   9 +
>  drivers/phy/freescale/Makefile             |   1 +
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 218 +++++++++++++++++++++
>  3 files changed, 228 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-imx8m-pcie.c
>
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 320630ffe3cd..fb08e5242602 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -14,3 +14,12 @@ config PHY_MIXEL_MIPI_DPHY
>         help
>           Enable this to add support for the Mixel DSI PHY as found
>           on NXP's i.MX8 family of SOCs.
> +
> +config PHY_FSL_IMX8M_PCIE
> +       tristate "Freescale i.MX8 PCIE PHY"
> +       depends on OF && HAS_IOMEM
> +       select GENERIC_PHY
> +       default ARCH_MXC
> +       help
> +         Enable this to add support for the PCIE PHY as found on
> +         i.MX8M family of SOCs.
> diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
> index 1d02e3869b45..55d07c742ab0 100644
> --- a/drivers/phy/freescale/Makefile
> +++ b/drivers/phy/freescale/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)       += phy-fsl-imx8mq-usb.o
>  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)      += phy-fsl-imx8-mipi-dphy.o
> +obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)       += phy-fsl-imx8m-pcie.o
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> new file mode 100644
> index 000000000000..317cf61bff37
> --- /dev/null
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -0,0 +1,218 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +#define IMX8MM_PCIE_PHY_CMN_REG061     0x184
> +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_EN  BIT(0)
> +#define IMX8MM_PCIE_PHY_CMN_REG062     0x188
> +#define  ANA_PLL_CLK_OUT_TO_EXT_IO_SEL BIT(3)
> +#define IMX8MM_PCIE_PHY_CMN_REG063     0x18C
> +#define  AUX_PLL_REFCLK_SEL_SYS_PLL    GENMASK(7, 6)
> +#define IMX8MM_PCIE_PHY_CMN_REG064     0x190
> +#define  ANA_AUX_RX_TX_SEL_TX          BIT(7)
> +#define  ANA_AUX_RX_TERM_GND_EN                BIT(3)
> +#define  ANA_AUX_TX_TERM               BIT(2)
> +#define IMX8MM_PCIE_PHY_CMN_REG065     0x194
> +#define  ANA_AUX_RX_TERM               (BIT(7) | BIT(4))
> +#define  ANA_AUX_TX_LVL                        GENMASK(3, 0)
> +#define IMX8MM_PCIE_PHY_CMN_REG75      0x1D4
> +#define  PCIE_PHY_CMN_REG75_PLL_DONE   0x3
> +#define PCIE_PHY_TRSV_REG5             0x414
> +#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP 0x2D
> +#define PCIE_PHY_TRSV_REG6             0x418
> +#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP 0xF
> +
> +#define IMX8MM_GPR_PCIE_REF_CLK_SEL    GENMASK(25, 24)
> +#define IMX8MM_GPR_PCIE_REF_CLK_PLL    FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
> +#define IMX8MM_GPR_PCIE_REF_CLK_EXT    FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x2)
> +#define IMX8MM_GPR_PCIE_AUX_EN         BIT(19)
> +#define IMX8MM_GPR_PCIE_CMN_RST                BIT(18)
> +#define IMX8MM_GPR_PCIE_POWER_OFF      BIT(17)
> +#define IMX8MM_GPR_PCIE_SSC_EN         BIT(16)
> +#define IMX8MM_GPR_PCIE_REF_USE_PAD    BIT(9)
> +
> +struct imx8_pcie_phy {
> +       u32                     refclk_pad_mode;
> +       void __iomem            *base;
> +       struct clk              *clk;
> +       struct phy              *phy;
> +       struct regmap           *iomuxc_gpr;
> +       struct reset_control    *reset;
> +};
> +
> +static int imx8_pcie_phy_init(struct phy *phy)
> +{
> +       int ret;
> +       u32 val, pad_mode;
> +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +       reset_control_assert(imx8_phy->reset);
> +
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_REF_USE_PAD,
> +                          imx8_phy->refclk_pad_mode == 1 ?

Hi Richard,

use the enumerated type for the comparison above for clarity:
imx8_phy->refclk_pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT

Also, this is the configuration that makes my imx8mm-venice boards
which do not use CLKREQ# hang while waiting for PHY. I am setting in
my dt:
&pcie_phy {
        fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
        clocks = <&clk IMX8MM_CLK_DUMMY>;
        status = "okay";
};

The NXP kernel woudl always set this bit to 0 which makes my board work.

The IMX8MMRM documentation appears incorrect here:
IOMUXC_GPR_GPR14 bit 9: GPR_PCIE1_ PHY_I_AUX_ EN_OVERRIDE_ EN:
{GPR_PCIE1_PHY_I_AUX_EN_OVERRIDE_EN, GPR_PCIE1_PHY_FUNC_I_AUX_EN}
 2'b00 External Reference Clock I/O (for PLL) Disable
 2'b01 External Reference Clock I/O (for PLL) Enable
 2'b10 External Reference Clock I/O (for PLL) Disable
 2'b11 External Reference Clock I/O (for PLL) output is controlled by CLKREQ#

How is it they define this as a single bit then give descriptions for
2 bits? Something is wrong here.

> +                          IMX8MM_GPR_PCIE_REF_USE_PAD : 0);
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_AUX_EN,
> +                          IMX8MM_GPR_PCIE_AUX_EN);
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_POWER_OFF, 0);
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_SSC_EN, 0);
> +
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_REF_CLK_SEL,
> +                          imx8_phy->refclk_pad_mode == 1 ?

imx8_phy->refclk_pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT

Best regards,

Tim

> +                          IMX8MM_GPR_PCIE_REF_CLK_EXT :
> +                          IMX8MM_GPR_PCIE_REF_CLK_PLL);
> +       usleep_range(100, 200);
> +
> +       /* Do the PHY common block reset */
> +       regmap_update_bits(imx8_phy->iomuxc_gpr, IOMUXC_GPR14,
> +                          IMX8MM_GPR_PCIE_CMN_RST,
> +                          IMX8MM_GPR_PCIE_CMN_RST);
> +       usleep_range(200, 500);
> +
> +
> +       pad_mode = imx8_phy->refclk_pad_mode;
> +       if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
> +               /* Configure the pad as input */
> +               val = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +               writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +       } else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
> +               /* Configure the PHY to output the refclock via pad */
> +               writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
> +               writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
> +               writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
> +               val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
> +               writel(val | ANA_AUX_RX_TERM_GND_EN,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
> +               writel(ANA_AUX_RX_TERM | ANA_AUX_TX_LVL,
> +                      imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG065);
> +       }
> +
> +       /* Tune PHY de-emphasis setting to pass PCIe compliance. */
> +       writel(PCIE_PHY_TRSV_REG5_GEN1_DEEMP,
> +              imx8_phy->base + PCIE_PHY_TRSV_REG5);
> +       writel(PCIE_PHY_TRSV_REG6_GEN2_DEEMP,
> +              imx8_phy->base + PCIE_PHY_TRSV_REG6);
> +
> +       reset_control_deassert(imx8_phy->reset);
> +
> +       /* Polling to check the phy is ready or not. */
> +       ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
> +                                val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
> +                                10, 20000);
> +       return ret;
> +}
> +
> +static int imx8_pcie_phy_power_on(struct phy *phy)
> +{
> +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +       return clk_prepare_enable(imx8_phy->clk);
> +}
> +
> +static int imx8_pcie_phy_power_off(struct phy *phy)
> +{
> +       struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
> +
> +       clk_disable_unprepare(imx8_phy->clk);
> +
> +       return 0;
> +}
> +
> +static const struct phy_ops imx8_pcie_phy_ops = {
> +       .init           = imx8_pcie_phy_init,
> +       .power_on       = imx8_pcie_phy_power_on,
> +       .power_off      = imx8_pcie_phy_power_off,
> +       .owner          = THIS_MODULE,
> +};
> +
> +static int imx8_pcie_phy_probe(struct platform_device *pdev)
> +{
> +       struct phy_provider *phy_provider;
> +       struct device *dev = &pdev->dev;
> +       struct device_node *np = dev->of_node;
> +       struct imx8_pcie_phy *imx8_phy;
> +       struct resource *res;
> +
> +       imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
> +       if (!imx8_phy)
> +               return -ENOMEM;
> +
> +       /* get PHY refclk pad mode */
> +       of_property_read_u32(np, "fsl,refclk-pad-mode",
> +                            &imx8_phy->refclk_pad_mode);
> +
> +       imx8_phy->clk = devm_clk_get(dev, "phy");
> +       if (IS_ERR(imx8_phy->clk)) {
> +               dev_err(dev, "failed to get imx pcie phy clock\n");
> +               return PTR_ERR(imx8_phy->clk);
> +       }
> +
> +       /* Grab GPR config register range */
> +       imx8_phy->iomuxc_gpr =
> +                syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> +       if (IS_ERR(imx8_phy->iomuxc_gpr)) {
> +               dev_err(dev, "unable to find iomuxc registers\n");
> +               return PTR_ERR(imx8_phy->iomuxc_gpr);
> +       }
> +
> +       imx8_phy->reset = devm_reset_control_get_exclusive(dev, "pciephy");
> +       if (IS_ERR(imx8_phy->reset)) {
> +               dev_err(dev, "Failed to get PCIEPHY reset control\n");
> +               return PTR_ERR(imx8_phy->reset);
> +       }
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       imx8_phy->base = devm_ioremap_resource(dev, res);
> +       if (IS_ERR(imx8_phy->base))
> +               return PTR_ERR(imx8_phy->base);
> +
> +       imx8_phy->phy = devm_phy_create(dev, NULL, &imx8_pcie_phy_ops);
> +       if (IS_ERR(imx8_phy->phy))
> +               return PTR_ERR(imx8_phy->phy);
> +
> +       phy_set_drvdata(imx8_phy->phy, imx8_phy);
> +
> +       phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +
> +       return PTR_ERR_OR_ZERO(phy_provider);
> +}
> +
> +static const struct of_device_id imx8_pcie_phy_of_match[] = {
> +       {.compatible = "fsl,imx8mm-pcie-phy",},
> +       { },
> +};
> +MODULE_DEVICE_TABLE(of, imx8_pcie_phy_of_match);
> +
> +static struct platform_driver imx8_pcie_phy_driver = {
> +       .probe  = imx8_pcie_phy_probe,
> +       .driver = {
> +               .name   = "imx8-pcie-phy",
> +               .of_match_table = imx8_pcie_phy_of_match,
> +       }
> +};
> +module_platform_driver(imx8_pcie_phy_driver);
> +
> +MODULE_DESCRIPTION("FSL IMX8 PCIE PHY driver");
> +MODULE_LICENSE("GPL");
> --
> 2.25.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
