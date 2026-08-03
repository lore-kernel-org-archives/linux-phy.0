Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA07AC55184
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 16:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylaQ8iz+OTdLbWkPjv4/n00ievXwC6rijACcifH7vZQ=; b=khdfIC9QAuOK2b
	+N+x9P6d8RHXLkkVx/h3ZXhTYKzudpPmzU+w8zGZgFYJn17XK6FxVWoAGgWj3+ifbiiqyBkCCuj7X
	fcC3GH9+Suse4Y/J4CnjdAuWHRuV6z3doXWNeg3QtrU9Wu4atGHIcevAgG2fR5Rcat5BOO/1pv9sv
	TXJpQsFdZ1OYkn/ivYrGPSdhsfKjYol+L1ZZqhWi3J5WbZBO/kc8KMZgJY3XdH+zX+GwtqyIyLpr+
	RMB6cMGmaWMYPWqULuFlG2YqwGT8094sotVutmdPkP63+/hLoHRi8200BzE5B6/AHIbQDMoTt8pej
	DTZKtB6PeObHPAshKcDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvJZ-000000003as-2IGF;
	Mon, 03 Aug 2026 16:14:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvJW-000000003Zr-2wLU
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 16:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785773693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TYABYwpx6ruAb5bhUwEW7oIyVa3yNnOD8j4tVtfIkMg=;
	b=Iagl+3EqMYl6nKugxtsBHQthQLH9KkzKAzGpGphUrX8pRRNS6o1wNFf+MSqKHdTSOltE1j
	Qz5imJI1jSpGm+cyNN6FSqtb0b6oLydOGpAcgX+yWHRRxePFjkKLCa/vNnQiAbDBaIy2rm
	NxJZ/aFNSSXs/sIox5fdDbGYoOjwbKo=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-251-q0nr4yvZN4aE1GIGf7f7Sg-1; Mon, 03 Aug 2026 12:14:51 -0400
X-MC-Unique: q0nr4yvZN4aE1GIGf7f7Sg-1
X-Mimecast-MFC-AGG-ID: q0nr4yvZN4aE1GIGf7f7Sg_1785773691
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-81eedabbefcso120617797b3.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:14:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773691; x=1786378491;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=TYABYwpx6ruAb5bhUwEW7oIyVa3yNnOD8j4tVtfIkMg=;
        b=YrA0/TKU0B+RPAdM5wFqaeo1/5OOHEGRwBr90QYg7WgSxS/tSc4T82VD6NNHKwWiBt
         u0UCJqf5poob3RzH8jqIajOP4STz4aLtTO2d90aPh39VCuQ0ZbLTA6qmfgSpPVfbD1UX
         aktQLOBMZ8Fy0HhjLVOlCz6C/mbtl7Ps+57bx+jztmF3InLLbe1XWuOj0+vWy5BO4tH8
         XGWt2r4gCb0oOU498eS+9t78DDPFjhAcM/EpCZC+j6vjw4jRkdqCHdI4uulfI/RLDYJK
         HFhGaeIJa4SZu1XONqz3PMzQ38x2q0HDje4Bn/Rsxez3HIZdcDM1xXgvYZ4PRrQAR6sL
         n7SA==
X-Forwarded-Encrypted: i=1; AHgh+Rq+QJ/RTAIiIQ7g/Bb2Fef1C3IvafHaBPjWi/pxyaAzvpD/Na7X4EzO5K+BdwskT4nBWYy4gCkEeuQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1zrr+SlnvtLz52chAlZnrQz6Ox/zFiA5iDqcAgh/HYvX1uKUw
	7dwiZt5zUSoyiN0KLgo+9/sIHAdmvfbPz1aAbkSmNCN/9qpDRUDd8hIXsFN6Vr0DSA2G0w6m2SJ
	Na5L2iWXX+7zwG5tft2Ti9mX3zFkOSk6BvwjRy3MboyK0phLRLdvZ8CmivmFHl/23/j0=
X-Gm-Gg: AR+sD10A99J7nfpAvqKBLe1lC1TYUVzJwTRS8SvSEbiDW3rrTcYX6pZFhRQ1+bIaxjL
	xF6Q0Rw/Y/VT+WyLo75/Ia6r/c/ISFjIharDlY4mHOMf9sYhlE2V5rCfEchbIeq+4ddbTY1YuyK
	on/ERcOTm+A6ZUvk905X5kji++ez4INWJaid6S/G1arepFkXm8FtW1T4lcZSU007CpOVS2efah2
	cDTwSxvq7EOp+cUxwE9SoIHuHHv771yghPoeThzb1KctFBwZ7DTuiMrnka8xUQxXS5k8swLRaII
	Ol3kr/4puhNlNCD9gUwhkuN1ZxqeOs8jgcq4tbZ1dhL25IixqFx+hFP5/vO/aNZYyXwSaaaDjJf
	pp4vKk/Py08j7C6X370Z6eO0w6nT7/V9NfRs=
X-Received: by 2002:a05:690c:e3f0:b0:81c:eca8:dbaf with SMTP id 00721157ae682-81fd4bed013mr148250627b3.31.1785773690591;
        Mon, 03 Aug 2026 09:14:50 -0700 (PDT)
X-Received: by 2002:a05:690c:e3f0:b0:81c:eca8:dbaf with SMTP id 00721157ae682-81fd4bed013mr148250027b3.31.1785773689959;
        Mon, 03 Aug 2026 09:14:49 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81fcd0d6fcasm57682727b3.29.2026.08.03.09.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 09:14:49 -0700 (PDT)
Date: Mon, 3 Aug 2026 12:14:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Stefan =?iso-8859-1?Q?D=F6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, mfd@lists.linux.dev
Subject: Re: [PATCH v9 07/12] clk: zte: Add zx PLL support infrastructure
Message-ID: <anC-d-cNuHoYD7px@redhat.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-7-d05530d85d28@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260802-zx29clk-v9-7-d05530d85d28@gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vuyySMLfN_BNe4Y_2DRtUic4hWlx9gAfHI8BBdTkWBM_1785773691
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_091454_897507_337FB01C 
X-CRM114-Status: GOOD (  60.95  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Sun, Aug 02, 2026 at 11:33:39PM +0300, Stefan D=F6singer wrote:
> I am guessing how much of this is reusable among other zx chips or even
> differently named ZTE platforms (if there are any). From reading the old
> zx2967 code, I think the PLL code would be reusable there, maybe with
> platform-specific bitmasks but otherwise the same logic.
> =

> Signed-off-by: Stefan D=F6singer <stefandoesinger@gmail.com>
> =

> ---
> =

> Version 9:
> *) Take req->min_rate and req->max_rate into account when looking for
> possible PLL configurations (sashiko). In practice the code will still
> only ever encounter a fixed request to set dpll to 491.52 MHz.
> =

> *) The same code style changes Brian requested on the other clk patches.
> =

> Version 8:
> *) Document the behavior of unlocked PLLs better: They don't pass
> through their reference/parent, but pass through the fixed clock-26m
> oscillator, even if their reference clock is something else.
> *) dpll has working fractionals. Add this in the comment, but there is
> no actual code support for it - the LTE hardware doesn't need it.
> =

> As for Sashiko's comments on the .set_rate implementation: In practice
> .set_rate will only ever set one rate, 491.52 MHz for dpll. All other
> PLLs are bootloader configured. Dpll could be handled by writing a magic
> constant into its config.
> =

> I want to have the rate finding code as documentation, and maybe there
> is more elaborate future use for it (e.g. more flexible underclocking),
> but attempts to handle eventualities like rate searches or misconfigured
> bootloader values would be dead code.
> =

> Version 7:
> *) Always keep unknownpll enabled when prepared so dpll can acquire a
> lock in its prepare() function.
> *) Clean up error reporting a bit (Sashiko)
> =

> Version 6:
> *) Use abs_diff to compare target and candidate PLL rate (Sashiko).
> *) Use req->best_parent_rate in zx29_pll_determine_rate. Add a TODO
> comment about the parent rate flexibility.
> =

> Version 5: Fix some issues pointed out by Sashiko: NULL dev,
> zx29_pll_recalc_rate error handling, disable PLL again on enable error.
> ---
>  drivers/clk/zte/pll-zx.c | 568 +++++++++++++++++++++++++++++++++++++++++=
+++++-
>  1 file changed, 565 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/clk/zte/pll-zx.c b/drivers/clk/zte/pll-zx.c
> index fc76c6524a16..e61b462ec0b4 100644
> --- a/drivers/clk/zte/pll-zx.c
> +++ b/drivers/clk/zte/pll-zx.c
> @@ -4,15 +4,577 @@
>   */
>  =

>  #include <linux/clk-provider.h>
> +#include <linux/clk.h>
> +#include <linux/container_of.h>
>  #include <linux/device.h>
> +#include <linux/err.h>
>  #include <linux/errno.h>
> +#include <linux/math.h>
> +#include <linux/rational.h>
>  #include <linux/regmap.h>
> +#include <linux/types.h>
> +#include <linux/units.h>
>  =

>  #include "clk-zx.h"
>  =

> +/*
> + * This code has only been tested with zx297520v3 PLLs, but from reading=
 the zx296718 clock code it
> + * looks like PLL registers are similar. ZTE's sources explain the PLL r=
egister contents only in a
> + * .cmm file (A Lauterbach TRACE32 script) and some unused headers in th=
eir U-Boot code dump, which
> + * may not be accurate. When calculating the frequencies from the defaul=
t PLL configuration the
> + * results match the fixed rate clocks from their clock driver.
> + *
> + * The 26 MHz and 32 kHz clocks can be easily observed with the timers. =
The 104 MHz output can be
> + * observed through the UART. One 122.88 MHz clock can be observed throu=
gh the TDM device. All
> + * others can only be indirectly inferred, e.g. by comparing CPU speed o=
r SDIO transfer rate between
> + * the fixed 26 MHz oscillator and the provided PLL frequency.
> + *
> + * The formula to calculate the clock is ((ref / refdiv) * fbdiv) / post=
div1 / postdiv2. The masks
> + * are given below. There are a few control flags:
> + *
> + * Bit 31: Disables the PLL, but passes clock-26m through unmodified. Wh=
ether POSTDIV_OUT_DISABLE
> + *         still matters is different between PLLs.
> + * Bit 30: Returns if the PLL is locked
> + * Bit 29: Not named in ZTE's code, but can be set. There is no obvious =
impact. Lock times are
> + *         unchanged, so it doesn't influence or bypass lock detection. =
It doesn't raise any IRQs or
> + *         influence GPIOs.
> + * Bit 27: Given its name it likely disables the Delta-Sigma Modulator, =
if one exists at all. The
> + *         boot ROM sets it on every PLL. Unsetting it marginally decrea=
ses the time it takes to
> + *         lock to the reference clock (from ~400 us to ~300 us).
> + * Bit 24: Bypasses the VCO, but still applies refdiv and postdiv. Doesn=
't matter if PLL_DISABLE=3D1.
> + *
> + * NB: Some PLLs have an automatic bypass logic that forwards clock-26m =
(REGARDLESS of reference)
> + * when they don't have a lock, regardless of reason. This can be trigge=
red by disabling the PLL,
> + * setting an out-of-spec VCO frequency or disabling the parent. This sh=
ouldn't matter in regular
> + * operation, but caused me some confusion when reverse engineering the =
clock tree. E.g. clock-26m->
> + * unknownpll(disabled) -> dpll(enabled) counterintuitively results in a=
 26 MHz output clock.
> + */
> +
> +#define ZX29_PLL_DISABLE			BIT(31)
> +#define ZX29_PLL_LOCKED				BIT(30)
> +#define ZX29_PLL_LOCK_FILTER			BIT(29)
> +#define ZX29_PLL_DSM_DISABLE			BIT(27)
> +#define ZX29_PLL_PARENT_MASK			GENMASK(26, 25)
> +#define ZX29_PLL_PARENT_SHIFT			25
> +#define ZX29_PLL_BYPASS				BIT(24)
> +#define ZX29_PLL_REFDIV_MASK			GENMASK(23, 18)
> +#define ZX29_PLL_REFDIV_SHIFT			18
> +#define ZX29_PLL_FBDIV_MASK			GENMASK(17, 6)
> +#define ZX29_PLL_FBDIV_SHIFT			6
> +#define ZX29_PLL_POSTDIV1_MASK			GENMASK(5, 3)
> +#define ZX29_PLL_POSTDIV1_SHIFT			3
> +#define ZX29_PLL_POSTDIV2_MASK			GENMASK(2, 0)
> +#define ZX29_PLL_POSTDIV2_SHIFT			0
> +
> +/*
> + * The second register has a 24 bit fractional value, which only matters=
 when ZX29_PLL_DSM_DISABLE
> + * is not set, and only seems to matter for dpll. ZTE's firmware does no=
t make use of the fractional
> + * and it is unimplemented in this driver. Experimental testing confirms=
 that it has an impact on
> + * dpll.
> + *
> + * Bits 27:24 contain more flags:
> + *
> + * Bit 27: Setting ZX29_PLL_DACAP slows down the lock time and obviates =
the speed gained from
> + *         !DSM_DISABLE. No other effect observed.
> + *
> + * Bit 26: ZX29_PLL_4PHASE_OUT_DISABLE is set on some PLLs on boot but n=
ot on others. It is set on
> + *         boot on mpll and upll, but not gpll, dpll or unknownpll. I am=
 not sure what it does
> + *         either. The SDIO devices break if they are fed from gpll with=
 this flag set, but they
> + *         work OK if they are fed from mpll without this flag set.
> + *
> + * Bit 25: ZX29_PLL_POSTDIV_OUT_DISABLE seems to disable the PLL output =
entirely. Whether it is
> + *         bypassed by PLL_DISABLE differs between PLLs. gpll still prod=
uces an output clock if
> + *         PLL_DISABLE =3D 1 and POSTDIV_DISABLE =3D 1, but produces no =
output if PLL_DISABLE =3D 0 and
> + *         POSTDIV_DISABLE =3D 1. The dpll feeder ("unknownpll") at 0x10=
0 produces no output clock if
> + *         both PLL_DISABLE and POSTDIV_DISABLE are set to 1.
> + *
> + * Bit 24: ZX29_PLL_VCO_OUT_DISABLE probably disables the output of the =
VCO clock without
> + *         post-VCO-dividers, but the raw VCO output is not a possible p=
arent of any consumer clock,
> + *         so I could not confirm this. It does not disable the VCO enti=
rely - that's what
> + *         PLL_DISABLE does.
> + *
> + * A spinlock should not be needed. PLLs don't share their registers wit=
h anything else and the
> + * global prepare mutex and enable spinlock should be enough. Beware of =
conflicts in reg2 between
> + * POSTDIV_OUT_DISABLE and the fractional value in case you find out how=
 fractional dividers work
> + * and add support for them.
> + */
> +#define ZX29_PLL_REG2_OFFSET			4
> +#define ZX29_PLL_DACAP				BIT(27)
> +#define ZX29_PLL_4PHASE_OUT_DISABLE		BIT(26)
> +#define ZX29_PLL_POSTDIV_OUT_DISABLE		BIT(25)
> +#define ZX29_PLL_VCO_OUT_DISABLE		BIT(24)
> +#define ZX29_PLL_FRACT				GENMASK(23, 0)
> +
> +/*
> + * The VCO's frequency range is limited. The stock settings run the VCO =
between 960 and 1248 MHz.
> + * Ad-hoc testing with gpll suggests that at least this PLL remains stab=
le down to about 7 MHz and
> + * up to 2 GHz and produces a clock that can be used by the SDIO control=
ler. Attempting to run the
> + * mpll VCO at 624 MHz and setting postdiv1 =3D postdiv2 =3D 1 - which s=
hould result in the same output
> + * frequency - or running it at 1872 MHz with an effective post divider =
of 3 crashes the CPU. Most
> + * likely the PLLs become unstable outside their core range and the SDIO=
 controller is much more
> + * forgiving than CPU and DRAM are.
> + */
> +#define ZX29_PLL_VCO_MAX_FREQ			(1300 * HZ_PER_MHZ)
> +#define ZX29_PLL_VCO_MIN_FREQ			(900 * HZ_PER_MHZ)
> +
> +struct zx29_clk_pll {
> +	struct clk_hw	hw;
> +	struct device	*dev;
> +	struct regmap	*map;
> +	u16		reg;
> +};
> +
> +static inline struct zx29_clk_pll *to_zx29_clk_pll(struct clk_hw *hw)
> +{
> +	return container_of(hw, struct zx29_clk_pll, hw);
> +}
> +
> +static int zx29_pll_is_prepared(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	int res;
> +
> +	res =3D regmap_test_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +	if (res < 0)
> +		return res;
> +
> +	return !res;
> +}
> +
> +static int zx29_pll_prepare(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	u32 val =3D 0;
> +	int res;
> +
> +	res =3D regmap_clear_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +	if (res < 0)
> +		return res;
> +
> +	/* Lock duration is usually between 300 us and 500 us */
> +	res =3D regmap_read_poll_timeout(pll->map, pll->reg, val, val & ZX29_PL=
L_LOCKED, 50, 2000);
> +	if (res) {
> +		regmap_set_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +		dev_err(pll->dev, "%s: PLL prepare failed: %d. Config value 0x%08x\n",
> +			clk_hw_get_name(&pll->hw), res, val);
> +	}
> +	return res;
> +}
> +
> +static void zx29_pll_unprepare(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +
> +	regmap_set_bits(pll->map, pll->reg, ZX29_PLL_DISABLE);
> +}
> +
> +static int zx29_pll_is_enabled(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	int res;
> +
> +	res =3D regmap_test_bits(pll->map, pll->reg + ZX29_PLL_REG2_OFFSET,
> +			       ZX29_PLL_POSTDIV_OUT_DISABLE);
> +	if (res < 0)
> +		return res;
> +
> +	return !res;
> +}
> +
> +static int zx29_pll_enable(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +
> +	return regmap_clear_bits(pll->map, pll->reg + ZX29_PLL_REG2_OFFSET,
> +				 ZX29_PLL_POSTDIV_OUT_DISABLE);
> +}
> +
> +static void zx29_pll_disable(struct clk_hw *hw)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +
> +	regmap_set_bits(pll->map, pll->reg + ZX29_PLL_REG2_OFFSET,
> +			ZX29_PLL_POSTDIV_OUT_DISABLE);
> +}
> +
> +static unsigned long zx29_pll_get_rate(const struct zx29_clk_pll *pll, u=
nsigned long parent_rate,
> +				       u32 setting)
> +{
> +	unsigned long refdiv, fbdiv, postdiv1, postdiv2, freq;
> +	const char *name =3D clk_hw_get_name(&pll->hw);
> +	u64 vco;
> +
> +	refdiv =3D (setting & ZX29_PLL_REFDIV_MASK) >> ZX29_PLL_REFDIV_SHIFT;
> +	fbdiv =3D (setting & ZX29_PLL_FBDIV_MASK) >> ZX29_PLL_FBDIV_SHIFT;
> +	postdiv1 =3D (setting & ZX29_PLL_POSTDIV1_MASK) >> ZX29_PLL_POSTDIV1_SH=
IFT;
> +	postdiv2 =3D (setting & ZX29_PLL_POSTDIV2_MASK) >> ZX29_PLL_POSTDIV2_SH=
IFT;
> +	dev_dbg(pll->dev, "%s: reference clock %lu Hz, PLL setting 0x%08x\n",
> +		name, parent_rate, setting);
> +
> +	if (!refdiv || !postdiv1 || !postdiv2) {
> +		dev_err(pll->dev, "%s: divide by zero (%lu, %lu, %lu)\n", name, refdiv=
, postdiv1,
> +			postdiv2);
> +		return 0;
> +	}
> +
> +	vco =3D div_u64((u64)parent_rate * fbdiv, refdiv);
> +	freq =3D div_u64(div_u64(vco, postdiv1), postdiv2);
> +	dev_dbg(pll->dev, "%s: refdiv %lu fbdiv %lu\n", name, refdiv, fbdiv);
> +	dev_dbg(pll->dev, "%s: postdiv1 %lu postdiv2 %lu\n", name, postdiv1, po=
stdiv2);
> +
> +	dev_dbg(pll->dev, "%s: %lu MHz\n", name, freq / HZ_PER_MHZ);
> +
> +	return freq;
> +}
> +
> +static unsigned long zx29_pll_recalc_rate(struct clk_hw *hw, unsigned lo=
ng parent_rate)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	u32 val;
> +	int res;
> +
> +	res =3D regmap_read(pll->map, pll->reg, &val);
> +	if (res < 0) {
> +		dev_err(pll->dev, "%s: Failed to read PLL settings\n", clk_hw_get_name=
(&pll->hw));
> +		return 0;
> +	}
> +
> +	return zx29_pll_get_rate(pll, parent_rate, val);
> +}
> +
> +static u32 zx29_pll_calc_values(const struct zx29_clk_pll *pll, unsigned=
 long parent_rate,
> +				unsigned long rate, unsigned long min_rate, unsigned long max_rate)
> +{
> +	const unsigned int postdiv1_max =3D (1 << hweight32(ZX29_PLL_POSTDIV1_M=
ASK)) - 1;
> +	const unsigned int postdiv2_max =3D (1 << hweight32(ZX29_PLL_POSTDIV2_M=
ASK)) - 1;
> +	unsigned long fbdiv, refdiv, best_fbdiv =3D 0, best_refdiv =3D 0;
> +	u32 postdiv1 =3D 0, postdiv2 =3D 0, i, j, setting;
> +	const char *name =3D clk_hw_get_name(&pll->hw);
> +	long best =3D LONG_MAX;
> +
> +	/*
> +	 * This code produces the same VCO settings that the boot loader and st=
ock firmware use for
> +	 * the standard frequencies. It has seen only very little manual testin=
g beyond that.
> +	 *
> +	 * The goal is to find a VCO setting that gets us as close as possible =
to the desired output
> +	 * rate, while being within the VCO's operating limits and achievable w=
ith the input value
> +	 * range. It is iterating over possible post-VCO divider values (1-7)*(=
1-7) to look for
> +	 * valid VCO target frequencies and then looks for refdiv and fbdiv val=
ues to achieve the
> +	 * VCO frequency from the reference frequency.
> +	 */
> +	for (j =3D 1; j <=3D postdiv2_max; j++) {
> +		for (i =3D 1; i <=3D postdiv1_max; i++) {
> +			u64 vco =3D (u64)rate * i * j;
> +			unsigned long out;
> +
> +			if (vco > ZX29_PLL_VCO_MAX_FREQ || vco < ZX29_PLL_VCO_MIN_FREQ)
> +				continue;
> +
> +			rational_best_approximation(vco, parent_rate,
> +						    (1 << hweight32(ZX29_PLL_FBDIV_MASK)) - 1,
> +						    (1 << hweight32(ZX29_PLL_REFDIV_MASK)) - 1,
> +						    &fbdiv, &refdiv);
> +			setting =3D fbdiv << ZX29_PLL_FBDIV_SHIFT;
> +			setting |=3D refdiv << ZX29_PLL_REFDIV_SHIFT;
> +			setting |=3D i << ZX29_PLL_POSTDIV1_SHIFT;
> +			setting |=3D j << ZX29_PLL_POSTDIV2_SHIFT;
> +			out =3D zx29_pll_get_rate(pll, parent_rate, setting);
> +
> +			if (out < min_rate || out > max_rate)
> +				continue;
> +
> +			if (abs_diff(out, rate) > best)
> +				continue;
> +
> +			if (abs_diff(out, rate) < best) {
> +				postdiv1 =3D i;
> +				postdiv2 =3D j;
> +				best_fbdiv =3D fbdiv;
> +				best_refdiv =3D refdiv;
> +				best =3D abs_diff(out, rate);
> +
> +				if (!best)
> +					goto search_done;
> +			}
> +		}
> +	}
> +search_done:
> +
> +	if (!postdiv1) {
> +		dev_err(pll->dev, "Did not find a setting for %lu Hz, parent %lu Hz\n",
> +			rate, parent_rate);
> +		return 0;
> +	}
> +
> +	dev_dbg(pll->dev, "%s: parent rate %lu\n", name, parent_rate);
> +	dev_dbg(pll->dev, "%s: found VCO dividers %u and %u\n", name, postdiv1,=
 postdiv2);
> +	dev_dbg(pll->dev, "%s: VCO target rate %lu\n", name, rate * postdiv1 * =
postdiv2);
> +
> +	dev_dbg(pll->dev, "%s: Got fbdiv =3D %lu refdiv =3D %lu\n", name, best_=
fbdiv, best_refdiv);
> +
> +	setting =3D best_fbdiv << ZX29_PLL_FBDIV_SHIFT;
> +	setting |=3D best_refdiv << ZX29_PLL_REFDIV_SHIFT;
> +	setting |=3D postdiv1 << ZX29_PLL_POSTDIV1_SHIFT;
> +	setting |=3D postdiv2 << ZX29_PLL_POSTDIV2_SHIFT;
> +	dev_dbg(pll->dev, "%s: Final setting 0x%08x\n", name, setting);
> +
> +	return setting;
> +}
> +
> +static int zx29_pll_determine_rate(struct clk_hw *hw, struct clk_rate_re=
quest *req)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	unsigned long new_rate;
> +	u32 setting;
> +
> +	/*
> +	 * TODO: DPLL can switch between two parents, one of which is another P=
LL. Take this into
> +	 * account when searching the config space and set req->best_parent_rat=
e.
> +	 *
> +	 * In practice it shouldn't matter though. Dpll is always configured to=
 a fixed frequency
> +	 * and is the only clock with a switchable parent.
> +	 */
> +	if (!req->best_parent_rate) {
> +		dev_err(pll->dev, "Did not expect best_parent_rate=3D0\n");
> +		return -EINVAL;
> +	}
> +
> +	setting =3D zx29_pll_calc_values(pll, req->best_parent_rate, req->rate,=
 req->min_rate,
> +				       req->max_rate);
> +	if (!setting)
> +		return -EINVAL;
> +
> +	new_rate =3D zx29_pll_get_rate(pll, req->best_parent_rate, setting);
> +	if (new_rate !=3D req->rate) {
> +		dev_warn(pll->dev, "Did not find an exact match. Want %lu, got %lu\n",
> +			 req->rate, new_rate);

Could this also be dev_dbg() ?

> +		req->rate =3D new_rate;
> +	}
> +
> +	return 0;
> +}
> +
> +static int zx29_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> +			     unsigned long parent_rate)
> +{
> +	struct zx29_clk_pll *pll =3D to_zx29_clk_pll(hw);
> +	u32 setting;
> +
> +	/*
> +	 * TODO: Implement gradual PLL rate change. PLLs can be changed while t=
hey are running and
> +	 * downstream hardware is generally fine with that. The exception is DR=
AM, which reads
> +	 * incorrect values if changed too fast.
> +	 *
> +	 * Changing the mpll rate is potentially useful for over/underclocking.=
 Gating mpll is
> +	 * unrealistic because too many devices depend on it.
> +	 */
> +	setting =3D zx29_pll_calc_values(pll, parent_rate, rate, rate, rate);
> +	if (!setting)
> +		return -EINVAL;
> +
> +	dev_info(pll->dev, "%s: Setting new configuration: 0x%08x\n", clk_hw_ge=
t_name(hw), setting);

dev_dbg()

Brian


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
