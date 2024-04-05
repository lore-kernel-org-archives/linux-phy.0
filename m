Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA199C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nT2pkl4HueysMxXv0H3BpH6r8ALBfXQWVD1shhpv9tE=; b=oW2TdHPouyBxBx
	VpehN3h3gC0rZXrDAUUdbs+AwvkWpaOcYBfdd8JMVgPJMjEdYuGfVvr0UVb04f5U6NoWevJ5x3ZHG
	oWAnGIJCq7rRZVd6F6DYsY1LC4GGMuL7RQn/Egb+6luhl6P2WW1ZcuK9msahPbo719JL9y5fcoz+r
	bLp+IrVy+Yfe8I1gIxNg3vjIend5oMo7h1euL2L2CQYmmlZrp/z2LGOmjGqxcjuvE6yf3u3VmM5MP
	DbY4ZcPZ3+BAiUkN+vrPdk/e4ntvEIvyPr5YkAJ1d8G+VEBX/FYhPjSNOj8ejsiZyNa4EfGFQ1D0e
	J4Eycyoki+a47FUGHmWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseQj-00000005mx6-2G0u;
	Fri, 05 Apr 2024 07:56:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseQf-00000005muq-1Dd7;
	Fri, 05 Apr 2024 07:56:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4AF34CE31B9;
	Fri,  5 Apr 2024 07:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BA6EC433F1;
	Fri,  5 Apr 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712303762;
	bh=99f5HMXgUkaxVpVlgJeMGcbzRbBYQx6qRt/SC1ZdGCI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KNzA6k0CkxJVUuHMWIBjivS4h3B63kPmyARuQEYJeC6W+eNd3KsDRjfpzIoz5U3wa
	 CvAIajB4nCFrlHpiAM9Pi13pIDYJH0cjkIk06At5hDEECqSAZwtnrzzivmyvVAz6Dr
	 rpx2bB24kIsxJOhXjwOaJ/YmUeegngTmfsclp1OJisOmExN5D53xDJlqzF57oyWIHT
	 WsYarXtf2HLGbq4eiH8qt2trnxfpqCa+ptQMnjIP/civaJTM91LS3N+ZyfEWGsoW/C
	 ymRE6WEYQ7NDncamc640EjAdMEjPmIXFoWWm1oLFlrf47okM1ElQqXLd6v8iwa8jjf
	 DTs08J18tbU8g==
Message-ID: <7a70c8c7-f1b5-450b-86b1-d3458c32ca92@kernel.org>
Date: Fri, 5 Apr 2024 09:55:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
 andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-9-peter.griffin@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_005605_764865_ED680840 
X-CRM114-Status: GOOD (  23.06  )
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

On 04/04/2024 14:25, Peter Griffin wrote:
> CMU_HSI2 is the clock management unit used for the hsi2 block.
> HSI stands for High Speed Interface and as such it generates
> clocks for PCIe, UFS and MMC card.
> 
> This patch adds support for the muxes, dividers, and gates in
> cmu_hsi2.
> 
> CLK_GOUT_HSI2_HSI2_CMU_HSI2_PCLK is marked as CLK_IS_CRITICAL
> as disabling it leads to an immediate system hang.
> 
> CLK_GOUT_HSI2_SYSREG_HSI2_PCLK is also marked CLK_IS_CRITICAL.
> A hang is not observed with fine grained clock control, but
> UFS IP does not function with syscon controlling this clock
> just around hsi2_sysreg register accesses.
> 
> CLK_GOUT_HSI2_GPIO_HSI2_PCLK is marked CLK_IGNORE_UNUSED until
> the exynos pinctrl clock patches land then it can be removed.
> 
> Some clocks in this unit have very long names. To help with this
> the clock name mangling strategy was updated to include removing
> the following sub-strings.
> - G4X2_DWC_PCIE_CTL_
> - G4X1_DWC_PCIE_CTL_
> - PCIE_SUB_CTRL_
> - INST_0_
> - LN05LPE_
> - TM_WRAPPER_
> - SF_
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> 
> ---
> Updated regex for clock name mangling
>     sed \
>         -e 's|^PLL_LOCKTIME_PLL_\([^_]\+\)|fout_\L\1_pll|' \
>         \
>         -e 's|^PLL_CON0_MUX_CLKCMU_\([^_]\+\)_\(.*\)|mout_\L\1_\2|' \
>         -e 's|^PLL_CON0_PLL_\(.*\)|mout_pll_\L\1|' \
>         -e 's|^CLK_CON_MUX_MUX_CLK_\(.*\)|mout_\L\1|' \
>         -e '/^PLL_CON[1-4]_[^_]\+_/d' \
>         -e '/^[^_]\+_CMU_[^_]\+_CONTROLLER_OPTION/d' \
>         -e '/^CLKOUT_CON_BLK_[^_]\+_CMU_[^_]\+_CLKOUT0/d' \
>         \
>         -e 's|_IPCLKPORT||' \
>         -e 's|_RSTNSYNC||' \
>         -e 's|_G4X2_DWC_PCIE_CTL||' \
>         -e 's|_G4X1_DWC_PCIE_CTL||' \
>         -e 's|_PCIE_SUB_CTRL||' \
>         -e 's|_INST_0||g' \
>         -e 's|_LN05LPE||' \
>         -e 's|_TM_WRAPPER||' \
>         -e 's|_SF||' \
>         \
>         -e 's|^CLK_CON_DIV_DIV_CLK_\([^_]\+\)_\(.*\)|dout_\L\1_\2|' \
>         \
>         -e 's|^CLK_CON_BUF_CLKBUF_\([^_]\+\)_\(.*\)|gout_\L\1_\2|' \
>         -e 's|^CLK_CON_GAT_CLK_BLK_\([^_]\+\)_UID_\(.*\)|gout_\L\1_\2|' \
>         -e 's|^gout_[^_]\+_[^_]\+_cmu_\([^_]\+\)_pclk$|gout_\1_\1_pclk|' \
>         -e 's|^CLK_CON_GAT_GOUT_BLK_\([^_]\+\)_UID_\(.*\)|gout_\L\1_\2|' \
>         -e 's|^CLK_CON_GAT_CLK_\([^_]\+\)_\(.*\)|gout_\L\1_clk_\L\1_\2|' \
>         \
>         -e '/^\(DMYQCH\|PCH\|QCH\|QUEUE\)_/d'
> ---
>  drivers/clk/samsung/clk-gs101.c          | 558 +++++++++++++++++++++++
>  include/dt-bindings/clock/google,gs101.h |  63 +++

Bindings are separate patches.

>  2 files changed, 621 insertions(+)
> 
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
> index d065e343a85d..b9f84c7d5c22 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -22,6 +22,7 @@
>  #define CLKS_NR_MISC	(CLK_GOUT_MISC_XIU_D_MISC_ACLK + 1)
>  #define CLKS_NR_PERIC0	(CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK + 1)
>  #define CLKS_NR_PERIC1	(CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK + 1)
> +#define CLKS_NR_HSI2	(CLK_GOUT_HSI2_XIU_P_HSI2_ACLK + 1)
>  
>  /* ---- CMU_TOP ------------------------------------------------------------- */
>  
> @@ -3409,6 +3410,560 @@ static const struct samsung_cmu_info peric1_cmu_info __initconst = {
>  	.clk_name		= "bus",
>  };
>  
> +/* ---- CMU_HSI2 ---------------------------------------------------------- */
> +
> +/* Register Offset definitions for CMU_HSI2 (0x14400000) */
> +#define PLL_CON0_MUX_CLKCMU_HSI2_BUS_USER												0x0600
> +#define PLL_CON1_MUX_CLKCMU_HSI2_BUS_USER												0x0604
> +#define PLL_CON0_MUX_CLKCMU_HSI2_MMC_CARD_USER												0x0610
> +#define PLL_CON1_MUX_CLKCMU_HSI2_MMC_CARD_USER												0x0614
> +#define PLL_CON0_MUX_CLKCMU_HSI2_PCIE_USER												0x0620
> +#define PLL_CON1_MUX_CLKCMU_HSI2_PCIE_USER												0x0624
> +#define PLL_CON0_MUX_CLKCMU_HSI2_UFS_EMBD_USER												0x0630
> +#define PLL_CON1_MUX_CLKCMU_HSI2_UFS_EMBD_USER												0x0634
> +#define HSI2_CMU_HSI2_CONTROLLER_OPTION													0x0800
> +#define CLKOUT_CON_BLK_HSI2_CMU_HSI2_CLKOUT0												0x0810
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN					0x2000
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_PHY_REFCLK_IN					0x2004
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_ACLK								0x2008
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4A_1_IPCLKPORT_PCLK								0x200c
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_ACLK								0x2010
> +#define CLK_CON_GAT_CLK_BLK_HSI2_UID_SSMT_PCIE_IA_GEN4B_1_IPCLKPORT_PCLK								0x2014
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_D_TZPC_HSI2_IPCLKPORT_PCLK									0x201c
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPC_HSI2_IPCLKPORT_PCLK										0x2020
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_GPIO_HSI2_IPCLKPORT_PCLK										0x2024
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_HSI2_CMU_HSI2_IPCLKPORT_PCLK									0x2028
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHM_AXI_P_HSI2_IPCLKPORT_I_CLK									0x202c
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_LHS_ACEL_D_HSI2_IPCLKPORT_I_CLK									0x2030
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_I_ACLK										0x2034
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_MMC_CARD_IPCLKPORT_SDCLKIN									0x2038
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG				0x203c
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG				0x2040
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_G4X2_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG				0x2044
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_003_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK				0x2048
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_DBI_ACLK_UG				0x204c
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_MSTR_ACLK_UG				0x2050
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_G4X1_DWC_PCIE_CTL_INST_0_SLV_ACLK_UG				0x2054
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCIE_004_PCIE_SUB_CTRL_INST_0_I_DRIVER_APB_CLK				0x2058
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PHY_UDBG_I_APB_PCLK						0x205c
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_PIPE_PAL_PCIE_INST_0_I_APB_PCLK				0x2060
> +#define CLK_CON_GAT_GOUT_BLK_HSI2_UID_PCIE_GEN4_1_IPCLKPORT_PCS_PMA_INST_0_SF_PCIEPHY210X2_LN05LPE_QCH_TM_WRAPPER_INST_0_I_APB_PCLK	0x2064

Is it doable to use shorter register names while still keeping them
close to datasheet/manual? This one is a bit too much... actually most
of them are quite too much. :)


...

> +
>  /* ---- platform_driver ----------------------------------------------------- */
>  
>  static int __init gs101_cmu_probe(struct platform_device *pdev)
> @@ -3432,6 +3987,9 @@ static const struct of_device_id gs101_cmu_of_match[] = {
>  	}, {
>  		.compatible = "google,gs101-cmu-peric1",
>  		.data = &peric1_cmu_info,
> +	}, {
> +		.compatible = "google,gs101-cmu-hsi2",
> +		.data = &hsi2_cmu_info,

Keep these also alphabetically ordered by compatible.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
