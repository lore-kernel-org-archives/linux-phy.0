Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F22C0219B
	for <linux-phy@archiver.kernel.org>; Wed, 12 Feb 2025 00:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uS9aq+qGXjaefoke5w+eixrvjWBH3OO/RNX/b56ItHs=; b=Tq/+21uVqYutbS
	m+RrKRqqDiyVCuQaz0WZEyU76DailwRxWGoc0w1PIkn1+NOn/NxvaY4wL6bjjlyGgcaiZF9/NeGcX
	MzdOy6hpRqlTxcK7Zyvs3JuhA7FOolQBqez4Thh66u04zv/PVEHjOj/TA2wUiXSWiJib9VBIzJiwf
	HSziFZnKVEVhIxUpM8cqyXYgpKSMqLzS/AFgQzwAFlQNI4JHMztNEbdKIUk/ed4snsrME4ENeaktw
	4jut/neR5Ctmy/y7D1jNio8NfupjDs7O4FjWJvzsmypB9ugpluw1im5BguJXWFvhM9nXiMYIkU7GH
	gE632Bg4ENuDf4uaK8ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti0Nb-00000005fSS-2e7b;
	Wed, 12 Feb 2025 00:13:27 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ti0NZ-00000005fS2-3gQx
	for linux-phy@lists.infradead.org;
	Wed, 12 Feb 2025 00:13:27 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54509f46614so3304155e87.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Feb 2025 16:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739319204; x=1739924004; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=09rdko5VnFpqLqbQWkI5gnzT1kNBqMtoAA5n9hDbxAo=;
        b=mDjurjb5Kv7hcVPs6ifhyDZ/ztURFtNI8Vl0lE2GLu10lhILe3MASWndaTm71wnpVH
         MxJRHSMBGfgX+y3juZJLmoC/ECCFakvt7sFKz7OXau3X+CnIs6IMwcnIG1DGCcMTOAxB
         SuvC5yxiTZsvvsQJR8I5Lazn1Rf27Qb78rmSG1B5oUPO2np8hCm+Ye3d3PWT1nFSmNLc
         2DYPYiCUlZj3yg7XUfvcM5FLL4Gx/+OrfYf1mbeYDkdwn0+3G/4RcFCBJ9K7Nf83e924
         zRey+6w5LzELxS73ysLJUe+MwVk8QtKG62Xytth4uY1FyB/l7Epta2mh/g4cS26uGKxu
         IfvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739319204; x=1739924004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=09rdko5VnFpqLqbQWkI5gnzT1kNBqMtoAA5n9hDbxAo=;
        b=a3aVubRsGk/c2abLi2iL5R6hhKcIez5OZVn2NQYxG4i+KpoFXu4JJcxlXraAEzmt+d
         jAV47iAzV8aNLCOPutkWZB05RzbJXlURV9elq1Ox44Hylc0wkdnmNKz7JSAXlkIxm4+J
         10nvmkqRahwN4CQU5HMJ6hZPvGhYHji1DEXp2CBuTAs8WNUQ8axLCh88bkrmyTTIFknH
         CulpxoHmRY38UGigHr5qNvCIBftDeqy/8ONbFnbnbLSODaoC3MzPsJcuNDbenED7s/is
         KdsdSYOCxHogKq9ENkerMLg8USYzrHAZgt1f43k6gBTdBR1FSz6jPfQuy3Z/vvxpICpO
         9WHA==
X-Forwarded-Encrypted: i=1; AJvYcCV8R5Pz1dKIztpe2HjKDj31eQZwW6nHaweaS9GOqiS+npaAKuCv67QpFk0Mly0LgympKAtmpw1QAnA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyYKyEyvjCS14GD/Zo6x76grv+awTjx0lW9s3ublPwRQzWyD7S
	DHP0RJ132rYBydgEcUXnUmdoOwgaY6FOlmIszVwOkVUdw7hWcEkF5XPBAyAVTOk=
X-Gm-Gg: ASbGncsUyJM4lf6ICk6kwVNd0e9lwfcXA+/mRfbcnOsg9j1dqpXi4eo4z3kiNuYJ2Sb
	KuuLJVX6A5Q17iL623grSnrbXnNEI2vi/g6nd2lCly0BjPPOSWCMmHOJiKkp6zDtgKZKmgL9FV4
	xP72JzwZTHVzINuZW+vzTqqPwUHegNvc2cGcWtYVVVGm3UMFbgb6NRhJd9CqGf7W5E+1YnskDh/
	sEePbEvhPGc56iggBu6yAwsSuFNDq4ZGJYfAlhgIXLjJY6zy8VtZtJ4q6RS78mk3xjVIWWwgVvM
	JnCqr0bnLfzGnNsXdszmBF/GhGeJ0aqfT5nWIyRHaOgh38OtLK8wBX5rB42ZqfCV4XcJQZA=
X-Google-Smtp-Source: AGHT+IHgVatrLZ/ZeYnRWB0ZM6rywyAVkWjefzKWqV7sKscFBHR+wM/ltf3GM+1GfPZl8mnRuMYC9Q==
X-Received: by 2002:a05:6512:2031:b0:545:54b:6a0e with SMTP id 2adb3069b0e04-54518182960mr253317e87.48.1739319203556;
        Tue, 11 Feb 2025 16:13:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5441053eb53sm1684741e87.36.2025.02.11.16.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 16:13:22 -0800 (PST)
Date: Wed, 12 Feb 2025 02:13:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de, 
	abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <7deghiadmomrz7w7vq3v7nkzq2kabq4xbhkouswjrexif7pip3@tvjlpvuulxvp>
References: <20250211094231.1813558-1-quic_wenbyao@quicinc.com>
 <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250211094231.1813558-3-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_161325_938694_3914CCAC 
X-CRM114-Status: GOOD (  28.30  )
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

On Tue, Feb 11, 2025 at 05:42:31PM +0800, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
> whole PHY (hardware and register), no_csr reset only resets PHY hardware
> but retains register values, which means PHY setting can be skipped during
> PHY init if PCIe link is enabled in booltloader and only no_csr is toggled
> after that.
> 
> Hence, determine whether the PHY has been enabled in bootloader by
> verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
> available, skip BCR reset and PHY register setting to establish the PCIe
> link with bootloader - programmed PHY settings.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
>  1 file changed, 58 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index ac42e4b01065..7f0802d09812 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2805,6 +2805,7 @@ struct qmp_pcie {
>  
>  	const struct qmp_phy_cfg *cfg;
>  	bool tcsr_4ln_config;
> +	bool phy_initialized;
>  
>  	void __iomem *serdes;
>  	void __iomem *pcs;
> @@ -3976,6 +3977,7 @@ static int qmp_pcie_init(struct phy *phy)
>  {
>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *pcs = qmp->pcs;
>  	int ret;
>  
>  	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> @@ -3984,10 +3986,17 @@ static int qmp_pcie_init(struct phy *phy)
>  		return ret;
>  	}
>  
> -	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> -	if (ret) {
> -		dev_err(qmp->dev, "reset assert failed\n");
> -		goto err_disable_regulators;
> +	qmp->phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
> +	/*
> +	 * Toggle BCR reset for phy that doesn't support no_csr
> +	 * reset or has not been initialized
> +	 */
> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {

Instead of having phy_initialized please add another boolean field,
qmp->skip_init = !!qmp->nocsr_reset && !!phy_initialized;
Use qmp->skip_init through the code.

> +		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "reset assert failed\n");
> +			goto err_disable_regulators;
> +		}
>  	}
>  
>  	ret = reset_control_assert(qmp->nocsr_reset);
> @@ -3998,10 +4007,12 @@ static int qmp_pcie_init(struct phy *phy)
>  
>  	usleep_range(200, 300);
>  
> -	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> -	if (ret) {
> -		dev_err(qmp->dev, "reset deassert failed\n");
> -		goto err_assert_reset;
> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> +		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "reset deassert failed\n");
> +			goto err_assert_reset;
> +		}
>  	}
>  
>  	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
> @@ -4011,7 +4022,8 @@ static int qmp_pcie_init(struct phy *phy)
>  	return 0;
>  
>  err_assert_reset:
> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +	if (!qmp->nocsr_reset || !qmp->phy_initialized)
> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  err_disable_regulators:
>  	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>  
> @@ -4023,7 +4035,10 @@ static int qmp_pcie_exit(struct phy *phy)
>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  
> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +	if (!qmp->nocsr_reset)
> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +	else
> +		reset_control_assert(qmp->nocsr_reset);
>  
>  	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>  
> @@ -4042,16 +4057,22 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	unsigned int mask, val;
>  	int ret;
>  
> -	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -			cfg->pwrdn_ctrl);
> +	/*
> +	 * Write CSR register for phy that doesn't support no_csr

what is CSR register?

> +	 * reset or has not been initialized
> +	 */
> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> +		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +				cfg->pwrdn_ctrl);
>  
> -	if (qmp->mode == PHY_MODE_PCIE_RC)
> -		mode_tbls = cfg->tbls_rc;
> -	else
> -		mode_tbls = cfg->tbls_ep;
> +		if (qmp->mode == PHY_MODE_PCIE_RC)
> +			mode_tbls = cfg->tbls_rc;
> +		else
> +			mode_tbls = cfg->tbls_ep;
>  
> -	qmp_pcie_init_registers(qmp, &cfg->tbls);
> -	qmp_pcie_init_registers(qmp, mode_tbls);
> +		qmp_pcie_init_registers(qmp, &cfg->tbls);
> +		qmp_pcie_init_registers(qmp, mode_tbls);
> +	}
>  
>  	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
>  	if (ret)
> @@ -4063,15 +4084,16 @@ static int qmp_pcie_power_on(struct phy *phy)
>  		goto err_disable_pipe_clk;
>  	}
>  
> -	/* Pull PHY out of reset state */
> -	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> +	if (!qmp->nocsr_reset || !qmp->phy_initialized) {
> +		/* Pull PHY out of reset state */
> +		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>  
> -	/* start SerDes and Phy-Coding-Sublayer */
> -	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
> -
> -	if (!cfg->skip_start_delay)
> -		usleep_range(1000, 1200);
> +		/* start SerDes and Phy-Coding-Sublayer */
> +		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START);
>  
> +		if (!cfg->skip_start_delay)
> +			usleep_range(1000, 1200);
> +	}
>  	status = pcs + cfg->regs[QPHY_PCS_STATUS];
>  	mask = cfg->phy_status;
>  	ret = readl_poll_timeout(status, val, !(val & mask), 200,
> @@ -4096,16 +4118,19 @@ static int qmp_pcie_power_off(struct phy *phy)
>  
>  	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>  
> -	/* PHY reset */
> -	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>  
> -	/* stop SerDes and Phy-Coding-Sublayer */
> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
> -			SERDES_START | PCS_START);
> +	if (!qmp->nocsr_reset) {

Why this one doesn't check for the qmp->phy_initialized?

> +		/* PHY reset */
> +		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>  
> -	/* Put PHY into POWER DOWN state: active low */
> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> -			cfg->pwrdn_ctrl);
> +		/* stop SerDes and Phy-Coding-Sublayer */
> +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
> +				SERDES_START | PCS_START);
> +
> +		/* Put PHY into POWER DOWN state: active low */
> +		qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
> +				cfg->pwrdn_ctrl);
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
