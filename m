Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E723CFC531
	for <linux-phy@archiver.kernel.org>; Sat, 22 Nov 2025 12:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPGkeKf/AQBQloErfpImIubkJa1mIK+ymPefl/xnx9c=; b=rz/uVYpSYrkww7
	aFty+S+FKxrw1zL7w0oI3Tx8dAWhT4Dm2vQFqpzSZBCdT8EvC/YWgz1ZLy07UNPXjPVzyyH7JRAPO
	f6oh9Vh0mm7GH6UrLhzdFF/6ptKGlOOeIpYI9X1Xo8owN26tj05z5inLlBv/nm0qehGKg1NecXUaG
	WKGITKDPh2EbNMzfObZtWSQzV06AcA3umJ3c2VM0RS8usCyg4iBFG23/ViMQU7mhSq7L7N9QUf8Bp
	cYaVwvodayofKyRqbNI9ZEue/aNIFmZ2S9QC+Af1w9rBXZ/UWiJA03Z2n2+OjOB/3dTH1qcp8kSg7
	NuWnLx5AYSZnLUHAC9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMn2I-00000009aZo-2Mos;
	Sat, 22 Nov 2025 12:48:18 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMn2F-00000009aYp-3J08
	for linux-phy@lists.infradead.org;
	Sat, 22 Nov 2025 12:48:17 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-88043139c35so28037776d6.0
        for <linux-phy@lists.infradead.org>; Sat, 22 Nov 2025 04:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763815694; x=1764420494; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o8gqhbCltqdqbcHVKZyuU/IaHPWnbH5XRr5u6wrUOXw=;
        b=Whka5PNmxt6pf90/4FkdmxCynOzWD1vY60nCouDxqfYWHnICR4ZtlO3XI9/am3M9AM
         XuCKg6IRVBYkWiDFI1inZZI4ccoLg8tY5LgJFfrveckW09K6Ct0zQjFRQ5fn4XvuA092
         ekBWqjKbbLuoZgctizTMw7u+6JEdrXsc084t8zUQjB/dJhJQg7/IdgIJFZNMJSawJiWQ
         vBHw67C83x03CwYE0oCY/vLiG5W9x9bp8q0kFSfsfpZ+z7mGHDaAeDWhn8g+1JJv+riD
         BjC2ix6a0OhIqytdGUr8pIPBjIAEf7eKiffhatgxj7wgxPWvQbuX1H71rlepk97ruWxK
         tJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763815694; x=1764420494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8gqhbCltqdqbcHVKZyuU/IaHPWnbH5XRr5u6wrUOXw=;
        b=F+32qYWWL+2/y0lbajYo2Gk8Nu4c30caLcZ9RzIlvbyXOM/zp4jvdkoqkJr4FaLZFT
         Jf/jtsMm/3DvSVi508LNMMmiSMgErGmcUovElIbmC65jmLEnG0fjx52wofblVRi1DMwL
         /1CUPTOPAtZNDsmskllWJYweemLBfxZye/P2S8qiY7B1TtUFbeTtfaIeupYRzltCty+D
         vTdxLyjqL2iOTgLNyvb4m7Z8+I9+HZLAS68VS3iP6LBHcOIIgrVXDd4aTHS90gpqhf4T
         ZPp2Rd1ZFXlgRyJQd9acFVn7hFk8iT1BE+s5GO8RPNPLTTtn2I9Gmn7qtZ4mxNBq8FN/
         AyFA==
X-Forwarded-Encrypted: i=1; AJvYcCWCue7dYOEF467uPzU3fkSPmTcnbnaraVRXumxWSHIpEaeRSgA/4T/NgmyRQ6D1+HW6F+fsLLtc5c0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZK/2Fy9JLgJRlX5jIA/hSV7qNzUFeTQaYG3cX7gKfD6qmRBeK
	ZohNuQt5XeFKuoSoZXbiEwavI42WUPSZdv4BV1VC9uNHtZI0PM5BuTWzAeqqgdX8z+/MvNRZuuv
	tcriPcYMkwX3z8kiXTc/ECEk+CuD5FHVPSgMdmHbwlg==
X-Gm-Gg: ASbGncvusjlOj1MAiHWAPDlHPmwDs6s5telddJ99XKzi7U07CS10Kd5Mx4rTOxjnqzq
	UUU8J5t8mUB31rIiw2NEEnd2Ksy3lzzJ83HPJHhOYZ9jeQllCfvRF/zhb7cwBgggW+PU15AfaNp
	PXb/F65r4FyW9r3CAAGbxCWtjMoy3BngvsSqBs5g+T7AR5GMN8x3cT1gnHvxtSXge1ZWUgWg00e
	xLWcft5m5AKWg8Z1Fk+Fi5fE0USGKLLbW6rV3CqKng6vtPoRVod4kBzfqopvW3s+vmV5ow=
X-Google-Smtp-Source: AGHT+IFui2/FcnPBmvVszPdhd9hT5kBneIF+kUNteMJLYssXVSAn66jfA8taiczKqofX0Om2tpq1Aqap3IRQ6R38HV4=
X-Received: by 2002:a05:6214:21e3:b0:87f:fee5:c3a6 with SMTP id
 6a1803df08f44-8847c533f24mr88483516d6.49.1763815694379; Sat, 22 Nov 2025
 04:48:14 -0800 (PST)
MIME-Version: 1.0
References: <20251121-phyb4-v7-0-df644fa62180@google.com> <20251121-phyb4-v7-2-df644fa62180@google.com>
In-Reply-To: <20251121-phyb4-v7-2-df644fa62180@google.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 22 Nov 2025 12:48:03 +0000
X-Gm-Features: AWmQ_bkh4wl1u38i5d0nBSmX9Kkbsr0fGW0dbqVsgNFov-xmgwNb3n62zATaPv8
Message-ID: <CADrjBPpLn9qzg1y5_c_0CYL2U8p6taMWtPOw5RykAO4=4uNeUA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251122_044815_888856_6F79FA46 
X-CRM114-Status: GOOD (  28.74  )
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

Hi Roy,

On Fri, 21 Nov 2025 at 08:56, Roy Luo <royluo@google.com> wrote:
>
> Support the USB PHY found on Google Tensor G5 (Laguna). This
> particular USB PHY supports both high-speed and super-speed
> operations, and is integrated with the SNPS DWC3 controller that's
> also on the SoC. This initial patch specifically adds functionality
> for high-speed.
>
> Co-developed-by: Joy Chakraborty <joychakr@google.com>
> Signed-off-by: Joy Chakraborty <joychakr@google.com>
> Co-developed-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Naveen Kumar <mnkumar@google.com>
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  drivers/phy/Kconfig          |  13 ++
>  drivers/phy/Makefile         |   1 +
>  drivers/phy/phy-google-usb.c | 292 +++++++++++++++++++++++++++++++++++++++++++

Please add this new file to Tensor SoC MAINTAINERS entry so it's
easier to review future patches.

>  3 files changed, 306 insertions(+)
>
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0aa0597773433f04d2a9ba77474d2a..af14ec74542a9879c856dee8236753990fdf3705 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -101,6 +101,19 @@ config PHY_NXP_PTN3222
>           schemes. It supports all three USB 2.0 data rates: Low Speed, Full
>           Speed and High Speed.
>
> +config PHY_GOOGLE_USB
> +       tristate "Google Tensor SoC USB PHY driver"
> +       depends on HAS_IOMEM
> +       depends on OF
> +       depends on TYPEC

Add COMPILE_TEST for build testing.

> +       select GENERIC_PHY
> +       help
> +         Enable support for the USB PHY on Google Tensor SoCs, starting with
> +         the G5 generation. This driver provides the PHY interfaces to
> +         interact with the SNPS eUSB2 and USB 3.2/DisplayPort Combo PHY, both
> +         of which are integrated with the DWC3 USB DRD controller.
> +         This driver currently supports USB high-speed.
> +
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494283d7fd05dd670ebd1b12df8b1a1..aeaaaf988554a24bb572d8b34b54638a6a3aed73 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_PHY_SNPS_EUSB2)          += phy-snps-eusb2.o
>  obj-$(CONFIG_USB_LGM_PHY)              += phy-lgm-usb.o
>  obj-$(CONFIG_PHY_AIROHA_PCIE)          += phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_NXP_PTN3222)          += phy-nxp-ptn3222.o
> +obj-$(CONFIG_PHY_GOOGLE_USB)           += phy-google-usb.o
>  obj-y                                  += allwinner/   \
>                                            amlogic/     \
>                                            broadcom/    \
> diff --git a/drivers/phy/phy-google-usb.c b/drivers/phy/phy-google-usb.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..23b988cc5292111872c4acb32f7666e0ce9a39a3
> --- /dev/null
> +++ b/drivers/phy/phy-google-usb.c
> @@ -0,0 +1,292 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * phy-google-usb.c - Google USB PHY driver
> + *
> + * Copyright (C) 2025, Google LLC
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/reset.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/mutex.h>
> +#include <linux/cleanup.h>
> +#include <linux/usb/typec_mux.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>
> +

Sort headers alphabetically

> +#define USBCS_USB2PHY_CFG19_OFFSET 0x0
> +#define USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV GENMASK(19, 8)
> +
> +#define USBCS_USB2PHY_CFG21_OFFSET 0x8
> +#define USBCS_USB2PHY_CFG21_PHY_ENABLE BIT(12)
> +#define USBCS_USB2PHY_CFG21_REF_FREQ_SEL GENMASK(15, 13)
> +#define USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL BIT(19)
> +
> +#define USBCS_PHY_CFG1_OFFSET 0x28
> +#define USBCS_PHY_CFG1_SYS_VBUSVALID BIT(17)
> +
> +enum google_usb_phy_id {
> +       GOOGLE_USB2_PHY,
> +       GOOGLE_USB_PHY_NUM,
> +};
> +
> +struct google_usb_phy_instance {
> +       int index;
> +       struct phy *phy;
> +       int num_clks;
> +       struct clk_bulk_data *clks;
> +       int num_rsts;
> +       struct reset_control_bulk_data *rsts;
> +};
> +
> +struct google_usb_phy {
> +       struct device *dev;
> +       struct regmap *usb_cfg_regmap;
> +       unsigned int usb2_cfg_offset;
> +       void __iomem *usbdp_top_base;
> +       struct google_usb_phy_instance insts[GOOGLE_USB_PHY_NUM];
> +       /* serialize phy access */

Be more specific with the mutex comment, which code or variables are protected?

> +       struct mutex phy_mutex;
> +       struct typec_switch_dev *sw;
> +       enum typec_orientation orientation;
> +};
> +
> +static inline struct google_usb_phy *to_google_usb_phy(struct google_usb_phy_instance *inst)
> +{
> +       return container_of(inst, struct google_usb_phy, insts[inst->index]);
> +}
> +
> +static void set_vbus_valid(struct google_usb_phy *gphy)
> +{
> +       u32 reg;
> +
> +       if (gphy->orientation == TYPEC_ORIENTATION_NONE) {
> +               reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +               reg &= ~USBCS_PHY_CFG1_SYS_VBUSVALID;
> +               writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +       } else {
> +               reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +               reg |= USBCS_PHY_CFG1_SYS_VBUSVALID;
> +               writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +       }
> +}
> +
> +static int google_usb_set_orientation(struct typec_switch_dev *sw,
> +                                     enum typec_orientation orientation)
> +{
> +       struct google_usb_phy *gphy = typec_switch_get_drvdata(sw);
> +
> +       dev_dbg(gphy->dev, "set orientation %d\n", orientation);
> +
> +       gphy->orientation = orientation;
> +
> +       if (pm_runtime_suspended(gphy->dev))
> +               return 0;
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       set_vbus_valid(gphy);
> +
> +       return 0;
> +}
> +
> +static int google_usb2_phy_init(struct phy *_phy)
> +{
> +       struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +       struct google_usb_phy *gphy = to_google_usb_phy(inst);
> +       u32 reg;
> +       int ret = 0;
> +
> +       dev_dbg(gphy->dev, "initializing usb2 phy\n");
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG21_PHY_TX_DIG_BYPASS_SEL;
> +       reg &= ~USBCS_USB2PHY_CFG21_REF_FREQ_SEL;
> +       reg |= FIELD_PREP(USBCS_USB2PHY_CFG21_REF_FREQ_SEL, 0);
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV;
> +       reg |= FIELD_PREP(USBCS_USB2PHY_CFG19_PHY_CFG_PLL_FB_DIV, 368);
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG19_OFFSET, reg);
> +
> +       set_vbus_valid(gphy);
> +
> +       ret = clk_bulk_prepare_enable(inst->num_clks, inst->clks);
> +       if (ret)
> +               return ret;
> +
> +       ret = reset_control_bulk_deassert(inst->num_rsts, inst->rsts);
> +       if (ret) {
> +               clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> +               return ret;
> +       }
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg |= USBCS_USB2PHY_CFG21_PHY_ENABLE;
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       return ret;
> +}
> +
> +static int google_usb2_phy_exit(struct phy *_phy)
> +{
> +       struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +       struct google_usb_phy *gphy = to_google_usb_phy(inst);
> +       u32 reg;
> +
> +       dev_dbg(gphy->dev, "exiting usb2 phy\n");
> +
> +       guard(mutex)(&gphy->phy_mutex);
> +
> +       regmap_read(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, &reg);
> +       reg &= ~USBCS_USB2PHY_CFG21_PHY_ENABLE;
> +       regmap_write(gphy->usb_cfg_regmap, gphy->usb2_cfg_offset + USBCS_USB2PHY_CFG21_OFFSET, reg);
> +
> +       reset_control_bulk_assert(inst->num_rsts, inst->rsts);
> +       clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> +
> +       return 0;
> +}
> +
> +static const struct phy_ops google_usb2_phy_ops = {
> +       .init           = google_usb2_phy_init,
> +       .exit           = google_usb2_phy_exit,
> +};
> +
> +static struct phy *google_usb_phy_xlate(struct device *dev,
> +                                       const struct of_phandle_args *args)
> +{
> +       struct google_usb_phy *gphy = dev_get_drvdata(dev);
> +
> +       if (args->args[0] >= GOOGLE_USB_PHY_NUM) {
> +               dev_err(dev, "invalid PHY index requested from DT\n");
> +               return ERR_PTR(-ENODEV);
> +       }
> +       return gphy->insts[args->args[0]].phy;
> +}
> +
> +static int google_usb_phy_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct google_usb_phy *gphy;
> +       struct phy *phy;
> +       struct google_usb_phy_instance *inst;
> +       struct phy_provider *phy_provider;
> +       struct typec_switch_desc sw_desc = { };
> +       u32 args[1];
> +       int ret;

Consider reverse christmas tree ordering.

regards,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
