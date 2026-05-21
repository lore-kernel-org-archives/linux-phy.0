Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16215CD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 15:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmnxtY4nGgvg4Ca7DRmIqL5B79qz/G/zg8jT0ZDcyck=; b=phkVkzaQ5lN/d/
	FO3pOuYDlK73WIu+4owROHU3EL0VWx4wE2jeKqi7z1Xzq/Yz1W59ManpE1WUEddocl4IF86MLIXwb
	oC0L4AmR6OezyltItz4Gukqh45q8cuQ7PnUxRVwBtnhhAOn4rJF+KjLoPEFKqn23tOwFCoh6x9FMq
	jexTOhtc96QJ1Frjz1UtiTCcxswAnHTu1qfDPLimoMekF7usRUYYDi7VEcfaDSGnQp54HADj2NxJw
	bbNLRCPHZ0yy3RW3Jjll3hdysw3mEaSu03P7kje7/HYFLFvIb9dFo585FzcO0SDsN0svYfFXmGc9S
	KD/Cr8K7cOopZN088W/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5nC-00000008QFa-1t8K;
	Thu, 21 May 2026 15:58:38 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ5n9-00000008QE4-0l3D
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 15:58:36 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-48a7fe4f40bso74429955e9.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 08:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779379112; x=1779983912; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g1j9UgJds853Zv46e1xGjbShW1UJNiQmjpR76/hPVDE=;
        b=UlAD/GaeT/4WRcw+beeIcu4UOqFp1cQTPBOvs+pcZGKQPVqClE968v35XqQwl/GRK3
         WAjBsAGkh/gSS8rg1dzuySR1MIRyqxhyXxo5KBABj3VBAWikzSkFyrxDtEnD8g5+MJFH
         T4VYWz0X1AkRzthogcqaUkTOjLq33qQob3p95f7QMIZ4zTFWVHJ55lfK1anvIsc+uWRu
         O+X1wq/+Z2Vl+sPu3JBMhPiwGlAcIauVzrEYA8edOE8dFLITJFCKLVm6mBQURcO1NsCp
         GHcR5EA33Tv2YGrHjZJXV6xZbP4QFMPne+HG2Ggq5iECKq1WGhPHLeOyvyTDpwG0ZXaQ
         Q/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779379112; x=1779983912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1j9UgJds853Zv46e1xGjbShW1UJNiQmjpR76/hPVDE=;
        b=oS3mVEveIiDSXKUCjlvFUfm6LjJN5Kn11yGmqRggvmMyAzgaoLiYJgfZtHF8xKxncz
         2z69hCj/rHm6cXym8t2nHuqPyqlGhvtixIEon9kSckKXi6KnriZD5bVzN41eF0YYKAd0
         B1CTFHWOOAco7JnFEqFZXOMaUdUlDw4kSVgnPLSFoBY3O7BoTM3IhYpkZE0auFgOyi5O
         /nOHgj8rMGfOZCgpefCDwSlJ9/bEcqfuuuPtKO5N6vVJNWrW0yLvPSoX02XBotQI4Lr8
         0VbLC+Q07FMK5wC0ClWEz6e+Zkh0GE2eR1oyZk/qfD7HuqafL17ljKRC4Bp5yb3rMG5S
         WRUQ==
X-Forwarded-Encrypted: i=1; AFNElJ+byZibfoezZItv5A5LwfgAiZGXXFgutH/yvmyBtkeSSVzTkPWszdRUbXoUcS4lnvxpbYfzqnyceLg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyczsFVvPN7f7gIUNkW+aDSGLT6D7K7lQxDKTEeUgIQ51rpsvPT
	zvxOJnPVR5EXUejw4lZ/7oidjjRazC/oWrDxCYJwCEk56+NGUSZJAIvkJwe7B4g0BQI=
X-Gm-Gg: Acq92OEi3m2tSbLK6+dXnH+JoiDQUcD+3YkKmLRnArx0vSA/No2yIErjypR7gvBpML5
	UcGmfETanvV+N6OLWHRJQ2UeTH89f2yKRTfCHWZD3/W2i9JB/PnC7DNH6NqiPQcH8gtCCuV+L4e
	rqoThcsuwbPDp3SWg0HPWKqz/56SQQQf2aOJPl/0z+x4DEYDcQKwqOHu75+sc1uE3PZQfPealgT
	Hib2yOBQSwsn581mZkkUdlQPlMrcwKC98hKBLsfp1GKKBeX0x60iaStPTmjL1C/2AdDrVGopfDu
	sf2b26HlHR0WhNWer4V2YTPJv6/DUw66VnhxVnDB8mcGZXR/NvVXTDVyinBqjDg9jWfnJj0nZ1w
	IJW5pICupqQUVgW/rnpUzaYrAuOqS/CEzt5h5H5mzy7+VYML2mPf5M44nr++auItfEqZ/+35Xp/
	pr8jyjldI1PE+sK5r7aiubvQOHzRjGH4DWRw==
X-Received: by 2002:a05:600c:444e:b0:489:c57:7836 with SMTP id 5b1f17b1804b1-490360dbb9emr47602385e9.27.1779379111491;
        Thu, 21 May 2026 08:58:31 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.55.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49035eec6casm18452345e9.33.2026.05.21.08.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 08:58:30 -0700 (PDT)
Message-ID: <06964d8d-10a4-4dfc-b0e0-a66eb12f8978@linaro.org>
Date: Thu, 21 May 2026 16:58:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org,
 olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org
References: <20260521-x1e-csi2-phy-v6-2-9d73d9bd7d20@linaro.org>
 <20260521124947.4BE4B1F000E9@smtp.kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260521124947.4BE4B1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_085835_282381_DEFCE141 
X-CRM114-Status: GOOD (  46.27  )
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

On 21/05/2026 13:49, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 10 potential issue(s) to consider:
> - [High] Extensive resource leaks on error paths in power_on and set_clock_rates, and missing OPP rate reset in power_off.
> - [High] phy_qcom_mipi_csi2_configure overrides the DT-parsed lane count without bounds checking against the physical layout.
> - [High] Unconditional dereference of pd_list leads to a NULL pointer dereference panic.
> - [High] Division by zero occurs if the timer clock rate resolves to 0.
> - [High] Settle count calculation can underflow to a very large positive value.
> - [Medium] The ops->lanes_disable callback is omitted in phy_qcom_mipi_csi2_power_off.
> - [Medium] Clock lane positioning and lane polarities are parsed but entirely ignored.
> - [Medium] The probe function allows the absence of an OPP table, but power_on strictly requires it.
> - [Medium] qcom_csi2_phy_xlate accesses PHY arguments without checking args_count.
> - [Medium] Unvalidated data-lanes integer from DT can cause an out-of-bounds bitwise shift.
> --
> 
> commit 3c373b3ab7783a677ec4c98f344d8b1c57e2e110
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
> 
> Add a new MIPI CSI2 driver in DPHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> index 0000000000000..8cdff35be2da9
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> [ ... ]
>> +static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
>> +{
> [ ... ]
>> +	timer_period_ps = div_u64(PSEC_PER_SEC, timer_clk_rate);
>> +	settle_cnt = t_hs_settle_ps / timer_period_ps - 6;
> 
> [Severity: High]
> Can this subtraction underflow to a very large positive value?
> 
> If the system has a low timer clock rate resulting in a high
> timer_period_ps, the division could yield a value less than 6. Since
> settle_cnt is an unsigned 8-bit integer, wrapping around to a large
> value could severely misconfigure the PHY hardware timings.

I'm not sure it is really worthwhile writing defensive code for this case.

We audit every DT binding for clock frequency sanity so you have to 
input junk into a device tree and upstream it and we aren't generally in 
the habit of verifying those inputs.

> 
>> +
>> +	return settle_cnt;
>> +}
> [ ... ]
>> +static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
>> +					   struct mipi_csi2phy_stream_cfg *cfg)
>> +{
> [ ... ]
>> +	settle_cnt = phy_qcom_mipi_csi2_settle_cnt_calc(cfg->link_freq, csi2phy->timer_clk_rate);
>> +
>> +	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE;
> 
> [Severity: Medium]
> The commit message states that data-lane and clock lane positioning and
> polarity selection are supported. Are the polarity fields ignored here?

Exactly the same situation as we already have for this PHY in CAMSS 
since forever.

We parse but don't program the various fields.

> It appears the clock lane enable bit is hardcoded and the polarity fields
> parsed from the DT are not programmed into the PHY registers.

>> +	for (i = 0; i < cfg->num_data_lanes; i++)
>> +		val |= BIT(lane_cfg->data[i].pos * 2);

Yeah this is longstanding behaviour but, its probably worthwhile to 
update it since we consume the data from DT anyway.
> [Severity: Medium]
> Can this result in an out-of-bounds shift?
> 
> The pos value is read from the device tree as an unvalidated 32-bit
> integer. A malformed DT with large lane positions (e.g. > 15) could
> result in a shift value >= 32, which is undefined behavior and might
> truncate the hardware configuration mask.

Still no - not going to spend time picking through what goes into DT in 
the driver.

For example we don't sanity check register values or IRQ vector numbers.
> 
>> +
>> +	writel(val, csi2phy->base +
>> +	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 5));
> [ ... ]
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> index 0000000000000..d8bdb2dd3c2ac
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> [ ... ]
>> +static int
>> +phy_qcom_mipi_csi2_set_clock_rates(struct mipi_csi2phy_device *csi2phy,
>> +				   s64 link_freq)
>> +{
> [ ... ]
>> +	opp = dev_pm_opp_find_freq_ceil(dev, &opp_rate);
>> +	if (IS_ERR(opp)) {
> 
> [Severity: Medium]
> Since the probe function tolerates -ENODEV for the OPP table, won't
> power_on unconditionally fail here if the table is actually missing?
> 
>> +		dev_err(csi2phy->dev, "Couldn't find ceiling for %lld Hz\n",
>> +			link_freq);
>> +		return PTR_ERR(opp);
>> +	}
>> +
>> +	for (int i = 0; i < csi2phy->pd_list->num_pds; i++) {
> 
> [Severity: High]
> What happens to pd_list if CONFIG_PM is disabled?
> 
> devm_pm_domain_attach_list() returns 0 when CONFIG_PM is disabled, but
> pd_list will remain NULL. This would cause a NULL pointer dereference
> here and in phy_qcom_mipi_csi2_power_off().

No idea, lets find out.

>> +		unsigned int perf = dev_pm_opp_get_required_pstate(opp, i);
>> +
>> +		ret = dev_pm_genpd_set_performance_state(csi2phy->pd_list->pd_devs[i], perf);
>> +		if (ret) {
>> +			dev_err(csi2phy->dev, "Couldn't set perf state %u\n",
>> +				perf);
>> +			dev_pm_opp_put(opp);
>> +			return ret;
> 
> [Severity: High]
> Does this leak the performance state for previously set domains?
> 
> If the loop fails on a later iteration, it appears to return without resetting
> the domains that were already successfully configured.

True we need to unwind.

>> +		}
>> +	}
>> +	dev_pm_opp_put(opp);
>> +
>> +	ret = dev_pm_opp_set_rate(dev, opp_rate);
>> +	if (ret) {
>> +		dev_err(csi2phy->dev, "dev_pm_opp_set_rate() fail\n");
>> +		return ret;
>> +	}
>> +
>> +	timer_rate = clk_round_rate(csi2phy->timer_clk, link_freq / 4);
>> +	if (timer_rate < 0)
>> +		return timer_rate;
>> +
>> +	ret = clk_set_rate(csi2phy->timer_clk, timer_rate);
>> +	if (ret)
>> +		return ret;
>> +
>> +	csi2phy->timer_clk_rate = timer_rate;
> 
> [Severity: High]
> What if clk_round_rate() returns 0?
> 
> If the clock is disabled or misconfigured, timer_rate could be 0. Later,
> phy_qcom_mipi_csi2_settle_cnt_calc() calls
> div_u64(PSEC_PER_SEC, timer_clk_rate), which would result in a division
> by zero and a kernel panic.

An esoteric ask since you again have to have bugs in your DT but, for 
the sake of not being spammed by a static analysis tool, sure lets check 
for zero.

>> +
>> +	return 0;
>> +}
>> +
>> +static int phy_qcom_mipi_csi2_configure(struct phy *phy,
>> +					union phy_configure_opts *opts)
>> +{
> [ ... ]
>> +	stream_cfg->link_freq = dphy_cfg->hs_clk_rate;
>> +	stream_cfg->num_data_lanes = dphy_cfg->lanes;
> 
> [Severity: High]
> Does this blindly overwrite the DT-parsed lane count without bounds
> checking against the physical layout?

It takes the lanes_count from the controller DT field.

> If a consumer requests more lanes than are physically mapped in the
> device tree, the hardware configuration could iterate out-of-bounds of
> the initialized array elements, repeatedly applying bitmasks for physical
> position 0.

No the value comes from the controller DT data-lanes field but since we 
are consuming data-lanes from the PHY its actually a worthwhile test to 
validate what the controller says to what we have an -EINVAL if they 
don't agree.

> 
>> +
>> +	return 0;
>> +}
>> +
>> +static int phy_qcom_mipi_csi2_power_on(struct phy *phy)
>> +{
> [ ... ]
>> +	ret = clk_bulk_prepare_enable(csi2phy->soc_cfg->num_clk,
>> +				      csi2phy->clks);
>> +	if (ret) {
>> +		dev_err(dev, "failed to enable clocks, %d\n", ret);
>> +		goto poweroff_phy;
>> +	}
>> +
> [ ... ]
>> +poweroff_phy:
>> +	regulator_bulk_disable(csi2phy->soc_cfg->num_supplies,
>> +			       csi2phy->supplies);
>> +
>> +	return ret;
> 
> [Severity: High]
> Does this error path leak the performance state and OPP rate?
> 
> It seems to only disable regulators, completely missing the cleanup for
> dev_pm_genpd_set_performance_state() and dev_pm_opp_set_rate().
> 

When the clocks disable the perf state _should_ drop back but, I will check.

>> +}
>> +
>> +static int phy_qcom_mipi_csi2_power_off(struct phy *phy)
>> +{
>> +	struct mipi_csi2phy_device *csi2phy = phy_get_drvdata(phy);
>> +	int i;
>> +
>> +	for (i = 0; i < csi2phy->pd_list->num_pds; i++)
>> +		dev_pm_genpd_set_performance_state(csi2phy->pd_list->pd_devs[i], 0);
> 
> [Severity: High]
> Does this leave the OPP frequency vote elevated?
> 
> It doesn't look like dev_pm_opp_set_rate(dev, 0) is called to release
> the OPP frequency vote.
> 
> [Severity: Medium]
> Is the ops->lanes_disable() callback intentionally omitted here?
> 
> Disabling the clocks and regulators without invoking the callback
> bypasses the hardware-specific teardown sequence (like clearing
> CLK_ENABLE and COMMON_PWRDN_B). Could this leave the PHY in an invalid
> logical state for the next power-on cycle?

I mean, when power goes off you loose the state in the regs ... but for 
the sake of completeness sure, I will add this.

>> +
>> +	clk_bulk_disable_unprepare(csi2phy->soc_cfg->num_clk,
>> +				   csi2phy->clks);
>> +	regulator_bulk_disable(csi2phy->soc_cfg->num_supplies,
>> +			       csi2phy->supplies);
>> +
>> +	return 0;
>> +}
> [ ... ]
>> +static struct phy *qcom_csi2_phy_xlate(struct device *dev,
>> +				       const struct of_phandle_args *args)
>> +{
>> +	struct mipi_csi2phy_device *csi2phy = dev_get_drvdata(dev);
>> +
>> +	if (args->args[0] != PHY_TYPE_DPHY) {
> 
> [Severity: Medium]
> Can this access uninitialized stack memory?
> 
> If the device tree node has #phy-cells = <0>, args_count will be 0, and
> reading args->args[0] might yield uninitialized memory, leading to
> unpredictable behavior or the incorrect rejection of valid PHY bindings.
> Should args->args_count be checked first?

I feel the answer is "no" but I'm not averse to checking.

> 
>> +		dev_err(csi2phy->dev, "mode %d -EOPNOTSUPP\n", args->args[0]);
>> +		return ERR_PTR(-EOPNOTSUPP);
>> +	}
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
