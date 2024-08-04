Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FC5C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgfNBKwQx/edRxLOKI97INR4bAnSxN5Lfmw9/9XGS68=; b=iTlLCHnjpWygse
	gg/yMqsGWeuppozlWhjnk/xywiAXfKtdS9O5LmC4X7lsGYg+omIV0C7xeyhasPPKufx2m0ejRo3En
	JALNcXTNTGfTuGDJE3hT1NG3U4LaRxQmLsPZWVqrv/V8YTcAPoN0eBzqOS3Tnra7sUSS5soSms3eD
	C/aSuvNJWC6Pc2QV4wfTtcf4dyNvq0ovcjdZ6qIMPup76qMqr2WgWqTXn3Wcuba74Rq3CSDqago8a
	LT5bNly0Z7uUMRP8o2PU19PeCIzs9f+E6/ol2p6curKIePRLjSElLxgAlaufphGjWembhGsgwSzXl
	T3ZY6p76SNlR93cMGrJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saevC-0000000Deri-3HkJ;
	Sun, 04 Aug 2024 17:21:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeug-0000000Delc-1Opa;
	Sun, 04 Aug 2024 17:20:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8B63D60AC7;
	Sun,  4 Aug 2024 17:20:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6BAFC32786;
	Sun,  4 Aug 2024 17:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722792057;
	bh=G1R24K2ESK7/Bkj/XCkWrPqcBxwbVuAcBmyP4C2KDGU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I6M3jiZRKsv/CsiXrOsP8IfQQEs5BDgEURSkcNao8fm6QwAg0WFgdEd1bGub3vhSv
	 1VKov+rOTruPQikzyhlRmu1jSqv0AMjsD/qJWM30QXl76HszHR8Jjj2JOzkxgBFo0O
	 zKfgjLLfydImZ92kdT7iFlIUnOxWV2AkWl/uKcPEYU7u55DnjEHemghxp2/XB5EvJ7
	 kPF5Ob34xV/PAtZD6St5MIHOrXvYAXi7/FIMCu+Jp+vBDZTg3nRQfCbMoZNtRW5LFT
	 khabTWhcxIqRtWRKKZF4jJw6ZLjvvap2jT0cVjq8dTxhk+i0o7Oi4DVNAH2kOdRD9C
	 55Pijhc02rDmQ==
Date: Sun, 4 Aug 2024 22:50:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: laurent.pinchart@ideasonboard.com, kishon@kernel.org,
	michal.simek@amd.com, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	git@amd.com
Subject: Re: [PATCH] phy: xilinx: phy-zynqmp: Fix SGMII linkup failure on
 resume
Message-ID: <Zq-4dH2dXzGXebYv@matsya>
References: <1721155263-2913528-1-git-send-email-radhey.shyam.pandey@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1721155263-2913528-1-git-send-email-radhey.shyam.pandey@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_102058_479457_CF400748 
X-CRM114-Status: GOOD (  25.10  )
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

On 17-07-24, 00:11, Radhey Shyam Pandey wrote:
> From: Piyush Mehta <piyush.mehta@amd.com>
> 
> On a few Kria KR260 Robotics Starter Kit the PS-GEM SGMII linkup is not
> happening after the resume. This is because serdes registers are reset
> when FPD is off (in suspend state) and needs to be reprogrammed in the
> resume path with the same default initialization as done in the first
> stage bootloader psu_init routine.
> 
> To address the failure introduce a set of serdes registers to be saved in
> the suspend path and then restore it on resume.
> 
> Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
> ---
>  drivers/phy/xilinx/phy-zynqmp.c | 56 +++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
> index dc8319bda43d..bdcc8d7c3dfa 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -165,6 +165,24 @@
>  /* Timeout values */
>  #define TIMEOUT_US			1000
>  
> +/* Lane 0/1/2/3 offset */
> +#define DIG_8(n)		((0x4000 * (n)) + 0x1074)
> +#define ILL13(n)		((0x4000 * (n)) + 0x1994)
> +#define DIG_10(n)		((0x4000 * (n)) + 0x107C)
> +#define RST_DLY(n)		((0x4000 * (n)) + 0x19A4)
> +#define BYP_15(n)		((0x4000 * (n)) + 0x1038)
> +#define BYP_12(n)		((0x4000 * (n)) + 0x102C)
> +#define MISC3(n)		((0x4000 * (n)) + 0x19AC)
> +#define EQ11(n)			((0x4000 * (n)) + 0x1978)

Lower case hex value please

> +
> +static u32 save_reg_address[] = {
> +	/* Lane 0/1/2/3 Register */
> +	DIG_8(0), ILL13(0), DIG_10(0), RST_DLY(0), BYP_15(0), BYP_12(0), MISC3(0), EQ11(0),
> +	DIG_8(1), ILL13(1), DIG_10(1), RST_DLY(1), BYP_15(1), BYP_12(1), MISC3(1), EQ11(1),
> +	DIG_8(2), ILL13(2), DIG_10(2), RST_DLY(2), BYP_15(2), BYP_12(2), MISC3(2), EQ11(2),
> +	DIG_8(3), ILL13(3), DIG_10(3), RST_DLY(3), BYP_15(3), BYP_12(3), MISC3(3), EQ11(3),
> +};
> +
>  struct xpsgtr_dev;
>  
>  /**
> @@ -213,6 +231,7 @@ struct xpsgtr_phy {
>   * @tx_term_fix: fix for GT issue
>   * @saved_icm_cfg0: stored value of ICM CFG0 register
>   * @saved_icm_cfg1: stored value of ICM CFG1 register
> + * @saved_regs: registers to be saved/restored during suspend/resume
>   */
>  struct xpsgtr_dev {
>  	struct device *dev;
> @@ -225,6 +244,7 @@ struct xpsgtr_dev {
>  	bool tx_term_fix;
>  	unsigned int saved_icm_cfg0;
>  	unsigned int saved_icm_cfg1;
> +	u32 *saved_regs;
>  };
>  
>  /*
> @@ -298,6 +318,32 @@ static inline void xpsgtr_clr_set_phy(struct xpsgtr_phy *gtr_phy,
>  	writel((readl(addr) & ~clr) | set, addr);
>  }
>  
> +/**
> + * xpsgtr_save_lane_regs - Saves registers on suspend
> + * @gtr_dev: pointer to phy controller context structure
> + */
> +static void xpsgtr_save_lane_regs(struct xpsgtr_dev *gtr_dev)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(save_reg_address); i++)
> +		gtr_dev->saved_regs[i] = xpsgtr_read(gtr_dev,
> +						     save_reg_address[i]);
> +}
> +
> +/**
> + * xpsgtr_restore_lane_regs - Restores registers on resume
> + * @gtr_dev: pointer to phy controller context structure
> + */
> +static void xpsgtr_restore_lane_regs(struct xpsgtr_dev *gtr_dev)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(save_reg_address); i++)
> +		xpsgtr_write(gtr_dev, save_reg_address[i],
> +			     gtr_dev->saved_regs[i]);
> +}
> +
>  /*
>   * Hardware Configuration
>   */
> @@ -837,6 +883,8 @@ static int xpsgtr_runtime_suspend(struct device *dev)
>  	gtr_dev->saved_icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
>  	gtr_dev->saved_icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1);
>  
> +	xpsgtr_save_lane_regs(gtr_dev);
> +
>  	return 0;
>  }
>  
> @@ -847,6 +895,8 @@ static int xpsgtr_runtime_resume(struct device *dev)
>  	unsigned int i;
>  	bool skip_phy_init;
>  
> +	xpsgtr_restore_lane_regs(gtr_dev);
> +
>  	icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
>  	icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1);
>  
> @@ -992,6 +1042,12 @@ static int xpsgtr_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	gtr_dev->saved_regs = devm_kmalloc(gtr_dev->dev,
> +					   sizeof(save_reg_address),
> +					   GFP_KERNEL);
> +	if (!gtr_dev->saved_regs)
> +		return -ENOMEM;
> +
>  	return 0;
>  }
>  
> 
> base-commit: d67978318827d06f1c0fa4c31343a279e9df6fde
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
