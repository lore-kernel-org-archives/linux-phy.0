Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7134CA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 22:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEZOHjgXmb8/7/NUBN6IlstZioLfceswbfAv5E3hNE8=; b=pLYOxrcClBP69c
	RNeqdTcC5pYUrqgJrkB1lTDrROAHa17O31+AiuaWCYKNPETyKMjNgRKd+gCCxndqiPog9w0z6Nndh
	0isTGxGfaXY9Lxa0v33BGxq4527QzZpCOBjGZOBjcSHEx+IVdHL2HF4nvjWZHjUlCoQZHwPrSaWyl
	e4XOMLb6kW4ZYMyn26dEAagtVF/pi+UcOYkJEdq79HO/n0oOil3zHsyp87AfMlxvkkirNDDn1TZIi
	gqcG+nmaif1GjBdgWd68h7VcGc7EDjpx4ytm/9BMjeVrnig4NbjCszKMe+Lw6XT0/MewqSECWElxO
	p6+wHOm2R/YL4r7xnnTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umgOh-00000000g4B-1cAa;
	Thu, 14 Aug 2025 22:26:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umgOg-00000000g3y-0OuH
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 22:26:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DEC5460208;
	Thu, 14 Aug 2025 22:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9108C4CEED;
	Thu, 14 Aug 2025 22:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755210367;
	bh=PpBhujVqq3G2HXm3lppYS9UmsqQ/kcjSTxjYIgy9JsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YrPSpGBCHsXyFNPh/6g8o48PRM8/VHyukR+Q2tNpy/lPpGHzqxIv+PX4iMKS8xziU
	 /1IDAXelY11oCexwNRsr1KJ9SauhS55BkB+y12+9MbtdPUo6XIK649neJkr+KizhWr
	 tIL/SbPWTXMKu3BR0+3UMabEjQhOTES3bDgd/GqH/2VNKqqmLLPjKCHcW3OO2FfSXj
	 Lijt6iv/rlDxjBPPx1JsFvjIQKibcvoDRQplXwTZgGVHX/AlzE8RcFJu22ubNZIUiS
	 Jc/wlLLoMwew5dvkJp/f8Say7hXWS0D5CJEtcbiQ20ijkioAV9Gsk8/Wk593jwt998
	 TKxvHrli/s4fw==
Date: Thu, 14 Aug 2025 17:26:05 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Wenbin Yao <quic_wenbyao@quicinc.com>, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Fix PHY initialization when
 powered down by firmware
Message-ID: <e5hn42qxz2eqgjanyoxb2456wvuw6zy55ibbg6fh33jma7utvq@mlq2a57owz4g>
References: <20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814-phy-qcom-qmp-pcie-nocsr-fix-v2-1-fe562b5d02a1@linaro.org>
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

On Thu, Aug 14, 2025 at 11:27:10AM +0200, Stephan Gerhold wrote:
> Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
> support") added support for using the "no_csr" reset to skip configuration
> of the PHY if the init sequence was already applied by the boot firmware.
> The expectation is that the PHY is only turned on/off by using the "no_csr"
> reset, instead of powering it down and re-programming it after a full
> reset.
> 
> The boot firmware on X1E does not fully conform to this expectation: If the
> PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
> firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
> register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
> the PHY is already initialized and skips the configuration/power up
> sequence. The PHY won't come up again without clearing the
> QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:
> 
>   qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
>   phy phy-1be0000.phy.0: phy poweron failed --> -110
>   qcom-pcie 1bd0000.pcie: cannot initialize host
>   qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110
> 
> This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
> is inserted for PCIe3.
> 
> Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
> to QPHY_START_CTRL. If the PHY is powered down with the register, it
> doesn't conform to the expectations for using the "no_csr" reset, so we
> fully re-initialize with the normal reset sequence.
> 
> Also check the register more carefully to ensure all of the bits we expect
> are actually set. A simple !!(readl()) is not enough, because the PHY might
> be only partially set up with some of the expected bits set.
> 
> Cc: stable@vger.kernel.org
> Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Changes in v2:
> - Ensure that all expected bits are set (Konrad)
> - Link to v1: https://lore.kernel.org/r/20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..80973527fafcb294273dff1864828532dab738db 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3067,6 +3067,14 @@ struct qmp_pcie {
>  	struct clk_fixed_rate aux_clk_fixed;
>  };
>  
> +static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> +{
> +	u32 reg;
> +
> +	reg = readl(base + offset);
> +	return (reg & val) == val;
> +}
> +
>  static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
>  {
>  	u32 reg;
> @@ -4339,10 +4347,12 @@ static int qmp_pcie_init(struct phy *phy)
>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs = qmp->pcs;
> -	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>  	int ret;
>  
> -	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
> +	qmp->skip_init = qmp->nocsr_reset &&
> +		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
> +		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);

IMHO the "phy_initialized" variable does provide valuable context to
what those (now) two lines represents. That is particularly relevant as
the second one is active low...so at least I need to think a bit extra
to understand what's going on.

Other than that, I think this looks good.

Regards,
Bjorn

> +
>  	/*
>  	 * We need to check the existence of init sequences in two cases:
>  	 * 1. The PHY doesn't support no_csr reset.
> 
> ---
> base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
> change-id: 20250812-phy-qcom-qmp-pcie-nocsr-fix-1603106294cd
> 
> Best regards,
> -- 
> Stephan Gerhold <stephan.gerhold@linaro.org>
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
