Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 062BCC021A0
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 09:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3C+zaf62+sd/AFpzrKYVE8dUbg1dMegJ8WuIhsYA3I=; b=Lw74Am1yOebY8v
	USrQQ9DVhd+SionM1VyxsvWySOiq2tJS9R3MTJag5hljeGe5YrIarlmzugbT/vobZaD6qWcxG77YV
	vlq9UztQeQkTNhOyi/F5Jh0KDyfvb4uft8zIKmZnhIlUAXNHFfUObTqpzaCKAZIYonVONTUXur04S
	tfe788nTkwV0mzRmwBUaT1vLUwW0ST5vMJ6sFl1TBiC2xtMNndqlh+7bIEBOvM07wh1EE10fw8CU+
	plC2242sl9WC9v5FxqHtbPMAAN++aIdHuj13yXPm5ids4ODPp5HsoTiSAzr1JffTLqQTRspaY5cXf
	p3mbuahY/qs76/SrtkIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxH3-00000003uG9-3Hb7;
	Mon, 17 Feb 2025 09:18:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjx4N-00000003rec-0SuO
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 09:05:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx40-0006c0-MJ; Mon, 17 Feb 2025 10:05:16 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx3z-001NXE-01;
	Mon, 17 Feb 2025 10:05:15 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx3y-0003Vh-30;
	Mon, 17 Feb 2025 10:05:14 +0100
Message-ID: <fd2a9b15865a3e8f34608eb1b09948e5567083e2.camel@pengutronix.de>
Subject: Re: [PATCH v1 3/4] phy: samsung: add Exynos2200 SNPS eUSB2 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, Vinod Koul
 <vkoul@kernel.org>,  Kishon Vijay Abraham I <kishon@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
  linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 17 Feb 2025 10:05:14 +0100
In-Reply-To: <20250215122409.162810-4-ivo.ivanov.ivanov1@gmail.com>
References: <20250215122409.162810-1-ivo.ivanov.ivanov1@gmail.com>
	 <20250215122409.162810-4-ivo.ivanov.ivanov1@gmail.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_010539_146258_CDEEECD3 
X-CRM114-Status: GOOD (  16.57  )
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

On Sa, 2025-02-15 at 14:24 +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC uses Synopsis eUSB2 PHY for USB 2.0. Add a new
> driver for it.
> 
> eUSB2 on Exynos SoCs is usually paired alongside a USB PHY controller.
> Currently the driver is modelled to take and enable/disable the usb phy
> controller when needed.
> 
> The driver is based on information from downstream drivers.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/samsung/Kconfig                   |  13 +
>  drivers/phy/samsung/Makefile                  |   1 +
>  .../phy/samsung/phy-exynos2200-snps-eusb2.c   | 351 ++++++++++++++++++
>  3 files changed, 365 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-exynos2200-snps-eusb2.c
> 
[...]
> diff --git a/drivers/phy/samsung/phy-exynos2200-snps-eusb2.c b/drivers/phy/samsung/phy-exynos2200-snps-eusb2.c
> new file mode 100644
> index 000000000..ee6d96411
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynos2200-snps-eusb2.c
> @@ -0,0 +1,351 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/iopoll.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/reset.h>

Drop this ...

[...]
> +struct exynos2200_snps_eusb2_phy {
> +	struct phy *phy;
> +	void __iomem *base;
> +
> +	struct clk *ref_clk;
> +	struct clk_bulk_data *clks;
> +	const struct exynos2200_snps_eusb2_phy_drvdata *drv_data;
> +	struct reset_control *phy_reset;

... and this. It's never used.


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
