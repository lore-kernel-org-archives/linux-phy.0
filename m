Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95DC7E77188
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 08:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJGzesYIyAroAQV6ZsMhd3Kzc4IJhUwU9T1l++SzsYU=; b=SmS923WSqhidGD
	ytH6WvRq1tIDZeeqCMbcSOHoHtArLH/eGQ/dtJ8kbb8DzVU8LP8KlFMfRW13TyN7IpTnD/cBLG76Y
	2PvnGu94845gvDa+6uGdrK6mm0rSvtBT3cvDgU18a+qHXG7gTMYck7wIaQ2ht7WTSStlJ1Yzht6qB
	IkcUwMwrJ9b47kqOeLMOAHyNJsUaRA4uHV6J4/43DNyEvf9ndgpHIGWjmcT+t0io/+iYRYDjtp2ha
	B/fVcxbm5MrCJoKBBeXCfaiVKxelAUaHJMr4MWEgC2NMwMl62XuYQdZcaL3w+nbdqkEvv80ldpn3F
	KNOgkN2/eMkkmTYkXYAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUitV-00000000ZfU-1MEM;
	Mon, 06 Jan 2025 08:55:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUitS-00000000Zer-3MyR
	for linux-phy@lists.infradead.org;
	Mon, 06 Jan 2025 08:55:28 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AAB7855A;
	Mon,  6 Jan 2025 09:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1736153668;
	bh=UVWFfuAbpwI70+zO76y2sdmCcU/HVYEvCZ6f2mqhO2E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uu/q57plPf4jed4d58LkqsSjCkT07YCEL4yvOyr4ZFY452B01wEiAytUF+1NPIY5V
	 LdKX9MJ8afz25vLyBGWYvaLghQkkfIFrEmWDICm7Zduei26eyIQzTBW0R5UkjlkuN6
	 9FAc5g5yAqepl/cWYs0sJi/ZS3qkqICnPPz4vHhA=
Message-ID: <2cb9ff06-ca8d-4c15-a0bc-e30e065e720b@ideasonboard.com>
Date: Mon, 6 Jan 2025 10:55:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: cadence: cdns-dphy: Fix PLL lock and common ready
 poll timeout
To: Devarsh Thakkar <devarsht@ti.com>, vkoul@kernel.org, kishon@kernel.org,
 mripard@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: sakari.ailus@linux.intel.com, vigneshr@ti.com, aradhya.bhatia@linux.dev,
 s-jain1@ti.com, r-donadkar@ti.com, j-choudhary@ti.com, h-shenoy@ti.com,
 praneeth@ti.com, u-kumar1@ti.com
References: <20241230125319.941372-1-devarsht@ti.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20241230125319.941372-1-devarsht@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_005527_169418_FCE5E824 
X-CRM114-Status: GOOD (  30.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 30/12/2024 14:53, Devarsh Thakkar wrote:
> After adding the initial checks for register poll timeout and traces for
> measuring total initialization time [1], it was observed that the driver
> was timing out while polling for PLL lock up to happen and O_CMN_READY bit
> to be set:
> 
> "[ 19.967949] phy phy-301c0000.phy.2: Timed out waiting for DPHY PLL lock
> assertion [ 19.968976] phy phy-301c0000.phy.2: Timed out waiting for
> o_cmn_ready assertion"
> 
> this also increased the overall DSIT Tx + DPHY Tx initialization time which
> was observed as 271ms (20.238306 - 19.966884) on TI's AM62L SoC:
> 
> "kworker/u8:1-29      [001] .....    19.966884:
> cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
> kworker/u8:1-29      [001] .....    20.238306:
> cdns_dsi_bridge_atomic_pre_enable: Initialization complete"
> 
> This was caused due to multiple issues as discussed below along with the
> updates done to fix those issues :
> 
> 1) PLL lockup and O_CMN_READY assertion can only happen after common state
>     machine gets enabled, but driver was polling them before the common
>     state machine was enabled. To fix this, add new function callbacks for
>     polling on PLL lock and O_CMN_READY assertion and call them only after
>     common state machine gets enabled.
> 
> 2) The cadence DPHY IP registers (as described in J721E TRM [2]) has
>     default reset values for register fields in some of the registers
>     which were getting reset to 0 as driver was not preserving them and
>     overwriting those bits to 0 while updating the registers thus impacting
>     the overall PLL lockup time. For e.g. DPHY_TX_CMN0_CMN_DIG_TBIT2 has
>     bits 1-8 used for PLL wait time calibrations with default value as 0x14h
>     and DPHY_TX_CMN0_CMN_DIG_TBIT10 has bits 27-20 used for PWM Byteclock
>     divider which is default set to 0x8. To avoid resetting these register
>     bit-fields, perform read-modify-write while updating above registers.
> 
> With above updates, the PLL lockup and O_CMN_READ timeout assertion is not
> observed anymore and DSI Tx + DPHY Tx initialization time is reduced to
> 394 us (19.435259 - 19.434861) as shared below:
> 
> "kworker/u8:6-74      [000] .....    19.434861:
> cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
> kworker/u8:6-74      [000] .....    19.435259:
> cdns_dsi_bridge_atomic_pre_enable: Initialization complete"
> 
> NOTE: This is tested on top of existing series on cadence DSI under review
> [4].
> 
> Full profiling logs before and after changes done also attached here [3].
> 
> [1]: Profiling patch:
> Link: https://gist.github.com/devarsht/f3bcb6a2e7e97a0667c817cfa208ed4c
> 
> [2]: J721E TRM Section 12.8.4 DPHY_TX Registers:
> Link: https://www.ti.com/lit/zip/spruil1
> 
> [3]: Profiling logs:
> Link: https://gist.github.com/devarsht/bc84be106209c373a0be4e33b5f019bb
> 
> [4]: Tested on top of existing cadence DSI series:
> Link: https://lore.kernel.org/all/20241019195411.266860-1-aradhya.bhatia@linux.dev
> 
> Cc: stable@vger.kernel.org
> Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>   drivers/phy/cadence/cdns-dphy.c | 49 ++++++++++++++++++++++++++-------
>   1 file changed, 39 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index dddb66de6dba..c248a506ddc2 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -98,6 +98,8 @@ struct cdns_dphy_ops {
>   				 enum cdns_dphy_clk_lane_cfg cfg);
>   	void (*set_pll_cfg)(struct cdns_dphy *dphy,
>   			    const struct cdns_dphy_cfg *cfg);
> +	void (*wait_for_pll_lock)(struct cdns_dphy *dphy);
> +	void (*wait_for_cmn_ready)(struct cdns_dphy *dphy);

I think both of these should return an error code.

>   	unsigned long (*get_wakeup_time_ns)(struct cdns_dphy *dphy);
>   };
>   
> @@ -191,6 +193,18 @@ static unsigned long cdns_dphy_get_wakeup_time_ns(struct cdns_dphy *dphy)
>   	return dphy->ops->get_wakeup_time_ns(dphy);
>   }
>   
> +static void cdns_dphy_wait_for_pll_lock(struct cdns_dphy *dphy)
> +{
> +	if (dphy->ops->wait_for_pll_lock)
> +		dphy->ops->wait_for_pll_lock(dphy);
> +}
> +
> +static void cdns_dphy_wait_for_cmn_ready(struct cdns_dphy *dphy)
> +{
> +	if (dphy->ops->wait_for_cmn_ready)
> +		dphy->ops->wait_for_cmn_ready(dphy);
> +}
> +
>   static unsigned long cdns_dphy_ref_get_wakeup_time_ns(struct cdns_dphy *dphy)
>   {
>   	/* Default wakeup time is 800 ns (in a simulated environment). */
> @@ -212,7 +226,7 @@ static void cdns_dphy_ref_set_pll_cfg(struct cdns_dphy *dphy,
>   	writel(DPHY_CMN_FBDIV_FROM_REG |
>   	       DPHY_CMN_FBDIV_VAL(fbdiv_low, fbdiv_high),
>   	       dphy->regs + DPHY_CMN_FBDIV);
> -	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
> +	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |

This, and the rest in the patch, is probably not a good idea. You just 
"or" the bit fields, without clearing the fields in the register. If the 
register default values contain ones (or maybe e.g. bootloader has set 
the register already), this might result in wrong value written.

Maybe add a helper to update bit fields, similar to 
regmap_update_bits(). Or read the current reg value to a local, modify 
there, and write back.

  Tomi

>   	       DPHY_CMN_PWM_DIV(0x8),
>   	       dphy->regs + DPHY_CMN_PWM);
>   }
> @@ -232,13 +246,11 @@ static unsigned long cdns_dphy_j721e_get_wakeup_time_ns(struct cdns_dphy *dphy)
>   static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
>   					const struct cdns_dphy_cfg *cfg)
>   {
> -	u32 status;
> -
>   	/*
>   	 * set the PWM and PLL Byteclk divider settings to recommended values
>   	 * which is same as that of in ref ops
>   	 */
> -	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
> +	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
>   	       DPHY_CMN_PWM_DIV(0x8),
>   	       dphy->regs + DPHY_CMN_PWM);
>   
> @@ -249,13 +261,25 @@ static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
>   
>   	writel(DPHY_TX_J721E_WIZ_LANE_RSTB,
>   	       dphy->regs + DPHY_TX_J721E_WIZ_RST_CTRL);
> +}
>   
> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
> -			   (status & DPHY_TX_WIZ_PLL_LOCK), 0, POLL_TIMEOUT_US);
> +static void cdns_dphy_j721e_wait_for_pll_lock(struct cdns_dphy *dphy)
> +{
> +	u32 status;
> +
> +	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
> +			       status & DPHY_TX_WIZ_PLL_LOCK, 0, POLL_TIMEOUT_US))
> +		dev_err(&dphy->phy->dev, "Timed out waiting for DPHY PLL lock assertion\n");
> +}
>   
> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
> -			   (status & DPHY_TX_WIZ_O_CMN_READY), 0,
> -			   POLL_TIMEOUT_US);
> +static void cdns_dphy_j721e_wait_for_cmn_ready(struct cdns_dphy *dphy)
> +{
> +	u32 status;
> +
> +	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
> +			       status & DPHY_TX_WIZ_O_CMN_READY, 0,
> +			       POLL_TIMEOUT_US))
> +		dev_err(&dphy->phy->dev, "Timed out waiting for o_cmn_ready assertion\n");
>   }
>   
>   static void cdns_dphy_j721e_set_psm_div(struct cdns_dphy *dphy, u8 div)
> @@ -278,6 +302,8 @@ static const struct cdns_dphy_ops j721e_dphy_ops = {
>   	.get_wakeup_time_ns = cdns_dphy_j721e_get_wakeup_time_ns,
>   	.set_pll_cfg = cdns_dphy_j721e_set_pll_cfg,
>   	.set_psm_div = cdns_dphy_j721e_set_psm_div,
> +	.wait_for_pll_lock = cdns_dphy_j721e_wait_for_pll_lock,
> +	.wait_for_cmn_ready = cdns_dphy_j721e_wait_for_cmn_ready,
>   };
>   
>   static int cdns_dphy_config_from_opts(struct phy *phy,
> @@ -384,9 +410,12 @@ static int cdns_dphy_power_on(struct phy *phy)
>   	clk_prepare_enable(dphy->pll_ref_clk);
>   
>   	/* Start TX state machine. */
> -	writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
> +	writel(readl(dphy->regs + DPHY_CMN_SSM) | DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
>   	       dphy->regs + DPHY_CMN_SSM);
>   
> +	cdns_dphy_wait_for_pll_lock(dphy);
> +	cdns_dphy_wait_for_cmn_ready(dphy);
> +
>   	return 0;
>   }
>   


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
