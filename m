Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81D86C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayz1ybS72YzY4TT69qMX0Rtu33aGkE5oroCdAK1ufmM=; b=wmK4okahlyxIcP
	Px+6dvsOdfOpuFn1VsdDDHUe/gPX12fB8P/1QEb15RozxlBEf+ei3MAh038kxOXbDRdWO/xGMSNj3
	Y4316rZoYv8KRqK9FK04Uj7cq1iGsti1Z9dOETSCs3fHtKyxjqAaKmPtVEX8gTSU9Hc3y6MtJwYTs
	5zNbkA9jdwn9nzQLe2kXIg8yHSBwQeR0f3ReuwTIcHRPI2xrs5yvb/mdc+C4Tbys++BqUeC9NBodr
	+m5p0hP0pVuoZdn9GAYsO0qwyeAuQs2eK4OIrU7xSLfwgpvHxuUYFXN1gERB6VCcEEInaTnO4Pq/Y
	mK3fm7M0OdD7xQM1D9RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVpC-00GSxq-RR; Fri, 27 Jan 2023 20:59:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLVp0-00GSvm-Rj; Fri, 27 Jan 2023 20:59:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 65A37B821E5;
	Fri, 27 Jan 2023 20:59:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07923C433D2;
	Fri, 27 Jan 2023 20:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674853179;
	bh=FbspLM+vVBO9mDTKwIH/H9Vo9+TcQEpyjeZ++JdvmYY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=sSzu4f/njpGW4l6cY9QQQ7I4+piHZz8sJkwXqdpbS3YQfcTmC5kegxJpCafTM3FmV
	 ElsP97xeiEoPaAV7Y2jZYCt5Xemu4l/ZgFkENHExJ4pZN5Uki2/TIQerUPqQ6nRrwp
	 DlDiZeXO2Itj1byAiuK1cuE/f78qlvAzNS/eobYg7bpyMKGqbcAg+eu0T9Dcx1/Fzy
	 qoN2VjU7wYYsRzDmmspI9r6VBa+v47tVprK9jznQcihlctRjdyAhdEl+7xKyIZqQmy
	 m54MCJK5XDQJdx0lvOXe+/YKvzUR7MvzhqYODSjKhWZifE/iKOlQOHROdRTW1ap15g
	 pm4dTV2VacJwA==
Message-ID: <1abf9cb3e1fb1f01976c903cd8723b0f.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221230000139.2846763-5-sean.anderson@seco.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com> <20221230000139.2846763-5-sean.anderson@seco.com>
Subject: Re: [PATCH v9 04/10] clk: Add Lynx 10G SerDes PLL driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>, Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sean Anderson <sean.anderson@seco.com>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@kernel.org>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Fri, 27 Jan 2023 12:59:36 -0800
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_125943_233307_75A83A9F 
X-CRM114-Status: GOOD (  36.87  )
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

Quoting Sean Anderson (2022-12-29 16:01:33)
> This adds support for the PLLs found in Lynx 10G "SerDes" devices found on
> various NXP QorIQ SoCs. There are two PLLs in each SerDes. This driver has
> been split from the main PHY driver to allow for better review, even though
> these PLLs are not present anywhere else besides the SerDes. An auxiliary
> device is not used as it offers no benefits over a function call (and there
> is no need to have a separate device).
> 
> The PLLs are modeled as clocks proper to let us take advantage of the
> existing clock infrastructure.

What advantage do we gain?

> I have not given the same treatment to the
> per-lane clocks because they need to be programmed in-concert with the rest
> of the lane settings. One tricky thing is that the VCO (PLL) rate exceeds
> 2^32 (maxing out at around 5GHz). This will be a problem on 32-bit
> platforms, since clock rates are stored as unsigned longs. To work around
> this, the pll clock rate is generally treated in units of kHz.

This looks like a disadvantage. Are we reporting the frequency in kHz to
the clk framework?

> 
> The PLLs are configured rather interestingly. Instead of the usual direct
> programming of the appropriate divisors, the input and output clock rates
> are selected directly. Generally, the only restriction is that the input
> and output must be integer multiples of each other. This suggests some kind
> of internal look-up table. The datasheets generally list out the supported
> combinations explicitly, and not all input/output combinations are
> documented. I'm not sure if this is due to lack of support, or due to an
> oversight. If this becomes an issue, then some combinations can be
> blacklisted (or whitelisted). This may also be necessary for other SoCs
> which have more stringent clock requirements.

I'm wondering if a clk provider should be created at all here. Who is
the consumer of the clk? The phy driver itself? Does the clk provided
need to interact with other clks in the system? Or is the clk tree
wholly self-contained?

Can the phy consumer configure the output frequency directly via
phy_configure() or when the phy is enabled? I'm thinking the phy driver
can call clk_set_rate() on the parent 'rfclk' before or after setting
the bits to control the output rate, and use clk_round_rate() to figure
out what input frequencies are supported for the output frequency
desired. This would avoid kHz overflowing 32-bits, and the big clk lock
getting blocked on some other clk in the system changing rates.

BTW, what sort of phy is this? Some networking device?

> 
> diff --git a/drivers/clk/clk-fsl-lynx-10g.c b/drivers/clk/clk-fsl-lynx-10g.c
> new file mode 100644
> index 000000000000..61f68b5ae675
> --- /dev/null
> +++ b/drivers/clk/clk-fsl-lynx-10g.c
> @@ -0,0 +1,509 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 Sean Anderson <sean.anderson@seco.com>
> + *
> + * This file contains the implementation for the PLLs found on Lynx 10G phys.
> + *
> + * XXX: The VCO rate of the PLLs can exceed ~4GHz, which is the maximum rate
> + * expressable in an unsigned long. To work around this, rates are specified in
> + * kHz. This is as if there was a division by 1000 in the PLL.
> + */
> +
> +#include <linux/clk.h>

Is this include used? If not, please remove.

> +#include <linux/clk-provider.h>
> +#include <linux/device.h>
> +#include <linux/bitfield.h>
> +#include <linux/math64.h>
> +#include <linux/phy/lynx-10g.h>
> +#include <linux/regmap.h>
> +#include <linux/slab.h>
> +#include <linux/units.h>
> +#include <dt-bindings/clock/fsl,lynx-10g.h>
> +
> +#define PLL_STRIDE     0x20
> +#define PLLa(a, off)   ((a) * PLL_STRIDE + (off))
> +#define PLLaRSTCTL(a)  PLLa(a, 0x00)
> +#define PLLaCR0(a)     PLLa(a, 0x04)
> +
> +#define PLLaRSTCTL_RSTREQ      BIT(31)
> +#define PLLaRSTCTL_RST_DONE    BIT(30)
> +#define PLLaRSTCTL_RST_ERR     BIT(29)
[...]
> +
> +static int lynx_clk_init(struct clk_hw_onecell_data *hw_data,
> +                        struct device *dev, struct regmap *regmap,
> +                        unsigned int index)
> +{
> +       const struct clk_hw *ex_dly_parents;
> +       struct clk_parent_data pll_parents[1] = { };
> +       struct clk_init_data pll_init = {
> +               .ops = &lynx_pll_clk_ops,
> +               .parent_data = pll_parents,
> +               .num_parents = 1,
> +               .flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT |

Why is the nocache flag used?

> +                        CLK_OPS_PARENT_ENABLE,
> +       };
> +       struct clk_init_data ex_dly_init = {
> +               .ops = &lynx_ex_dly_clk_ops,
> +               .parent_hws = &ex_dly_parents,
> +               .num_parents = 1,
> +       };
> +       struct lynx_clk *clk;
> +       int ret;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
