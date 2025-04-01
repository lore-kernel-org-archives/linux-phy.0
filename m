Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33BBFC36014
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 15:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZs+UYQXCSLt8bnq6yO0PaWzoJsWBdUfcw4w1uxtW4U=; b=fRT34aCPn/AkjpeZoZcotjcchR
	vjd2dHzD6yxPGbRcGoRbSYnFg85DRhb3qxTURnwwyLw2bUEoEE/uJ7X1IWDcsBqJpRkFXenolVyHw
	DoHDS009pD6oszAKm4VSIDJcC/LaLR92TA8u20I/bbJi5kNsUjJktO3PfrKMA80pw1kq3Jk/z9PR7
	hE3ELBRjdsY/wL0NQkqDnR7iFa10PdbrLUOanPSGTogUczhzcmAah16l72Rg9fr+j1/eE5UtEgDIG
	//rJqrsL5pe45i8LyDBfVm8rwLQJXxpXZu6sSfdmS5bVeEFOf6lpYZNGNvxHlEsedyKEija1j7i+f
	9+tV/YZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzdQL-00000003hmc-3xjJ;
	Tue, 01 Apr 2025 15:21:09 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzdQJ-00000003hkI-11yN
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 15:21:08 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso5481551f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 08:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743520865; x=1744125665; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FULHloGe7p7dzCSBpkWJ6JYEQEYwLsnQIGkgtUI+S/8=;
        b=O0Cc6H0xF3SqeBm+FQZzbS5Ketsz56UupVBoqxRJ5nyWmHq7KZGdx/RN1j+5XwLjUg
         4thtdrsEpR98X20WyIQgYNBgZdpZlRmUwoYurbLESNqH8QqxKH9EN9a/eYM4z9TiLTp/
         XpVXBzVd2INbfNnSnEcjHFi0EZtXIWW4DEuM3RRFiKgvhqJ0ofjkee8X/FAmu+susZ1H
         pvyCc7BoeSpJRlKKM6rKklbf52nEoHdP6oGIwh0mgDEf+wmFFnpDsU3hOeLck3boSgMl
         qFWDxCDP84wQSMfIykVPaIsrhGIcy5P4Yl2qO/unU36lIahHT9gFBjMcIwA1sIRZ91Ve
         tD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520865; x=1744125665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FULHloGe7p7dzCSBpkWJ6JYEQEYwLsnQIGkgtUI+S/8=;
        b=L5pfEmeay104KBinw3OAdzXtzzk0O3sQuPZad0e6Fr3WTvMeURIn+0RzA7bZx9jK3G
         yYB8rh9T8t9fhhCWpLUHvZpJiidN/E7J7SSVypuoW7Gwj1XpDyCXPLiXcWZLDUaa2mT5
         XaS80ACuY8/0h2Kc8tH2vI6GGhLSR9F6TFcgkKslw6Lua3Z3jtK8wG/XtjZzrMQvElEQ
         L5M57zG2LM7nB/OfA3DsKZngBFPgDxWNr8NDbl7epIMczygZhS3Ks1oYisO9CggVP59D
         imQjhHxtQY1NMsCopxBptx4KbgS4IBUVIZK1Fa+T6yJCK5DPM6modryr4l0n9hUms49w
         0OvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2u5XgHMjKEuWCYaaD3uJifzRt1GhN9mSzuuBelcOztS+ylG+JeqM54TeztC4i23/7OUxstgz7jok=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHXZ16oL7n3WYZWLGr5zpLwGcXPSAm3ILMxuBlR9E8WJ4UGWxO
	jN/vdL1ucSHQQnyxgQXuh4wX6TK72X+hp8VaC9dh7gtRMiGLR4c=
X-Gm-Gg: ASbGnct3mZ2rlRLfMvwZw4OHgh6nMOfBvVoof+yA5rGzcBoD9ZtPSrexxTm9QYbS1XF
	58ox95IBaWp0z9NWCKmGnPMAopkSW8D8MCZg0oqa2ZCpFoZYYoCtuvUMWgzoSsqt0w+Ivi9OYyT
	64gLHx+hj8oghmHd7wWdSUBgE0qwax3Ru8WOcNGinGYPQ42RodI7/nDKpYPV0JH3jI9qc/y5Tyh
	zlJdnAROmfnF18Uw0Qm1OuAu9nBFROq2AKsimHwygy1FRti06KHQ7afO06JuW4RtTsntxKE2dqe
	5tFgW68B/LrmUmz6PsATtYIgf/4TrWygiOrlOxfcHrub+7WqDFg4i2Kj1wbkpxciL5AP4PkDght
	xTYyWsiLx7zG+jfMHx90=
X-Google-Smtp-Source: AGHT+IHGmmW/AnkMwcnMBG7+0sAMxS++hIFunwS9tQEbSmykuJYCfQjmdxekG9uOrk5AgH2wTvCw7Q==
X-Received: by 2002:a05:6000:40cf:b0:39a:c80b:8283 with SMTP id ffacd0b85a97d-39c120e3ef7mr9611841f8f.31.1743520865331;
        Tue, 01 Apr 2025 08:21:05 -0700 (PDT)
Received: from [172.21.167.71] (mob-194-230-148-227.cgn.sunrise.net. [194.230.148.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b663470sm14309214f8f.27.2025.04.01.08.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:21:05 -0700 (PDT)
Message-ID: <152fd6fc-41a3-4a2b-bc84-04e309db87cc@gmail.com>
Date: Tue, 1 Apr 2025 17:21:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Wenbin Yao <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
 abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
 konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
 <20250319094544.3980357-3-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
In-Reply-To: <20250319094544.3980357-3-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_082107_298333_BEE7DCC9 
X-CRM114-Status: GOOD (  26.48  )
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



On 3/19/25 10:45, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset which resets the
> whole PHY (hardware and register), no_csr reset only resets PHY hardware
> but retains register values, which means PHY setting can be skipped during
> PHY init if PCIe link is enabled in bootloader and only no_csr is toggled
> after that.
> 
> Hence, determine whether the PHY has been enabled in bootloader by
> verifying QPHY_START_CTRL register. If it's programmed and no_csr reset is
> available, skip BCR reset and PHY register setting to establish the PCIe
> link with bootloader - programmed PHY settings.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Successfully tested on Snapdragon X1-26-100 on Asus Zenbook A14.
This fixes pcie6a_phy with "qcom,x1p42100-qmp-gen4x4-pcie-phy" as 
compatible, which was not working before.

Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 69 ++++++++++++++++++++----
>   1 file changed, 59 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 38dbe690f2d5..23a57152e8fd 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2981,6 +2981,7 @@ struct qmp_pcie {
>   
>   	const struct qmp_phy_cfg *cfg;
>   	bool tcsr_4ln_config;
> +	bool skip_init;
>   
>   	void __iomem *serdes;
>   	void __iomem *pcs;
> @@ -4229,18 +4230,38 @@ static int qmp_pcie_init(struct phy *phy)
>   {
>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	void __iomem *pcs = qmp->pcs;
> +	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>   	int ret;
>   
> +	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
> +	/*
> +	 * We need to check the existence of init sequences in two cases:
> +	 * 1. The PHY doesn't support no_csr reset.
> +	 * 2. The PHY supports no_csr reset but isn't initialized by bootloader.
> +	 * As we can't skip init in these two cases.
> +	 */
> +	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
> +		dev_err(qmp->dev, "Init sequence not available\n");
> +		return -ENODATA;
> +	}
> +
>   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>   	if (ret) {
>   		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
>   		return ret;
>   	}
>   
> -	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> -	if (ret) {
> -		dev_err(qmp->dev, "reset assert failed\n");
> -		goto err_disable_regulators;
> +	/*
> +	 * Toggle BCR reset for PHY that doesn't support no_csr reset or has not
> +	 * been initialized.
> +	 */
> +	if (!qmp->skip_init) {
> +		ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "reset assert failed\n");
> +			goto err_disable_regulators;
> +		}
>   	}
>   
>   	ret = reset_control_assert(qmp->nocsr_reset);
> @@ -4251,10 +4272,12 @@ static int qmp_pcie_init(struct phy *phy)
>   
>   	usleep_range(200, 300);
>   
> -	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> -	if (ret) {
> -		dev_err(qmp->dev, "reset deassert failed\n");
> -		goto err_assert_reset;
> +	if (!qmp->skip_init) {
> +		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "reset deassert failed\n");
> +			goto err_assert_reset;
> +		}
>   	}
>   
>   	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
> @@ -4264,7 +4287,8 @@ static int qmp_pcie_init(struct phy *phy)
>   	return 0;
>   
>   err_assert_reset:
> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +	if (!qmp->skip_init)
> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>   err_disable_regulators:
>   	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
>   
> @@ -4276,7 +4300,10 @@ static int qmp_pcie_exit(struct phy *phy)
>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> -	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> +	if (qmp->nocsr_reset)
> +		reset_control_assert(qmp->nocsr_reset);
> +	else
> +		reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>   
>   	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
>   
> @@ -4295,6 +4322,13 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	unsigned int mask, val;
>   	int ret;
>   
> +	/*
> +	 * Write CSR register for PHY that doesn't support no_csr reset or has not
> +	 * been initialized.
> +	 */
> +	if (qmp->skip_init)
> +		goto skip_tbls_init;
> +
>   	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>   			cfg->pwrdn_ctrl);
>   
> @@ -4306,6 +4340,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qmp_pcie_init_registers(qmp, &cfg->tbls);
>   	qmp_pcie_init_registers(qmp, mode_tbls);
>   
> +skip_tbls_init:
>   	ret = clk_bulk_prepare_enable(qmp->num_pipe_clks, qmp->pipe_clks);
>   	if (ret)
>   		return ret;
> @@ -4316,6 +4351,9 @@ static int qmp_pcie_power_on(struct phy *phy)
>   		goto err_disable_pipe_clk;
>   	}
>   
> +	if (qmp->skip_init)
> +		goto skip_serdes_start;
> +
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
> @@ -4325,6 +4363,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	if (!cfg->skip_start_delay)
>   		usleep_range(1000, 1200);
>   
> +skip_serdes_start:
>   	status = pcs + cfg->regs[QPHY_PCS_STATUS];
>   	mask = cfg->phy_status;
>   	ret = readl_poll_timeout(status, val, !(val & mask), 200,
> @@ -4349,6 +4388,15 @@ static int qmp_pcie_power_off(struct phy *phy)
>   
>   	clk_bulk_disable_unprepare(qmp->num_pipe_clks, qmp->pipe_clks);
>   
> +	/*
> +	 * While powering off the PHY, only qmp->nocsr_reset needs to be checked. In
> +	 * this way, no matter whether the PHY settings were initially programmed by
> +	 * bootloader or PHY driver itself, we can reuse them when PHY is powered on
> +	 * next time.
> +	 */
> +	if (qmp->nocsr_reset)
> +		goto skip_phy_deinit;
> +
>   	/* PHY reset */
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
> @@ -4360,6 +4408,7 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>   			cfg->pwrdn_ctrl);
>   
> +skip_phy_deinit:
>   	return 0;
>   }
>   


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
