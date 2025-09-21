Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 272BFCAC5A7
	for <linux-phy@archiver.kernel.org>; Sun, 21 Sep 2025 15:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUYZbsKgUyabKUTrxZPlfXE7VxqOjUcwXFjXPRuRKTU=; b=qr0v+N4ADxeUPD
	WgQw6tvNSEN7DcghxjGXjWOxF6004KPQj5Z5gSQ2zeziVx+qGcYMpg4UX7em3jPMoFtv+EZW4yJQR
	JcqmmmoH0Z0ER05u6BM9uYVNlnqDkHmERx06EIqiEk3H4xJ3exAlV3JvY0WGeeSy+jWgUu/DK9tBP
	8FnRzkG6HdW866nZVjXonufywlOmdt20+GIOFEHg02o7KXVTIvIJ8vgGiSVmbzk39ic65VlwkyuB9
	esmBKNElk2relVFf2dlzXw86B8wufyRSw1Ek+ae9CO6dnzGHEwmQdilXJ6CAGRptihy7KnhTEO05c
	AdJS1aFOAqepa0C2Y2Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0MEn-00000007foS-2xBl;
	Sun, 21 Sep 2025 15:44:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0MEk-00000007fni-3gEJ
	for linux-phy@lists.infradead.org;
	Sun, 21 Sep 2025 15:44:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5EB95448AD;
	Sun, 21 Sep 2025 15:44:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE7F3C4CEE7;
	Sun, 21 Sep 2025 15:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758469464;
	bh=C1EaCvuVHrkdUrq3wKp0PuXy2eOtAml8CjiVMmRdIkk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=FXWPPTjH28Ud0FkPr5rvQD1PJVhm79nTIWWY4DlC3oYriKx+1vJRr9t+1DbdXYeRR
	 fzAJhzMXXoCFqft8J+T56VMyER6tJ+fIgg6nUKP41FVC/8uJfHFJfYZKqTW8KNUqKJ
	 YtCk1M2YCNyIDNP4ZooJ2kKo3wFmYWh/UHCBG6sA/XeVELkttmmp+wV3VifWl5WQr7
	 DvDyGHWvlv9yUec3aFEeTAyzmh/QCT+MgchLDzkewgQHaeKwwaWTEIVmXhQzetkS+r
	 EGg0nQ3lnUdBn+ajZTrkzBmVPLuMo49alSyZ8wqIO3Yu+LbKlPSANr4zgtlCIHtFz3
	 kLW5ZzwUhjAWw==
MIME-Version: 1.0
In-Reply-To: <20250720-t210b01-v2-14-9cb209f1edfc@gmail.com>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com> <20250720-t210b01-v2-14-9cb209f1edfc@gmail.com>
Subject: Re: [PATCH v2 14/17] clk: tegra: Add Tegra210B01 support
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, Aaron Kling <webgeek1234@gmail.com>
To: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, JC Kuo <jckuo@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>, Mathias Nyman <mathias.nyman@intel.com>, Michael Turquette <mturquette@baylibre.com>, Nagarjuna Kristam <nkristam@nvidia.com>, Peter De Schrijver <pdeschrijver@nvidia.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, Rafael J. Wysocki <rafael@kernel.org>, Rob Herring <robh@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>, Zhang Rui <rui.zhang@intel.com>, webgeek1234@gmail.com
Date: Sun, 21 Sep 2025 08:44:22 -0700
Message-ID: <175846946248.4354.8194445643901468375@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_084426_994131_652C1103 
X-CRM114-Status: GOOD (  22.77  )
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

Quoting Aaron Kling via B4 Relay (2025-07-20 19:15:08)
> diff --git a/drivers/clk/tegra/clk-tegra210b01.c b/drivers/clk/tegra/clk-tegra210b01.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..b6228798871836d654b8c8155ddd345d92ba7b30
> --- /dev/null
> +++ b/drivers/clk/tegra/clk-tegra210b01.c
> @@ -0,0 +1,3758 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2017-2020 NVIDIA CORPORATION.  All rights reserved.
> + */
> +
> +#include <linux/io.h>
> +#include <linux/clk.h>

Is this include used? A clk provider shouldn't be a clk consumer as well.

> +#include <linux/clk-provider.h>
> +#include <linux/clkdev.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/syscore_ops.h>
> +#include <linux/delay.h>
> +#include <linux/export.h>

Is this include used?

> +#include <linux/clk/tegra.h>
> +#include <dt-bindings/clock/tegra210-car.h>
> +#include <dt-bindings/reset/tegra210-car.h>
> +#include <soc/tegra/pmc.h>
> +
> +#include "clk.h"
> +#include "clk-dfll.h"
> +#include "clk-id.h"
> +
> +/*
> + * TEGRA210_CAR_BANK_COUNT: the number of peripheral clock register
> + * banks present in the Tegra210 CAR IP block.  The banks are
> + * identified by single letters, e.g.: L, H, U, V, W, X, Y.  See
> + * periph_regs[] in drivers/clk/tegra/clk.c
> + */
> +#define TEGRA210_CAR_BANK_COUNT                        7
> +
> +#define CLK_SOURCE_CSITE 0x1d4

Please tab out these defines so it is more easily readable instead of
having one space between the define and the value.

> +#define CLK_SOURCE_EMC 0x19c
> +#define CLK_SOURCE_SOR1 0x410
> +#define CLK_SOURCE_SOR0 0x414
> +#define CLK_SOURCE_LA 0x1f8
> +#define CLK_SOURCE_SDMMC2 0x154
> +#define CLK_SOURCE_SDMMC4 0x164
> +#define CLK_SOURCE_EMC_DLL 0x664
> +
> +#define PLLE_SS_CTRL 0x68
> +
> +#define PLLC_BASE 0x80
> +#define PLLC_OUT 0x84
> +#define PLLC_MISC0 0x88
> +#define PLLC_MISC1 0x8c
> +#define PLLC_MISC2 0x5d0
> +#define PLLC_MISC3 0x5d4
> +
> +#define PLLC2_BASE 0x4e8
> +#define PLLC2_MISC0 0x4ec
> +#define PLLC2_MISC1 0x4f0
> +#define PLLC2_MISC2 0x4f4
> +#define PLLC2_MISC3 0x4f8
[...]
> +       { .pdiv =   4, .hw_val = 2 },
> +       { .pdiv =   8, .hw_val = 3 },
> +       { .pdiv =  16, .hw_val = 4 },
> +       { .pdiv =  32, .hw_val = 5 },
> +       { .pdiv =  64, .hw_val = 6 },
> +       { .pdiv = 128, .hw_val = 7 },
> +       { .pdiv =   0, },
> +};
> +
> +static u32 pll_expo_p_to_pdiv(u32 p, u32 *pdiv)
> +{
> +       if (p) {
> +               u32 i = fls(p);
> +
> +               if (i == ffs(p))
> +                       i--;
> +
> +               if (i <= PLL_EXPO_PDIV_MAX) {
> +                       if (pdiv)
> +                               *pdiv = i;
> +                       return 1 << i;
> +               }
> +       }
> +       return -EINVAL;
> +}
> +
> +static struct tegra_clk_pll_freq_table pll_x_freq_table[] = {

Can this be const?

> +       /* 1 GHz */
> +       { 38400000, 1000000000, 104, 2, 2, 0 }, /* actual: 998.4 MHz */
> +       {        0,          0,   0, 0, 0, 0 },
> +};
> +
> +static struct tegra_clk_pll_params pll_x_params = {

Can this be const?

> +       .input_min = 13500000,
> +       .input_max = 800000000,
> +       .cf_min = 13500000,
> +       .cf_max = 38400000,
> +       .vco_min = 1300000000,
> +       .vco_max = 3000000000UL,
> +       .base_reg = PLLX_BASE,
> +       .misc_reg = PLLX_MISC0,
> +       .lock_mask = PLL_BASE_LOCK,
> +       .lock_enable_bit_idx = PLL_MISC_LOCK_ENABLE,
> +       .lock_delay = 300,
> +       .ext_misc_reg[0] = PLLX_MISC0,
> +       .ext_misc_reg[1] = PLLX_MISC1,
> +       .ext_misc_reg[2] = PLLX_MISC2,
> +       .ext_misc_reg[3] = PLLX_MISC3,
> +       .ext_misc_reg[4] = PLLX_MISC4,
> +       .ext_misc_reg[5] = PLLX_MISC5,
> +       .iddq_reg = PLLX_MISC3,
> +       .iddq_bit_idx = PLLXP_IDDQ_BIT,
> +       .max_p = PLL_QLIN_PDIV_MAX,
> +       .mdiv_default = 2,
> +       .dyn_ramp_reg = PLLX_MISC2,
> +       .stepa_shift = 16,
> +       .stepb_shift = 24,
> +       .round_p_to_pdiv = pll_qlin_p_to_pdiv,
> +       .pdiv_tohw = pll_qlin_pdiv_to_hw,
> +       .div_nmp = &pllx_nmp,
> +       .freq_table = pll_x_freq_table,
> +       .flags = TEGRA_PLL_USE_LOCK | TEGRA_PLL_HAS_LOCK_ENABLE,
> +       .dyn_ramp = tegra210_pllx_dyn_ramp,
> +       .set_defaults = tegra210_pllx_set_defaults,
> +       .calc_rate = tegra210_pll_fixed_mdiv_cfg,
> +};
> +
> +static struct div_nmp pllc_nmp = {
> +       .divm_shift = 0,
> +       .divm_width = 8,
> +       .divn_shift = 10,
> +       .divn_width = 8,
> +       .divp_shift = 20,
> +       .divp_width = 5,
> +};
> +
> +static struct tegra_clk_pll_freq_table pll_cx_freq_table[] = {

Can this be const?

> +       { 38400000, 510000000, 53, 2, 2, 0 }, /* actual: 508.8 MHz */
> +       {        0,         0,  0, 0, 0, 0 },
> +};
> +
> +static struct tegra_clk_pll_params pll_c_params = {

I think you get the idea.

> +       .input_min = 19200000,
> +       .input_max = 700000000,
> +       .cf_min = 19200000,
> +       .cf_max = 38400000,
> +       .vco_min = 600000000,
> +       .vco_max = 1200000000,
> +       .base_reg = PLLC_BASE,
> +       .misc_reg = PLLC_MISC0,
> +       .lock_mask = PLL_BASE_LOCK,
> +       .lock_delay = 300,
> +       .iddq_reg = PLLC_MISC1,
> +       .iddq_bit_idx = PLLCX_IDDQ_BIT,
> +       .reset_reg = PLLC_MISC0,
> +       .reset_bit_idx = PLLCX_RESET_BIT,
> +       .max_p = PLL_QLIN_PDIV_MAX,
> +       .ext_misc_reg[0] = PLLC_MISC0,
> +       .ext_misc_reg[1] = PLLC_MISC1,
> +       .ext_misc_reg[2] = PLLC_MISC2,
[...]
> +       TEGRA_CLK_PERIPH(29, 7, 9, 0, 8, 1, TEGRA_DIVIDER_ROUND_UP, 76, 0, NULL, NULL);
> +
> +static __init void tegra210_periph_clk_init(struct device_node *np,
> +                                           void __iomem *clk_base,
> +                                           void __iomem *pmc_base)
> +{
> +       struct clk *clk;
> +       unsigned int i;
> +
> +       /* xusb_ss_div2 */
> +       clk = clk_register_fixed_factor(NULL, "xusb_ss_div2", "xusb_ss_src", 0,
> +                                       1, 2);
> +       clks[TEGRA210_CLK_XUSB_SS_DIV2] = clk;
> +
> +       clk = tegra_clk_register_periph_fixed("sor_safe", "pll_p", 0, clk_base,
> +                                             1, 17, 222);
> +       clks[TEGRA210_CLK_SOR_SAFE] = clk;
> +
> +       clk = tegra_clk_register_periph_fixed("dpaux", "sor_safe", 0, clk_base,
> +                                             1, 17, 181);
> +       clks[TEGRA210_CLK_DPAUX] = clk;
> +
> +       clk = tegra_clk_register_periph_fixed("dpaux1", "sor_safe", 0, clk_base,
> +                                             1, 17, 207);
> +       clks[TEGRA210_CLK_DPAUX1] = clk;
> +
> +       /* pll_d_dsi_out */
> +       clk = clk_register_gate(NULL, "pll_d_dsi_out", "pll_d_out0", 0,
> +                               clk_base + PLLD_MISC0, 21, 0, &pll_d_lock);
> +       clks[TEGRA210_CLK_PLL_D_DSI_OUT] = clk;
> +
> +       /* dsia */
> +       clk = tegra_clk_register_periph_gate("dsia", "pll_d_dsi_out", 0,
> +                                            clk_base, 0, 48,
> +                                            periph_clk_enb_refcnt);
> +       clks[TEGRA210_CLK_DSIA] = clk;
> +
> +       /* dsib */
> +       clk = tegra_clk_register_periph_gate("dsib", "pll_d_dsi_out", 0,
> +                                            clk_base, 0, 82,
> +                                            periph_clk_enb_refcnt);
> +       clks[TEGRA210_CLK_DSIB] = clk;
> +
> +       /* csi_tpg */
> +       clk = clk_register_gate(NULL, "csi_tpg", "pll_d",
> +                               CLK_SET_RATE_PARENT, clk_base + PLLD_BASE,
> +                               23, 0, &pll_d_lock);
> +       clk_register_clkdev(clk, "csi_tpg", NULL);

Are these clkdev structures used? Ideally we don't use clkdev because DT
bindings are complete.

> +       clks[TEGRA210_CLK_CSI_TPG] = clk;
> +
> +       /* la */
> +       clk = tegra_clk_register_periph("la", la_parents,
> +                       ARRAY_SIZE(la_parents), &tegra210_la, clk_base,
> +                       CLK_SOURCE_LA, 0);
> +       clks[TEGRA210_CLK_LA] = clk;
> +
> +       /* cml0 */
> +       clk = clk_register_gate(NULL, "cml0", "pll_e", 0, clk_base + PLLE_AUX,
> +                               0, 0, &pll_e_lock);
> +       clk_register_clkdev(clk, "cml0", NULL);
> +       clks[TEGRA210_CLK_CML0] = clk;
> +
> +       /* cml1 */
> +       clk = clk_register_gate(NULL, "cml1", "pll_e", 0, clk_base + PLLE_AUX,
> +                               1, 0, &pll_e_lock);
> +       clk_register_clkdev(clk, "cml1", NULL);
> +       clks[TEGRA210_CLK_CML1] = clk;
> +
> +       clk = tegra_clk_register_super_clk("aclk", aclk_parents,
> +                               ARRAY_SIZE(aclk_parents), 0, clk_base + 0x6e0,
> +                               0, NULL);
> +       clks[TEGRA210_CLK_ACLK] = clk;
> +
> +       clk = tegra_clk_register_sdmmc_mux_div("sdmmc2", clk_base,
> +                                           CLK_SOURCE_SDMMC2, 9,
> +                                           TEGRA_DIVIDER_ROUND_UP, 0, NULL);
> +       clks[TEGRA210_CLK_SDMMC2] = clk;
> +
> +       clk = tegra_clk_register_sdmmc_mux_div("sdmmc4", clk_base,
> +                                           CLK_SOURCE_SDMMC4, 15,
> +                                           TEGRA_DIVIDER_ROUND_UP, 0, NULL);
> +       clks[TEGRA210_CLK_SDMMC4] = clk;
> +
> +       for (i = 0; i < ARRAY_SIZE(tegra210_periph); i++) {
> +               struct tegra_periph_init_data *init = &tegra210_periph[i];
> +               struct clk **clkp;
> +
> +               clkp = tegra_lookup_dt_id(init->clk_id, tegra210_clks);
> +               if (!clkp) {
> +                       pr_warn("clock %u not found\n", init->clk_id);
> +                       continue;
> +               }
> +
> +               clk = tegra_clk_register_periph_data(clk_base, init);
> +               *clkp = clk;
> +       }
> +
> +       tegra_periph_clk_init(clk_base, pmc_base, tegra210_clks, &pll_p_params);
> +
> +       /* mc */
> +       tegra210_clk_register_mc("mc", "emc");
> +}
> +
> +static void __init tegra210_pll_init(void __iomem *clk_base,
> +                                    void __iomem *pmc)
> +{
> +       struct clk *clk;
> +
> +       /* PLL_RE reference clock must be selected by boot-loader */
> +       pll_re_use_utmipll = readl_relaxed(clk_base + PLLRE_BASE) &
> +               PLLRE_BASE_CLKIN_SEL;
> +
> +       /* PLLC */
> +       clk = tegra_clk_register_pllc_tegra210("pll_c", "pll_ref", clk_base,
> +                       pmc, 0, &pll_c_params, NULL);
> +       if (!WARN_ON(IS_ERR(clk)))
> +               clk_register_clkdev(clk, "pll_c", NULL);
> +       clks[TEGRA210_CLK_PLL_C] = clk;
> +
> +       /* PLLC_OUT1 */
> +       clk = tegra_clk_register_divider("pll_c_out1_div", "pll_c",
> +                       clk_base + PLLC_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
> +                       8, 8, 1, NULL);
> +       clk = tegra_clk_register_pll_out("pll_c_out1", "pll_c_out1_div",
> +                               clk_base + PLLC_OUT, 1, 0,
> +                               CLK_SET_RATE_PARENT, 0, NULL);
> +       clk_register_clkdev(clk, "pll_c_out1", NULL);
> +       clks[TEGRA210_CLK_PLL_C_OUT1] = clk;
> +
> +       /* PLLC_UD */
> +       clk = clk_register_fixed_factor(NULL, "pll_c_ud", "pll_c",
> +                                       CLK_SET_RATE_PARENT, 1, 1);
> +       clk_register_clkdev(clk, "pll_c_ud", NULL);
> +       clks[TEGRA210_CLK_PLL_C_UD] = clk;
> +
> +       /* PLLC2 */
> +       clk = tegra_clk_register_pllc_tegra210("pll_c2", "pll_ref", clk_base,
> +                            pmc, 0, &pll_c2_params, NULL);
> +       clk_register_clkdev(clk, "pll_c2", NULL);
> +       clks[TEGRA210_CLK_PLL_C2] = clk;
> +
> +       /* PLLC3 */
> +       clk = tegra_clk_register_pllc_tegra210("pll_c3", "pll_ref", clk_base,
> +                            pmc, 0, &pll_c3_params, NULL);
> +       clk_register_clkdev(clk, "pll_c3", NULL);
> +       clks[TEGRA210_CLK_PLL_C3] = clk;
> +
> +       /* PLLU_VCO */
> +       if (!tegra210_init_pllu()) {
> +               clk = clk_register_fixed_rate(NULL, "pll_u_vco", "pll_ref", 0,
> +                                             480*1000*1000);
> +               clk_register_clkdev(clk, "pll_u_vco", NULL);
> +               clks[TEGRA210_CLK_PLL_U] = clk;
> +
> +               /* PLLU_OUT */
> +               clk = clk_register_fixed_factor(NULL, "pll_u_out", "pll_u_vco",
> +                                               CLK_SET_RATE_PARENT, 1, 2);
> +               clk_register_clkdev(clk, "pll_u_out", NULL);
> +               clks[TEGRA210_CLK_PLL_U_OUT] = clk;
> +
> +               /* UTMIPLL_60M */
> +               clk = clk_register_fixed_rate(NULL, "utmipll_60M", "pll_ref", 0,
> +                                             60*1000*1000);
> +               clk_register_clkdev(clk, "utmipll_60M", NULL);
> +               clks[TEGRA210_CLK_UTMIPLL_60M] = clk;
> +       }
> +
> +       /* PLLU_OUT1 */
> +       clk = tegra_clk_register_divider("pll_u_out1_div", "pll_u_out",
> +                               clk_base + PLLU_OUTA, 0,
> +                               TEGRA_DIVIDER_ROUND_UP,
> +                               8, 8, 1, &pll_u_lock);
> +       clk = tegra_clk_register_pll_out("pll_u_out1", "pll_u_out1_div",
> +                               clk_base + PLLU_OUTA, 1, 0,
> +                               CLK_SET_RATE_PARENT, 0, &pll_u_lock);
> +       clk_register_clkdev(clk, "pll_u_out1", NULL);
> +       clks[TEGRA210_CLK_PLL_U_OUT1] = clk;
> +
> +       /* PLLU_OUT2 */
> +       clk = tegra_clk_register_divider("pll_u_out2_div", "pll_u_out",
> +                               clk_base + PLLU_OUTA, 0,
> +                               TEGRA_DIVIDER_ROUND_UP,
> +                               24, 8, 1, &pll_u_lock);
> +       clk = tegra_clk_register_pll_out("pll_u_out2", "pll_u_out2_div",
> +                               clk_base + PLLU_OUTA, 17, 16,
> +                               CLK_SET_RATE_PARENT, 0, &pll_u_lock);
> +       clk_register_clkdev(clk, "pll_u_out2", NULL);
> +       clks[TEGRA210_CLK_PLL_U_OUT2] = clk;
> +
> +       /* PLLU_480M */
> +       clk = clk_register_gate(NULL, "pll_u_480M", "pll_u_vco",
> +                               CLK_SET_RATE_PARENT, clk_base + PLLU_BASE,
> +                               22, 0, &pll_u_lock);
> +       clk_register_clkdev(clk, "pll_u_480M", NULL);
> +       clks[TEGRA210_CLK_PLL_U_480M] = clk;
> +
> +       /* PLLU_60M */
> +       clk = clk_register_gate(NULL, "pll_u_60M", "pll_u_out2",
> +                               CLK_SET_RATE_PARENT, clk_base + PLLU_BASE,
> +                               23, 0, &pll_u_lock);
> +       clk_register_clkdev(clk, "pll_u_60M", NULL);
> +       clks[TEGRA210_CLK_PLL_U_60M] = clk;
> +
> +       /* PLLU_48M */
> +       clk = clk_register_gate(NULL, "pll_u_48M", "pll_u_out1",
> +                               CLK_SET_RATE_PARENT, clk_base + PLLU_BASE,
> +                               25, 0, &pll_u_lock);
> +       clk_register_clkdev(clk, "pll_u_48M", NULL);
> +       clks[TEGRA210_CLK_PLL_U_48M] = clk;
> +
> +       /* PLLD */
> +       clk = tegra_clk_register_pll("pll_d", "pll_ref", clk_base, pmc, 0,
> +                           &pll_d_params, &pll_d_lock);
> +       clk_register_clkdev(clk, "pll_d", NULL);
> +       clks[TEGRA210_CLK_PLL_D] = clk;
> +
> +       /* PLLD_OUT0 */
> +       clk = clk_register_fixed_factor(NULL, "pll_d_out0", "pll_d",
> +                                       CLK_SET_RATE_PARENT, 1, 2);
> +       clk_register_clkdev(clk, "pll_d_out0", NULL);
> +       clks[TEGRA210_CLK_PLL_D_OUT0] = clk;
> +
> +       /* PLLRE */
> +       if (pll_re_use_utmipll) {
> +               clk = tegra_clk_register_pllre_tegra210(
> +                       "pll_re_vco", "utmipll_60M", clk_base, pmc, 0,
> +                       &pll_re_vco_params, &pll_re_lock, 60*1000*1000);
> +       } else {
> +               clk = tegra_clk_register_pllre_tegra210(
> +                       "pll_re_vco", "pll_ref", clk_base, pmc, 0,
> +                       &pll_re_vco_params, &pll_re_lock, pll_ref_freq);
> +       }
> +       clk_register_clkdev(clk, "pll_re_vco", NULL);
> +       clks[TEGRA210_CLK_PLL_RE_VCO] = clk;
> +
> +       clk = clk_register_divider_table(NULL, "pll_re_out", "pll_re_vco", 0,
> +                                        clk_base + PLLRE_BASE, 16, 5, 0,
> +                                        pll_vco_post_div_table, &pll_re_lock);
> +       clk_register_clkdev(clk, "pll_re_out", NULL);
> +       clks[TEGRA210_CLK_PLL_RE_OUT] = clk;
> +
> +       clk = tegra_clk_register_divider("pll_re_out1_div", "pll_re_vco",
> +                                        clk_base + PLLRE_OUT1, 0,
> +                                        TEGRA_DIVIDER_ROUND_UP,
> +                                        8, 8, 1, NULL);
> +       clk = tegra_clk_register_pll_out("pll_re_out1", "pll_re_out1_div",
> +                                        clk_base + PLLRE_OUT1, 1, 0,
> +                                        CLK_SET_RATE_PARENT, 0, NULL);
> +       clks[TEGRA210_CLK_PLL_RE_OUT1] = clk;
> +
> +       /* PLLE */
> +       clk = tegra_clk_register_plle_tegra210("pll_e", "pll_ref",
> +                                     clk_base, 0, &pll_e_params, &pll_e_lock);
> +       clk_register_clkdev(clk, "pll_e", NULL);
> +       clks[TEGRA210_CLK_PLL_E] = clk;
> +
> +       /* PLLC4 */
> +       clk = tegra_clk_register_pllre_tegra210("pll_c4_vco", "pll_ref",
> +               clk_base, pmc, 0, &pll_c4_vco_params, NULL, pll_ref_freq);
> +       clk_register_clkdev(clk, "pll_c4_vco", NULL);
> +       clks[TEGRA210_CLK_PLL_C4] = clk;
> +
> +       /* PLLC4_OUT1 */
> +       clk = clk_register_fixed_factor(NULL, "pll_c4_out1", "pll_c4_vco",
> +                                       CLK_SET_RATE_PARENT, 1, 3);
> +       clk_register_clkdev(clk, "pll_c4_out1", NULL);
> +       clks[TEGRA210_CLK_PLL_C4_OUT1] = clk;
> +
> +       /* PLLC4_OUT2 */
> +       clk = clk_register_fixed_factor(NULL, "pll_c4_out2", "pll_c4_vco",
> +                                       CLK_SET_RATE_PARENT, 1, 5);
> +       clk_register_clkdev(clk, "pll_c4_out2", NULL);
> +       clks[TEGRA210_CLK_PLL_C4_OUT2] = clk;
> +
> +       /* PLLC4_OUT3 */
> +       clk = tegra_clk_register_divider("pll_c4_out3_div", "pll_c4_out0",
> +                       clk_base + PLLC4_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
> +                       8, 8, 1, NULL);
> +       clk = tegra_clk_register_pll_out("pll_c4_out3", "pll_c4_out3_div",
> +                               clk_base + PLLC4_OUT, 1, 0,
> +                               CLK_SET_RATE_PARENT, 0, NULL);
> +       clk_register_clkdev(clk, "pll_c4_out3", NULL);
> +       clks[TEGRA210_CLK_PLL_C4_OUT3] = clk;
> +
> +       /* PLLDP */
> +       clk = tegra_clk_register_pllss_tegra210("pll_dp", "pll_ref", clk_base,
> +                                       0, &pll_dp_params, NULL);
> +       clk_register_clkdev(clk, "pll_dp", NULL);
> +       clks[TEGRA210_CLK_PLL_DP] = clk;
> +
> +       /* PLLD2 */
> +       clk = tegra_clk_register_pllss_tegra210("pll_d2", "pll_ref", clk_base,
> +                                       0, &pll_d2_params, NULL);
> +       clk_register_clkdev(clk, "pll_d2", NULL);
> +       clks[TEGRA210_CLK_PLL_D2] = clk;
> +
> +       /* PLLD2_OUT0 */
> +       clk = clk_register_fixed_factor(NULL, "pll_d2_out0", "pll_d2",
> +                                       CLK_SET_RATE_PARENT, 1, 1);
> +       clk_register_clkdev(clk, "pll_d2_out0", NULL);
> +       clks[TEGRA210_CLK_PLL_D2_OUT0] = clk;
> +
> +       /* PLLP_OUT2 */
> +       clk = clk_register_fixed_factor(NULL, "pll_p_out2", "pll_p",
> +                                       CLK_SET_RATE_PARENT, 1, 2);
> +       clk_register_clkdev(clk, "pll_p_out2", NULL);
> +       clks[TEGRA210_CLK_PLL_P_OUT2] = clk;
> +
> +       /* PLLP_UD */
> +       clk = clk_register_fixed_factor(NULL, "pll_p_ud", "pll_p",
> +                                       CLK_SET_RATE_PARENT, 1, 1);
> +       clk_register_clkdev(clk, "pll_pud", NULL);
> +       clks[TEGRA210_CLK_PLL_P_UD] = clk;
> +
> +       /* PLLP_UPHY_OUT */
> +       clk = tegra_clk_register_divider("pll_p_uphy_div", "pll_p_out_xusb",
> +               clk_base + PEX_SATA_USB_RX_BYP, 0,
> +               TEGRA_DIVIDER_ROUND_UP, 0, 8, 1, &pll_p_uphy_lock);
> +       clk = clk_register_gate(NULL, "pll_p_uphy_out", "pll_p_uphy_div",
> +               CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
> +               clk_base + PEX_SATA_USB_RX_BYP, 8, 0, &pll_p_uphy_lock);
> +       clk_register_clkdev(clk, "pll_p_uphy_out", NULL);
> +       clks[TEGRA210_CLK_PLL_P_UPHY_OUT] = clk;
> +}
> +
> +/* Tegra210 CPU clock and reset control functions */
> +static void tegra210_wait_cpu_in_reset(u32 cpu)
> +{
> +       unsigned int reg;
> +
> +       do {
> +               reg = readl(clk_base + CLK_RST_CONTROLLER_CPU_CMPLX_STATUS);
> +               cpu_relax();
> +       } while (!(reg & (1 << cpu)));  /* check CPU been reset or not */
> +}
> +
> +static void tegra210_disable_cpu_clock(u32 cpu)
> +{
> +       /* flow controller would take care in the power sequence. */
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +#define car_readl(_base, _off) readl_relaxed(clk_base + (_base) + ((_off) * 4))
> +#define car_writel(_val, _base, _off) \
> +               writel_relaxed(_val, clk_base + (_base) + ((_off) * 4))
> +
> +static u32 spare_reg_ctx, misc_clk_enb_ctx, clk_msk_arm_ctx;
> +static u32 cpu_softrst_ctx[3];
> +
> +static int tegra210_clk_suspend(void)
> +{
> +       unsigned int i;
> +
> +       clk_save_context();
> +
> +       /*
> +        * Save the bootloader configured clock registers SPARE_REG0,
> +        * MISC_CLK_ENB, CLK_MASK_ARM, CPU_SOFTRST_CTRL.
> +        */
> +       spare_reg_ctx = readl_relaxed(clk_base + SPARE_REG0);
> +       misc_clk_enb_ctx = readl_relaxed(clk_base + MISC_CLK_ENB);
> +       clk_msk_arm_ctx = readl_relaxed(clk_base + CLK_MASK_ARM);
> +
> +       for (i = 0; i < ARRAY_SIZE(cpu_softrst_ctx); i++)
> +               cpu_softrst_ctx[i] = car_readl(CPU_SOFTRST_CTRL, i);
> +
> +       tegra_clk_periph_suspend();
> +       return 0;
> +}
> +
> +static void tegra210_clk_resume(void)
> +{
> +       unsigned int i;
> +
> +       tegra_clk_osc_resume(clk_base);
> +
> +       /*
> +        * Restore the bootloader configured clock registers SPARE_REG0,
> +        * MISC_CLK_ENB, CLK_MASK_ARM, CPU_SOFTRST_CTRL from saved context.
> +        */
> +       writel_relaxed(spare_reg_ctx, clk_base + SPARE_REG0);
> +       writel_relaxed(misc_clk_enb_ctx, clk_base + MISC_CLK_ENB);
> +       writel_relaxed(clk_msk_arm_ctx, clk_base + CLK_MASK_ARM);
> +
> +       for (i = 0; i < ARRAY_SIZE(cpu_softrst_ctx); i++)
> +               car_writel(cpu_softrst_ctx[i], CPU_SOFTRST_CTRL, i);
> +
> +       /*
> +        * Tegra clock programming sequence recommends peripheral clock to
> +        * be enabled prior to changing its clock source and divider to
> +        * prevent glitchless frequency switch.
> +        * So, enable all peripheral clocks before restoring their source
> +        * and dividers.
> +        */
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_L, clk_base + CLK_OUT_ENB_L);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_H, clk_base + CLK_OUT_ENB_H);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_U, clk_base + CLK_OUT_ENB_U);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_V, clk_base + CLK_OUT_ENB_V);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_W, clk_base + CLK_OUT_ENB_W);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_X, clk_base + CLK_OUT_ENB_X);
> +       writel_relaxed(TEGRA210_CLK_ENB_VLD_MSK_Y, clk_base + CLK_OUT_ENB_Y);
> +
> +       /* wait for all writes to happen to have all the clocks enabled */
> +       fence_udelay(2, clk_base);
> +
> +       /* restore PLLs and all peripheral clock rates */
> +       tegra210_init_pllu();
> +       clk_restore_context();
> +
> +       /* restore saved context of peripheral clocks and reset state */
> +       tegra_clk_periph_resume();
> +}
> +
> +static void tegra210_cpu_clock_suspend(void)
> +{
> +       /* switch coresite to clk_m, save off original source */
> +       tegra210_cpu_clk_sctx.clk_csite_src =
> +                               readl(clk_base + CLK_SOURCE_CSITE);
> +       writel(3 << 30, clk_base + CLK_SOURCE_CSITE);
> +}
> +
> +static void tegra210_cpu_clock_resume(void)
> +{
> +       writel(tegra210_cpu_clk_sctx.clk_csite_src,
> +                               clk_base + CLK_SOURCE_CSITE);
> +}
> +#endif
> +
> +static struct syscore_ops tegra_clk_syscore_ops = {
> +#ifdef CONFIG_PM_SLEEP
> +       .suspend = tegra210_clk_suspend,
> +       .resume = tegra210_clk_resume,
> +#endif
> +};
> +
> +static struct tegra_cpu_car_ops tegra210_cpu_car_ops = {
> +       .wait_for_reset = tegra210_wait_cpu_in_reset,
> +       .disable_clock  = tegra210_disable_cpu_clock,
> +#ifdef CONFIG_PM_SLEEP
> +       .suspend        = tegra210_cpu_clock_suspend,
> +       .resume         = tegra210_cpu_clock_resume,
> +#endif
> +};
> +
> +static const struct of_device_id pmc_match[] __initconst = {
> +       { .compatible = "nvidia,tegra210b01-pmc" },
> +       { },
> +};
> +
> +static struct tegra_clk_init_table t210b01_init_table[] __initdata = {
> +       { TEGRA210_CLK_PLL_A, TEGRA210_CLK_CLK_MAX, 564480000, 1,
> +               TEGRA_TABLE_RATE_CHANGE_OVERCLOCK },
> +       { TEGRA210_CLK_PLL_RE_VCO, TEGRA210_CLK_CLK_MAX, 0, 1,
> +               TEGRA_TABLE_RATE_CHANGE_OVERCLOCK },
> +       { TEGRA210_CLK_PLL_DP, TEGRA210_CLK_CLK_MAX, 270000000, 0,
> +               TEGRA_TABLE_RATE_CHANGE_OVERCLOCK },
> +       { TEGRA210_CLK_PLL_P_UPHY_OUT, TEGRA210_CLK_CLK_MAX, 102000000, 1 },
> +       { TEGRA210_CLK_SDMMC_LEGACY, TEGRA210_CLK_PLL_P, 12000000, 0 },
> +       { TEGRA210_CLK_I2CSLOW, TEGRA210_CLK_CLK_32K, 32000, 0 },
> +       { TEGRA210_CLK_SPDIF_IN, TEGRA210_CLK_CLK_MAX, 136000000, 0 },
> +       { TEGRA210_CLK_USB2_HSIC_TRK, TEGRA210_CLK_CLK_MAX, 9600000, 0 },
> +       /* This MUST be the last entry. */
> +       { TEGRA210_CLK_CLK_MAX, TEGRA210_CLK_CLK_MAX, 0, 0 },
> +};
> +
> +static struct tegra_clk_init_table init_table[] __initdata = {
> +       { TEGRA210_CLK_UARTA, TEGRA210_CLK_PLL_P, 408000000, 0 },
> +       { TEGRA210_CLK_UARTB, TEGRA210_CLK_PLL_P, 408000000, 0 },
> +       { TEGRA210_CLK_UARTC, TEGRA210_CLK_PLL_P, 408000000, 0 },
> +       { TEGRA210_CLK_UARTD, TEGRA210_CLK_PLL_P, 408000000, 0 },
> +       { TEGRA210_CLK_PLL_A_OUT0, TEGRA210_CLK_CLK_MAX, 11289600, 0 },
> +       { TEGRA210_CLK_I2S0, TEGRA210_CLK_PLL_A_OUT0, 11289600, 0 },
> +       { TEGRA210_CLK_I2S1, TEGRA210_CLK_PLL_A_OUT0, 11289600, 0 },
> +       { TEGRA210_CLK_I2S2, TEGRA210_CLK_PLL_A_OUT0, 11289600, 0 },
> +       { TEGRA210_CLK_I2S3, TEGRA210_CLK_PLL_A_OUT0, 11289600, 0 },
> +       { TEGRA210_CLK_I2S4, TEGRA210_CLK_PLL_A_OUT0, 11289600, 0 },
> +       { TEGRA210_CLK_HOST1X, TEGRA210_CLK_PLL_P, 136000000, 1 },
> +       { TEGRA210_CLK_SCLK_MUX, TEGRA210_CLK_PLL_P, 0, 1 },
> +       { TEGRA210_CLK_SCLK, TEGRA210_CLK_CLK_MAX, 102000000, 0 },
> +       { TEGRA210_CLK_DFLL_SOC, TEGRA210_CLK_PLL_P, 51000000, 1 },
> +       { TEGRA210_CLK_DFLL_REF, TEGRA210_CLK_PLL_P, 51000000, 1 },
> +       { TEGRA210_CLK_SBC4, TEGRA210_CLK_PLL_P, 12000000, 1 },
> +       { TEGRA210_CLK_PLL_U_OUT1, TEGRA210_CLK_CLK_MAX, 48000000, 1 },
> +       { TEGRA210_CLK_XUSB_GATE, TEGRA210_CLK_CLK_MAX, 0, 1 },
> +       { TEGRA210_CLK_XUSB_SS_SRC, TEGRA210_CLK_PLL_U_480M, 120000000, 0 },
> +       { TEGRA210_CLK_XUSB_FS_SRC, TEGRA210_CLK_PLL_U_48M, 48000000, 0 },
> +       { TEGRA210_CLK_XUSB_HS_SRC, TEGRA210_CLK_XUSB_SS_SRC, 120000000, 0 },
> +       { TEGRA210_CLK_XUSB_SSP_SRC, TEGRA210_CLK_XUSB_SS_SRC, 120000000, 0 },
> +       { TEGRA210_CLK_XUSB_FALCON_SRC, TEGRA210_CLK_PLL_P_OUT_XUSB, 204000000, 0 },
> +       { TEGRA210_CLK_XUSB_HOST_SRC, TEGRA210_CLK_PLL_P_OUT_XUSB, 102000000, 0 },
> +       { TEGRA210_CLK_XUSB_DEV_SRC, TEGRA210_CLK_PLL_P_OUT_XUSB, 102000000, 0 },
> +       { TEGRA210_CLK_SATA, TEGRA210_CLK_PLL_P, 104000000, 0 },
> +       { TEGRA210_CLK_SATA_OOB, TEGRA210_CLK_PLL_P, 204000000, 0 },
> +       { TEGRA210_CLK_MSELECT, TEGRA210_CLK_CLK_MAX, 0, 1 },
> +       { TEGRA210_CLK_CSITE, TEGRA210_CLK_CLK_MAX, 0, 1 },
> +       /* TODO find a way to enable this on-demand */
> +       { TEGRA210_CLK_DBGAPB, TEGRA210_CLK_CLK_MAX, 0, 1 },
> +       { TEGRA210_CLK_TSENSOR, TEGRA210_CLK_CLK_M, 400000, 0 },
> +       { TEGRA210_CLK_I2C1, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_I2C2, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_I2C3, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_I2C4, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_I2C5, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_I2C6, TEGRA210_CLK_PLL_P, 0, 0 },
> +       { TEGRA210_CLK_SOC_THERM, TEGRA210_CLK_PLL_P, 51000000, 0 },
> +       { TEGRA210_CLK_CCLK_G, TEGRA210_CLK_CLK_MAX, 0, 1 },
> +       { TEGRA210_CLK_PLL_U_OUT2, TEGRA210_CLK_CLK_MAX, 60000000, 1 },
> +       { TEGRA210_CLK_SPDIF_IN_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_I2S0_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_I2S1_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_I2S2_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_I2S3_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_I2S4_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_VIMCLK_SYNC, TEGRA210_CLK_CLK_MAX, 24576000, 0 },
> +       { TEGRA210_CLK_HDA, TEGRA210_CLK_PLL_P, 51000000, 0 },
> +       { TEGRA210_CLK_HDA2CODEC_2X, TEGRA210_CLK_PLL_P, 48000000, 0 },
> +       { TEGRA210_CLK_PWM, TEGRA210_CLK_PLL_P, 48000000, 0 },
> +       /* This MUST be the last entry. */
> +       { TEGRA210_CLK_CLK_MAX, TEGRA210_CLK_CLK_MAX, 0, 0 },
> +};
> +
> +static void __init tegra210b01_clock_table_init(struct clk **clks)
> +{
> +       struct clk *clk;
> +       unsigned long rate;
> +
> +        /* Set PLL_RE at 625 MHz from UTMIPLL, or 672MHz, otherwise */
> +       rate = (pll_re_use_utmipll ? 625 : 672) * 1000 * 1000;
> +       clk = clks[TEGRA210_CLK_PLL_RE_VCO];
> +       WARN_ON(IS_ERR_OR_NULL(clk));
> +       if (clk_set_rate(clk, rate))
> +               WARN(1, "%s: Failed to set rate %lu of %s\n",
> +                    __func__, rate,   __clk_get_name(clk));
> +
> +       tegra_init_from_table(t210b01_init_table, clks, TEGRA210_CLK_CLK_MAX);
> +}
> +
> +/**
> + * tegra210b01_clock_apply_init_table - initialize clocks on Tegra210 SoCs
> + *
> + * Program an initial clock rate and enable or disable clocks needed
> + * by the rest of the kernel, for Tegra210 SoCs.  It is intended to be
> + * called by assigning a pointer to it to tegra_clk_apply_init_table -
> + * this will be called as an arch_initcall.  No return value.
> + */
> +static void __init tegra210b01_clock_apply_init_table(void)
> +{
> +       tegra210b01_clock_table_init(clks);
> +       tegra_init_from_table(init_table, clks, TEGRA210_CLK_CLK_MAX);
> +}
> +
> +/**
> + * tegra210b01_car_barrier - wait for pending writes to the CAR to complete
> + *
> + * Wait for any outstanding writes to the CAR MMIO space from this CPU
> + * to complete before continuing execution.  No return value.
> + */
> +static void tegra210b01_car_barrier(void)
> +{
> +       readl_relaxed(clk_base + RST_DFLL_DVCO);
> +}
> +
> +/**
> + * tegra210b01_clock_assert_dfll_dvco_reset - assert the DFLL's DVCO reset
> + *
> + * Assert the reset line of the DFLL's DVCO.  No return value.
> + */
> +static void tegra210b01_clock_assert_dfll_dvco_reset(void)
> +{
> +       u32 v;
> +
> +       v = readl_relaxed(clk_base + RST_DFLL_DVCO);
> +       v |= (1 << DVFS_DFLL_RESET_SHIFT);
> +       writel_relaxed(v, clk_base + RST_DFLL_DVCO);
> +       tegra210b01_car_barrier();
> +}
> +
> +/**
> + * tegra210b01_clock_deassert_dfll_dvco_reset - deassert the DFLL's DVCO reset
> + *
> + * Deassert the reset line of the DFLL's DVCO, allowing the DVCO to
> + * operate.  No return value.
> + */
> +static void tegra210b01_clock_deassert_dfll_dvco_reset(void)
> +{
> +       u32 v;
> +
> +       v = readl_relaxed(clk_base + RST_DFLL_DVCO);
> +       v &= ~(1 << DVFS_DFLL_RESET_SHIFT);
> +       writel_relaxed(v, clk_base + RST_DFLL_DVCO);
> +       tegra210b01_car_barrier();
> +}
> +
> +static int tegra210b01_reset_assert(unsigned long id)
> +{
> +       if (id == TEGRA210_RST_DFLL_DVCO)
> +               tegra210b01_clock_assert_dfll_dvco_reset();
> +       else if (id == TEGRA210_RST_ADSP)
> +               writel(GENMASK(26, 21) | BIT(7),
> +                       clk_base + CLK_RST_CONTROLLER_RST_DEV_Y_SET);
> +       else
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int tegra210b01_reset_deassert(unsigned long id)
> +{
> +       if (id == TEGRA210_RST_DFLL_DVCO)
> +               tegra210b01_clock_deassert_dfll_dvco_reset();
> +       else if (id == TEGRA210_RST_ADSP) {
> +               writel(BIT(21), clk_base + CLK_RST_CONTROLLER_RST_DEV_Y_CLR);
> +               /*
> +                * Considering adsp cpu clock (min: 12.5MHZ, max: 1GHz)
> +                * a delay of 5us ensures that it's at least
> +                * 6 * adsp_cpu_cycle_period long.
> +                */
> +               udelay(5);
> +               writel(GENMASK(26, 22) | BIT(7),
> +                       clk_base + CLK_RST_CONTROLLER_RST_DEV_Y_CLR);
> +       } else
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static enum clk_id tegra210b01_integer_div_id[] = {

const?

> +       tegra_clk_cilab,
> +       tegra_clk_cilcd,
> +
> +       tegra_clk_spdif_out,
> +
> +       tegra_clk_sbc1_9,
> +       tegra_clk_sbc2_9,
> +       tegra_clk_sbc3_9,
> +       tegra_clk_sbc4_9,
> +
> +       tegra_clk_sdmmc_legacy,
> +       tegra_clk_i2cslow,
> +       tegra_clk_qspi,
> +
> +       tegra_clk_soc_therm_8,
> +       tegra_clk_tsensor,
> +};
> +
> +static void tegra210b01_adjust_clks(struct tegra_clk *tegra_clks)
> +{
> +       int i;
> +
> +       /* Remove CPU_LP claster clocks */
> +       tegra_clks[tegra_clk_cclk_lp].present = false;
> +       tegra_clks[tegra_clk_pll_x_out0].present = false;
> +
> +       /* Prevent 1:1.5 fractional divider setting */
> +       div1_5_not_allowed = true;
> +
> +       /* Prevent any fractional setting */
> +       for (i = 0; i < ARRAY_SIZE(tegra210b01_integer_div_id); i++) {
> +               enum clk_id cid = tegra210b01_integer_div_id[i];
> +
> +               if (cid >= tegra_clk_max || !tegra_clks[cid].present) {
> +                       pr_warn("%s: clk %d is not present\n", __func__, cid);
> +                       continue;
> +               }
> +               tegra_clks[cid].use_integer_div = true;
> +       }
> +}
> +
> +static void tegra210b01_mbist_clk_init(void)
> +{
> +       unsigned int i, j;
> +
> +       for (i = 0; i < ARRAY_SIZE(tegra210_pg_mbist_war); i++) {
> +               unsigned int num_clks = tegra210_pg_mbist_war[i].num_clks;
> +               struct clk_bulk_data *clk_data;
> +
> +               if (!num_clks)
> +                       continue;
> +
> +               clk_data = kmalloc_array(num_clks, sizeof(*clk_data),
> +                                        GFP_KERNEL);
> +               if (WARN_ON(!clk_data))
> +                       return;
> +
> +               tegra210_pg_mbist_war[i].clks = clk_data;
> +               for (j = 0; j < num_clks; j++) {
> +                       int clk_id = tegra210_pg_mbist_war[i].clk_init_data[j];
> +                       struct clk *clk = clks[clk_id];
> +
> +                       if (WARN(IS_ERR(clk), "clk_id: %d\n", clk_id)) {
> +                               kfree(clk_data);
> +                               tegra210_pg_mbist_war[i].clks = NULL;
> +                               break;
> +                       }
> +                       clk_data[j].clk = clk;
> +               }
> +       }
> +}
> +
> +/**
> + * tegra210b01_clock_init - Tegra210-specific clock initialization
> + * @np: struct device_node * of the DT node for the SoC CAR IP block
> + *
> + * Register most SoC clocks for the Tegra210B01 system-on-chip.  Intended
> + * to be called by the OF init code when a DT node with the
> + * "nvidia,tegra210b01-car" string is encountered, and declared with
> + * CLK_OF_DECLARE.  No return value.
> + */
> +static void __init tegra210b01_clock_init(struct device_node *np)
> +{
> +       struct device_node *node;
> +       u32 value, clk_m_div;
> +
> +       clk_base = of_iomap(np, 0);
> +       if (!clk_base) {
> +               pr_err("ioremap tegra210 CAR failed\n");
> +               return;
> +       }
> +
> +       node = of_find_matching_node(NULL, pmc_match);
> +       if (!node) {
> +               pr_err("Failed to find pmc node\n");
> +               WARN_ON(1);
> +               return;
> +       }
> +
> +       pmc_base = of_iomap(node, 0);
> +       of_node_put(node);
> +       if (!pmc_base) {
> +               pr_err("Can't map pmc registers\n");
> +               WARN_ON(1);
> +               return;
> +       }
> +
> +       ahub_base = ioremap(TEGRA210_AHUB_BASE, SZ_64K);
> +       if (!ahub_base) {
> +               pr_err("ioremap tegra210 APE failed\n");
> +               return;
> +       }
> +
> +       dispa_base = ioremap(TEGRA210_DISPA_BASE, SZ_256K);
> +       if (!dispa_base) {
> +               pr_err("ioremap tegra210 DISPA failed\n");
> +               return;
> +       }
> +
> +       vic_base = ioremap(TEGRA210_VIC_BASE, SZ_256K);
> +       if (!vic_base) {
> +               pr_err("ioremap tegra210 VIC failed\n");
> +               return;
> +       }
> +
> +       clks = tegra_clk_init(clk_base, TEGRA210_CLK_CLK_MAX,
> +                             TEGRA210_CAR_BANK_COUNT);
> +       if (!clks)
> +               return;
> +
> +       tegra210b01_adjust_clks(tegra210_clks);
> +
> +       value = readl(clk_base + SPARE_REG0) >> CLK_M_DIVISOR_SHIFT;
> +       clk_m_div = (value & CLK_M_DIVISOR_MASK) + 1;
> +
> +       if (tegra_osc_clk_init(clk_base, tegra210_clks, tegra210_input_freq,
> +                              ARRAY_SIZE(tegra210_input_freq), clk_m_div,
> +                              &osc_freq, &pll_ref_freq) < 0)
> +               return;
> +
> +       tegra_fixed_clk_init(tegra210_clks);
> +       tegra210_pll_init(clk_base, pmc_base);
> +       tegra210_periph_clk_init(np, clk_base, pmc_base);
> +       tegra_audio_clk_init(clk_base, pmc_base, tegra210_clks,
> +                            tegra210_audio_plls,
> +                            ARRAY_SIZE(tegra210_audio_plls), 24576000);
> +
> +       /* For Tegra210, PLLD is the only source for DSIA & DSIB */
> +       value = readl(clk_base + PLLD_BASE);
> +       value &= ~BIT(25);
> +       writel(value, clk_base + PLLD_BASE);
> +
> +       tegra_clk_apply_init_table = tegra210b01_clock_apply_init_table;
> +
> +       tegra_super_clk_gen5_init(clk_base, pmc_base, tegra210_clks,
> +                                 &pll_x_params);
> +       tegra_init_special_resets(2, tegra210b01_reset_assert,
> +                                 tegra210b01_reset_deassert);
> +
> +       tegra_add_of_provider(np, of_clk_src_onecell_get);
> +       tegra_register_devclks(devclks, ARRAY_SIZE(devclks));
> +
> +       tegra210b01_mbist_clk_init();
> +
> +       tegra_cpu_car_ops = &tegra210_cpu_car_ops;
> +
> +       register_syscore_ops(&tegra_clk_syscore_ops);
> +}
> +CLK_OF_DECLARE(tegra210b01, "nvidia,tegra210b01-car", tegra210b01_clock_init);

Can it be a platform device instead of using CLK_OF_DECLARE? Maybe that
is not possible with syscore ops though.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
