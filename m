Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1419DC46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 05:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZECXkZswnHEr3wwavaRMz0y3NwE9J6JTyxvKHnrO5Yg=; b=xiufDhOqwGEhf2
	W+JGyHox3K4BPUe5Z2bl8gVhP8ZT+nTxIKfjZl6qKjhq9kw9n943l72aFe0VlY941jRz7RAWEQrNp
	TBE9uR2IS+oMw3AThOTruXYrP7oN0f12YHRGe4Krb31LOlhQ9jaA6b0FGRkfyR72fEtJ2MiopAMWp
	k4PZTXgB8c1+smwH7lNNdiOCcpnM6V2QoPqRZ/XDCNQA5Mhx8cQn6Z/f1xinLtU6lTJ5l+YwOrQ9P
	AyhFA/rCwXTWTmuwHKe49rE1zi8JwTRdf+nGOsrIx79Ps36lJnNa4xfkPauNT0ZX2meXdjswNuljD
	nmYrzAJu6M2VpYHC5CZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSVwy-001cBc-1p;
	Wed, 24 Jan 2024 05:37:24 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSVwv-001cA9-1B
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 05:37:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B9D96CE298F;
	Wed, 24 Jan 2024 05:37:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E36A9C433F1;
	Wed, 24 Jan 2024 05:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706074637;
	bh=DTbgu68fzH6nG6Q2YaiW8VrSqXE4h5AZ+gNK4dDgZHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O9YAZRhk8Oq6rH34wGwwR8T3V3rvJPuB/5mneOsMCzADyhMVmPwVu0aFNcqHFkjWj
	 olZd0yfLUZ4Ws4lfVNQDd90M7qrS8ElrbD9mC4HZsDl6lr3PmI51F5j5/nXyjNNXf6
	 C+1gCTt1TSjH1wXWcfs5aOeKSJvhvmQFEyFC3RdM4b5sld9mK154TngHeSBciWnceU
	 StUvLsIMnvUoSxmepQuO8z9KtCYTopusBHK5xqJqMyH1vPhljZaJeSBIg7qkbv1LRD
	 KHUlNsjrs4HBWVRhBfwV/Jud+MUwOr6BuPMbcIirT751KsuMIT11NxqQITJyOhKFxP
	 wrNZZwhyfh8WQ==
Date: Wed, 24 Jan 2024 11:07:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
Subject: Re: [PATCH V1 2/2] phy: qcom: Refactor phy_power_on and
 phy_calibrate callbacks
Message-ID: <ZbCiCVx3W1d186r-@matsya>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
 <20240112153348.2778-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240112153348.2778-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_213721_778241_438A521C 
X-CRM114-Status: GOOD (  32.29  )
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

On 12-01-24, 21:03, Nitin Rawat wrote:
> Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
> puts enabling regulators & clks, calibrating UFS PHY, starting serdes
> and polling PCS ready status into phy_power_on.
> 
> In Current code regulators enable, clks enable, calibrating UFS PHY,
> start_serdes and polling PCS_ready_status are part of phy_power_on.
> 
> UFS PHY registers are retained after power collapse, meaning calibrating
> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
> hba is powered_on, and not needed every time when phy_power_on is called
> during resume. Hence keep the code which enables PHY's regulators & clks
> in phy_power_on and move the rest steps into phy_calibrate function.
> 
> Refactor the code to enable PHY regulators & clks in phy_power_on and
> move rest of the code to phy_calibrate function.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Co-developed-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
> Signed-off-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 183 +++++++++---------------
>  1 file changed, 67 insertions(+), 116 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 3c2e6255e26f..ae0218738b0b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -32,14 +32,15 @@
>  /* QPHY_SW_RESET bit */
>  #define SW_RESET				BIT(0)
>  /* QPHY_POWER_DOWN_CONTROL */
> -#define SW_PWRDN				BIT(0)
> +#define SW_PWRUP				BIT(0)
> +#define SW_PWRDN				0

why change this? so which bit is for PWR control, it is still bit 0
right?

>  /* QPHY_START_CONTROL bits */
>  #define SERDES_START				BIT(0)
>  #define PCS_START				BIT(1)
>  /* QPHY_PCS_READY_STATUS bit */
>  #define PCS_READY				BIT(0)
> 
> -#define PHY_INIT_COMPLETE_TIMEOUT		10000
> +#define PHY_INIT_COMPLETE_TIMEOUT		1000000

why change timeout? this should be explained in log, even better a
individual patch explaining why this was changed

> 
>  struct qmp_phy_init_tbl {
>  	unsigned int offset;
> @@ -1464,8 +1465,25 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>  		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_g4);
>  }
> 
> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> +static int qmp_ufs_power_off(struct phy *phy)
> +{
> +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +
> +	/* Put PHY into POWER DOWN state: active low */
> +	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +			SW_PWRDN);

this will clear the bit, i think you are interpreting this as right
which this is not

> +
> +	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
> +
> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> +
> +	return 0;
> +}
> +
> +static int qmp_ufs_power_on(struct phy *phy)
>  {
> +	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	void __iomem *pcs = qmp->pcs;
>  	int ret;
> @@ -1480,8 +1498,7 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>  	if (ret)
>  		goto err_disable_regulators;
> 
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> -
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRUP);


>  	return 0;
> 
>  err_disable_regulators:
> @@ -1490,61 +1507,7 @@ static int qmp_ufs_com_init(struct qmp_ufs *qmp)
>  	return ret;
>  }
> 
> -static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -
> -	reset_control_assert(qmp->ufs_reset);
> -
> -	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
> -
> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -
> -	return 0;
> -}
> -
> -static int qmp_ufs_init(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	int ret;
> -	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> -
> -	if (cfg->no_pcs_sw_reset) {
> -		/*
> -		 * Get UFS reset, which is delayed until now to avoid a
> -		 * circular dependency where UFS needs its PHY, but the PHY
> -		 * needs this UFS reset.
> -		 */
> -		if (!qmp->ufs_reset) {
> -			qmp->ufs_reset =
> -				devm_reset_control_get_exclusive(qmp->dev,
> -								 "ufsphy");
> -
> -			if (IS_ERR(qmp->ufs_reset)) {
> -				ret = PTR_ERR(qmp->ufs_reset);
> -				dev_err(qmp->dev,
> -					"failed to get UFS reset: %d\n",
> -					ret);
> -
> -				qmp->ufs_reset = NULL;
> -				return ret;
> -			}
> -		}
> -
> -		ret = reset_control_assert(qmp->ufs_reset);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	ret = qmp_ufs_com_init(qmp);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> -}
> -
> -static int qmp_ufs_power_on(struct phy *phy)
> +static int qmp_ufs_phy_calibrate(struct phy *phy)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1553,11 +1516,21 @@ static int qmp_ufs_power_on(struct phy *phy)
>  	unsigned int val;
>  	int ret;
> 
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRUP);
> +
> +	ret = reset_control_assert(qmp->ufs_reset);
> +	if (ret) {
> +		dev_err(qmp->dev, "Failed to assert UFS PHY reset %d\n", ret);
> +		return ret;
> +	}
> +
>  	qmp_ufs_init_registers(qmp, cfg);
> 
>  	ret = reset_control_deassert(qmp->ufs_reset);
> -	if (ret)
> +	if (ret) {
> +		dev_err(qmp->dev, "Failed to deassert UFS PHY reset %d\n", ret);
>  		return ret;
> +	}
> 
>  	/* Pull PHY out of reset state */
>  	if (!cfg->no_pcs_sw_reset)
> @@ -1577,59 +1550,6 @@ static int qmp_ufs_power_on(struct phy *phy)
>  	return 0;
>  }
> 
> -static int qmp_ufs_power_off(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -
> -	/* PHY reset */
> -	if (!cfg->no_pcs_sw_reset)
> -		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> -
> -	/* stop SerDes */
> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL], SERDES_START);
> -
> -	/* Put PHY into POWER DOWN state: active low */
> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -			SW_PWRDN);
> -
> -	return 0;
> -}
> -
> -static int qmp_ufs_exit(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -
> -	qmp_ufs_com_exit(qmp);
> -
> -	return 0;
> -}
> -
> -static int qmp_ufs_enable(struct phy *phy)
> -{
> -	int ret;
> -
> -	ret = qmp_ufs_init(phy);
> -	if (ret)
> -		return ret;
> -
> -	ret = qmp_ufs_power_on(phy);
> -	if (ret)
> -		qmp_ufs_exit(phy);
> -
> -	return ret;
> -}
> -
> -static int qmp_ufs_disable(struct phy *phy)
> -{
> -	int ret;
> -
> -	ret = qmp_ufs_power_off(phy);
> -	if (ret)
> -		return ret;
> -	return qmp_ufs_exit(phy);
> -}
> -
>  static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> @@ -1641,9 +1561,10 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  }
> 
>  static const struct phy_ops qcom_qmp_ufs_phy_ops = {
> -	.power_on	= qmp_ufs_enable,
> -	.power_off	= qmp_ufs_disable,
> +	.power_on	= qmp_ufs_power_on,
> +	.power_off	= qmp_ufs_power_off,
>  	.set_mode	= qmp_ufs_set_mode,
> +	.calibrate	= qmp_ufs_phy_calibrate,
>  	.owner		= THIS_MODULE,
>  };
> 
> @@ -1809,6 +1730,32 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
>  	return 0;
>  }
> 
> +static int qmp_ufs_get_phy_reset(struct qmp_ufs *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	int ret;
> +
> +	if (!cfg->no_pcs_sw_reset)
> +		return 0;
> +
> +	/*
> +	 * Get UFS reset, which is delayed until now to avoid a
> +	 * circular dependency where UFS needs its PHY, but the PHY
> +	 * needs this UFS reset.
> +	 */
> +
> +	qmp->ufs_reset = devm_reset_control_get_exclusive(qmp->dev,
> +							  "ufsphy");
> +	if (IS_ERR(qmp->ufs_reset)) {
> +		ret = PTR_ERR(qmp->ufs_reset);
> +		dev_err(qmp->dev, "failed to get UFS reset: %d\n", ret);
> +		qmp->ufs_reset = NULL;
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_ufs_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -1835,6 +1782,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> +	ret = qmp_ufs_get_phy_reset(qmp);
> +	if (ret)
> +		return ret;
> +

I think this patch should be split to moving code around to helper fn
and then add logic for moving power up/down calls, pls dont mix
everything in single patch


>  	/* Check for legacy binding with child node. */
>  	np = of_get_next_available_child(dev->of_node, NULL);
>  	if (np) {
> --
> 2.43.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
