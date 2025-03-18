Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4F5C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 19:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdQmTPAKGTh2CBSQhvPI3XLUTaFgur80fpDjL37fH7E=; b=1pRrVlSlEpcL7T
	VBCLOQWtqu5WfohoPK3roFwlMwKImN1JJCLLklcVfs8ZpoVnrwV4xgo+HMKAIlAtJDjJ4tO+bMfCz
	owSWA3u1T+ED95Tskg12gCS/ETXCMOzg83HwHcWqqrE28RCM/Ohy/a+5Z11cwPS2T1uK7gbYadvea
	Wv3FKGEReRESx2jeXAK7y3v+ttssa2q0Lsi0bO0+yFLXQgKN0JKgvR6ZxEBL5emL/1+oZHE9frt/q
	f82UNzlmzxPtQkYQV2kJdLneffOOa1roQ47sx7Hvg9HhVHRC0DlepW2Ov/oNJEhbUVmKTrtXB33xm
	xeGmIq6ACouQuKS0Rs4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuctH-00000006wzm-3WDn;
	Tue, 18 Mar 2025 19:46:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuctF-00000006wyd-1wz0
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 19:46:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 56D245C047C;
	Tue, 18 Mar 2025 19:43:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1886FC4CEDD;
	Tue, 18 Mar 2025 19:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742327175;
	bh=lEKbj7qrSRjeNGVY4SRKByN692s3IiIjiIa6ElYv0SQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hKxEFzI4269RyrslzX6RBJfahrwMkeMcZ7IDGJNxY7R5O0/6KFt1KQV34UYHBjClv
	 jSmDwB7YaoiFvGtw18ohBXalAdhlQKjVVKn0qSqNfKdivO5ovMOsN7nOyywND/fFzz
	 88lidbIYxHbh0QzqHeE5sJyioZL8HyVbtxrUwnE2sQAiD8ADjU0LgGr0chArRczLFt
	 Mhi/ryxgy6HqlzOypB0deT4Nj+RFJlIqkctF9tuoNgXTj4AhAFjrDe9viQI1PbGqnU
	 PqGcyHXgZN1PCRUnurKFA7i7NOsgTWH7Stlk4AIeJ5OYwTB21/LdSkDy6TI3+hlkT6
	 Jc1dg37l11GxQ==
Date: Tue, 18 Mar 2025 14:46:13 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, konrad.dybcio@oss.qualcomm.com, 
	quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V2 3/6] phy: qcom-qmp-ufs: Refactor UFS PHY reset
Message-ID: <w3si5lpps5nzpyxjulxynl3fxwobtbnfsqwau6et5s2pkgehub@vcmkdaevbf5w>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-4-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250318144944.19749-4-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_124617_619028_AE04714F 
X-CRM114-Status: GOOD (  30.87  )
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

On Tue, Mar 18, 2025 at 08:19:41PM +0530, Nitin Rawat wrote:
> Refactor the UFS PHY reset handling to parse the reset logic only once
> during probe, instead of every resume.
> 

This looks very reasonable! But it would be preferred to see the commit
messages following the what format outlines in
https://docs.kernel.org/process/submitting-patches.html#describe-your-changes
with a clear problem description followed by a description of the
technical solution.

> Move the UFS PHY reset parsing logic from qmp_phy_power_on to
> qmp_ufs_probe to avoid unnecessary parsing during resume.

Please add ()-suffix to function names in your commit messages.

Also, this series moves things around a lot, can you confirm that UFS is
working inbetween each one of this patches, so that the branch is
bisectable when this is being picked up?

> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 104 ++++++++++++------------
>  1 file changed, 50 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 0089ee80f852..3a80c2c110d2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1757,32 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>  	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>  }
> 
> -static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	void __iomem *pcs = qmp->pcs;
> -	int ret;
> -
> -	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> -	if (ret) {
> -		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -		return ret;
> -	}
> -
> -	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
> -	if (ret)
> -		goto err_disable_regulators;
> -
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> -
> -	return 0;
> -
> -err_disable_regulators:
> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -
> -	return ret;
> -}
> -
>  static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1800,41 +1774,27 @@ static int qmp_ufs_power_on(struct phy *phy)
>  {
>  	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *pcs = qmp->pcs;

This is only used once, perhaps not worth a local variable to save 5
characters on that line?

>  	int ret;
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
> 
> -		ret = reset_control_assert(qmp->ufs_reset);
> -		if (ret)
> -			return ret;
> +	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);

regulator_bulk_enable() will already have printed a more useful error
message, letting you know which of the vregs[] it was that failed to
enable.

> +		return ret;
>  	}
> 
> -	ret = qmp_ufs_com_init(qmp);
> +	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
>  	if (ret)
> -		return ret;
> +		goto err_disable_regulators;
> +
> +	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
> 
>  	return 0;
> +
> +err_disable_regulators:
> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> +
> +	return ret;
>  }
> 
>  static int qmp_ufs_phy_calibrate(struct phy *phy)
> @@ -1846,6 +1806,10 @@ static int qmp_ufs_phy_calibrate(struct phy *phy)
>  	unsigned int val;
>  	int ret;
> 
> +	ret = reset_control_assert(qmp->ufs_reset);
> +	if (ret)
> +		return ret;
> +
>  	qmp_ufs_init_registers(qmp, cfg);
> 
>  	ret = reset_control_deassert(qmp->ufs_reset);
> @@ -2088,6 +2052,34 @@ static int qmp_ufs_parse_dt(struct qmp_ufs *qmp)
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

This is invoked only once, from qcom_ufs_probe(), so it doesn't seem
accurate anymore. How come this is no longer needed? Please describe
what changed int he commit message.

> +	 */
> +	if (!qmp->ufs_reset) {
> +		qmp->ufs_reset =
> +		devm_reset_control_get_exclusive(qmp->dev, "ufsphy");

The line break here is really weird, are you sure checkpatch --strict
didn't complain about this one?

> +
> +		if (IS_ERR(qmp->ufs_reset)) {
> +			ret = PTR_ERR(qmp->ufs_reset);
> +			dev_err(qmp->dev, "failed to get PHY reset: %d\n", ret);

return dev_err_probe(qmp->dev, PTR_ERR(qmp->ufs_reset), "failed to...: %pe\n", qmp->ufs_reset);

While being more succinct, it also stores the reason for failing the
probe so that you can find it in /sys/kernel/debug/devices_deferred

> +			qmp->ufs_reset = NULL;

Use a local variable if you're worried about someone accessing the stale
error code after returning here.

Regards,
Bjorn

> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_ufs_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -2114,6 +2106,10 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> +	ret = qmp_ufs_get_phy_reset(qmp);
> +	if (ret)
> +		return ret;
> +
>  	/* Check for legacy binding with child node. */
>  	np = of_get_next_available_child(dev->of_node, NULL);
>  	if (np) {
> --
> 2.48.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
