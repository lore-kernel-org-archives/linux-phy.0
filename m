Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE1F2C4828F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Feb 2024 09:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gi1/MmPE8WmbAEqmQJnD81/Pj7WdoQspyFyQYWBGqw=; b=Sgi7AcshaC4TcV
	3nWUh7/bUhAjboudhDTDo+7Wj9rUJ1StW+P47Rx4/ijL6ZzCsiwo3pRRiye51mDQZyQu5+oczJ4iZ
	DOs7IS04+UbcNaD84We4VORIG5Uyqvi5b4VNzWoEJf+XwcYF5s8exAsL/34u3e8an4NoXI2VQ9/0O
	jgIdGLszuiyanQMkp6vVbSBe/5Wz7TlmdgZ6EGnCLMrQwwn4QBoc3aX/EUXQqFXmgcbq6wBzIsV8T
	Uh9ocAYHdRof2i0L0QM9gkdBrLoa494VkgzgLA2LZlEwRlUDRqlMo+r80o+esJPmlJTEvFaTDJ+Hy
	/FrOYE4Ehfn9JRFT4nYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWYic-00000000TyN-1KSf;
	Sun, 04 Feb 2024 09:23:18 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWYiZ-00000000Txa-20AY
	for linux-phy@lists.infradead.org;
	Sun, 04 Feb 2024 09:23:17 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dc6de8a699dso2887212276.3
        for <linux-phy@lists.infradead.org>; Sun, 04 Feb 2024 01:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707038593; x=1707643393; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/jpuYG+EdQLizy4QqBGZn07wougvdBXcN1e2Mr1rzhc=;
        b=xVtB/7OgMIvyVIIpVsQLY2Zkw5qTAwkVL512nueu+n2zsuFY0uYS2YOJhQ42T7ZAPN
         AP7rTNDB0IoyGDG7p2jWXUJBnMLjAEK0MmZVGriV/jmuoDQJHybXi8xOV2RjCSlb/1VA
         ugT4beDDYw7Q91Vu1HwABdkjQ2QkAH4XjamKwplE1qInMHqLCgX7cScj3TXuyl+wVD4u
         CcTSXM2K9fkppebPgdTBmdkQhhtVbk17KUjMP8ffPoFBV0iWol3B4n1B/rqBFnxkZeGO
         4ZzPJ32o9kn3po/89QSfv6n4GvJSNAYJ4wpgyHCS/XBfAbYQLN8vCQQLciIMzBk2qncf
         jGow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707038593; x=1707643393;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/jpuYG+EdQLizy4QqBGZn07wougvdBXcN1e2Mr1rzhc=;
        b=X2F/0EBSVYRUzWL/kv9U2Y1ntZLQfEmhmbsF7cqvxhvHdN4qpHh1DD0giuCEtMJaRo
         m+45syLWUuVNkUSNNG1fKIZKLilgjzOnQY+vPdZbG8dpzZV9m1o6iPYgMZunVsZbq3m5
         TNJa4GeAt0CgKe9uwZ1xajYRZgYm0jblkavZ6MWLXX4C1ec84ZtSLDplE6tcdeFKUhT7
         SaLnBk7rdVDWnS6QVasGL//rjEodxzSi+5Du244+kngcCC5GpT0WgxnqQfquZB7hTEMS
         MJI9DfjnMPP9mwF7j32i/wLJmiC8+cbjn1XIcWIYfXR45MVqAxkxBpZ/EWnxzAJe3baL
         NxVQ==
X-Gm-Message-State: AOJu0YzwdpPUGn6n0OPtm00hlbv7McfpRB91H2GRZYrS0yi89ZtHjxgi
	kfkJVqUobc7oezudA6HFl/x3trb402JDS8LxFCPHQfGhrtJ9hepZT5Cx8EFp0uHGfvOgjsMvuic
	RRYRqlI5b8ZQy2KixbjA/Xjx++zi0xVFkNR4ZKg==
X-Google-Smtp-Source: AGHT+IH+6aIPxyRh3mvo8zj6LoCTEA2WezKPM1eVxvYBfHARq8vhSf+rEtZZT+MgFJeC0Ki4LzPESO32enuMKM5VVA0=
X-Received: by 2002:a25:210:0:b0:dc2:48af:bf0c with SMTP id
 16-20020a250210000000b00dc248afbf0cmr10544490ybc.63.1707038593547; Sun, 04
 Feb 2024 01:23:13 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-3-aford173@gmail.com>
In-Reply-To: <20240203165307.7806-3-aford173@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 4 Feb 2024 10:23:02 +0100
Message-ID: <CAA8EJpo4omXogg48urEMzxQ+CA7DNTSf66pA6hoO8wpmtn_-MQ@mail.gmail.com>
Subject: Re: [PATCH V8 02/12] phy: freescale: add Samsung HDMI PHY
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, 
	Lucas Stach <l.stach@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_012315_569174_A0DCE0D1 
X-CRM114-Status: GOOD (  26.79  )
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

On Sat, 3 Feb 2024 at 17:53, Adam Ford <aford173@gmail.com> wrote:
>
> From: Lucas Stach <l.stach@pengutronix.de>
>
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> V4:  Make lookup table hex values lower case.
>
> V3:  Re-order the Makefile to keep it alphabetical
>      Remove unused defines
>
> V2:  Fixed some whitespace found from checkpatch
>      Change error handling when enabling apbclk to use dev_err_probe
>      Rebase on Linux-Next
>
>      I (Adam) tried to help move this along, so I took Lucas' patch and
>      attempted to apply fixes based on feedback.  I don't have
>      all the history, so apologies for that.
> ---
>  drivers/phy/freescale/Kconfig                |    6 +
>  drivers/phy/freescale/Makefile               |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 1075 ++++++++++++++++++
>  3 files changed, 1082 insertions(+)
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c
>
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 853958fb2c06..5c2b73042dfc 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -35,6 +35,12 @@ config PHY_FSL_IMX8M_PCIE
>           Enable this to add support for the PCIE PHY as found on
>           i.MX8M family of SOCs.
>
> +config PHY_FSL_SAMSUNG_HDMI_PHY
> +       tristate "Samsung HDMI PHY support"
> +       depends on OF && HAS_IOMEM
> +       help
> +         Enable this to add support for the Samsung HDMI PHY in i.MX8MP.
> +
>  endif
>
>  config PHY_FSL_LYNX_28G
> diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
> index cedb328bc4d2..79e5f16d3ce8 100644
> --- a/drivers/phy/freescale/Makefile
> +++ b/drivers/phy/freescale/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)        += phy-fsl-imx8qm-lvds-phy.o
>  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)      += phy-fsl-imx8-mipi-dphy.o
>  obj-$(CONFIG_PHY_FSL_IMX8M_PCIE)       += phy-fsl-imx8m-pcie.o
>  obj-$(CONFIG_PHY_FSL_LYNX_28G)         += phy-fsl-lynx-28g.o
> +obj-$(CONFIG_PHY_FSL_SAMSUNG_HDMI_PHY)  += phy-fsl-samsung-hdmi.o
> diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> new file mode 100644
> index 000000000000..bf0e2299d00f
> --- /dev/null
> +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> @@ -0,0 +1,1075 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2020 NXP
> + * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#define PHY_REG_33             0x84
> +#define  REG33_MODE_SET_DONE   BIT(7)
> +#define  REG33_FIX_DA          BIT(1)
> +
> +#define PHY_REG_34             0x88
> +#define  REG34_PHY_READY       BIT(7)
> +#define  REG34_PLL_LOCK                BIT(6)
> +#define  REG34_PHY_CLK_READY   BIT(5)
> +
> +
> +#define PHY_PLL_REGS_NUM 48
> +
> +struct phy_config {
> +       u32     clk_rate;
> +       u8 regs[PHY_PLL_REGS_NUM];
> +};
> +
> +const struct phy_config phy_pll_cfg[] = {
> +       {       22250000, {
> +                       0x00, 0xd1, 0x4b, 0xf1, 0x89, 0x88, 0x80, 0x40,
> +                       0x4f, 0x30, 0x33, 0x65, 0x00, 0x15, 0x25, 0x80,
> +                       0x6c, 0xf2, 0x67, 0x00, 0x10, 0x8f, 0x30, 0x32,
> +                       0x60, 0x8f, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
> +                       0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                       0x00, 0xe0, 0x83, 0x0f, 0x3e, 0xf8, 0x00, 0x00,
> +               },
> +       }, {
> +               23750000, {
> +                       0x00, 0xd1, 0x50, 0xf1, 0x86, 0x85, 0x80, 0x40,
> +                       0x4f, 0x30, 0x33, 0x65, 0x00, 0x03, 0x25, 0x80,
> +                       0x6c, 0xf2, 0x67, 0x00, 0x10, 0x8f, 0x30, 0x32,
> +                       0x60, 0x8f, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
> +                       0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                       0x00, 0xe0, 0x83, 0x0f, 0x3e, 0xf8, 0x00, 0x00,
> +               },

Generally I see that these entries contain a high level of duplication.
Could you please extract the common part and a rate-dependent part.
Next, it would be best if instead of writing the register values via
the rate LUT, the driver could calculate those values.
This allows us to support other HDMI modes if the need arises at some point.

> +       }, {
> +               24000000, {
> +                       0x00, 0xd1, 0x50, 0xf0, 0x00, 0x00, 0x80, 0x00,
> +                       0x4f, 0x30, 0x33, 0x65, 0x00, 0x01, 0x25, 0x80,
> +                       0x6c, 0xf2, 0x67, 0x00, 0x10, 0x8f, 0x30, 0x32,
> +                       0x60, 0x8f, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
> +                       0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +                       0x00, 0xe0, 0x83, 0x0f, 0x3e, 0xf8, 0x00, 0x00,
> +               },


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
