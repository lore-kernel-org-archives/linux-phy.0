Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED65AC44512
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 22:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ScaMPoiu+AgcV8bUmfH26HQUPoLg2l0JA1jBEPooco=; b=FHmmnTEcuevcjn
	XMmWYhU7lDfXgdI+OCFKnZ7+ZC/sCTB2sa64WmZ7mD5z2wvCOOi7hvh+WeKblm89TzQTtQOVf0lSo
	+6V6/aPtlnkcKud0arQxKjQJJ/mcaYeSj3WC6hhNIANbyS0kJGqdSOOyCpuktT5rJ4IfoelEdB0tF
	q1R3+88I59N//Qwq8AJhNT9s9WPRNV94VmTlTPnyPAiJ/La2QzzCExE9AEJXomuarSdgyXp9VrCar
	NjCQIRrlqD+Ov3QwgK/Hx27x/qkdR8P8O646wDikxSnL/9CmNAZNdT+6wv5JOu/XOKp8IpGVvI6t8
	XQr3WRbmSTKHC3/o6Cmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wla1v-00000005RJZ-1F05;
	Sun, 19 Jul 2026 22:30:39 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wla1s-00000005RJ8-2g1x
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 22:30:37 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4955158f26aso8065625e9.3
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 15:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784500235; x=1785105035; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VNPJswjr3SJLrlJpAZg7EHmOY10XaD74Uxuqros5GpM=;
        b=lKFJaDP9y9LpOoFAV+Dw14c93Lz9odXGpMimSFD911iy4EVKF0u3+yMvQ88RT8brEV
         jWVSr7NG68wB1d27cHZM3IrUhzD185kopVyvf8tUWwXURYx6ZXLldzSLLM0nZW8umjgm
         ZhG0O3WNQTuc6rk8jEc54/JvSXgHe0YpyCXr/T4BGmFP4dOtW6XQ6esQ011v+iVrUqwJ
         UNJEW2GBZbahI220cGxEBxHXHlaKG2r/DTqWzVUQYMmXc3FaEbZ6AOQenc/XRBk7yuvg
         MKNC6tqlz3pLgru+yzuTr1qjaxmmcnMJrERHNNqmJ6h29zYuWBrczdn6TFQLaAbNy/cs
         y80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784500235; x=1785105035;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VNPJswjr3SJLrlJpAZg7EHmOY10XaD74Uxuqros5GpM=;
        b=eyL0g3P2G6tiOFKOMBZoDaem2uJFeshTcJWb8+QGlvrvPi4iIBv5UhSJnq360+XPQg
         a7cXP+xgAWjDkNHoTiEpgEA3z/5z2jcgz2/IsQ1cegORXx3qeKJUUIjsTB7sAwx5+drB
         ww8yEUeb8HCe78sEo/e8eLuszkcMuhR4uySn+gdosxII/T8MWNpRwB66JSFWfLlH/VUD
         Lf3hISq1b6rFRIgomZmoprAeqKPJB0LcYQDostkIVzTW+af/qYF/vmAkLWb+iBHShdgy
         VOjmh+0oi1z829IfpzCZRPIXlDCO6b8O3AkMBhHNoOemhMK6hhT8qQ2CROc+JiL2AQc8
         Wt1A==
X-Forwarded-Encrypted: i=1; AHgh+Rrl/rTtw1FkHQbj1cRtkIZW5PQgWXBXCl0HkDMWRli7oj+gI79npjIPj3t2Uy906J+oTODJ8xGw5XA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlNaO8dETK0kpXBr9vex3kVhfbeasR2khA5ancTxgEMfuxAMVh
	on/UeNYLDamt537xqALMBK5RA51gjs2NJs5vy0YF62jAneots8PEFuxmwpEkUekmHSoqP+bVErl
	LVT/VN78=
X-Gm-Gg: AfdE7clBbwETKMV85Ir/0S9U8DULYDkOX14nGQFoZdCjcP7JQJ05fOymB4R8wgc6a7H
	HYyKfsYzUmZdabhiTCJjoJiQF4uRRDug2DEUEcviN59AKkPgCdJftI5xhhbnofFCUKjog0er0Pn
	jWzPqODeXzI8xcf1PcuamdpVilDSJgHxvwfKAYhPIqn+USRQPCA0hxoTIVThd4On6RXaCTrEUV7
	FR8cPiMopCgUFGmcea6937sQKaIE/cb6RTCA0GwJF91b/EvquP0GayO6y2NQe4UgTwOebKkVr4u
	G7B+4pYx1DoV7JCsQHa+ePqWATdoh0Ix3zl8aAh98I0txgj3py7MsslH4MKCvIAEYyBDXEDzfTz
	PwzkIMfqO/PfSyRpiG519puNGfp15JDLCEDGgV4H/2C2iklNxJfh7Yl23Ru0wTpecDdY/s7KYQc
	inTkq3RQPNh09R9+0bvwdkugvw
X-Received: by 2002:a05:600c:4445:b0:493:f262:b8 with SMTP id 5b1f17b1804b1-4954a3e374cmr116983045e9.1.1784500234679;
        Sun, 19 Jul 2026 15:30:34 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.79.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954a2edda2sm217846365e9.13.2026.07.19.15.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jul 2026 15:30:34 -0700 (PDT)
Message-ID: <61f7c25d-fd50-42bd-aabc-8da1ea28e233@linaro.org>
Date: Sun, 19 Jul 2026 23:30:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org, olteanv@gmail.com
References: <20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org>
 <20260719-x1e-csi2-phy-v12-2-cc7311326d1b@linaro.org>
 <20260719135920.2195A1F00A3A@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260719135920.2195A1F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_153036_737525_C79017DA 
X-CRM114-Status: GOOD (  29.25  )
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

On 19/07/2026 14:59, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] Valid calculated settle_cnt of 0 is erroneously rejected as an error, causing PHY initialization to fail.
> - [High] Potential NULL pointer dereference in clock name comparison during probe when parsing malformed device trees.
> - [Medium] Missing PM_OPP Kconfig dependency causes unconditional runtime probe failures.
> --
> 
> --- Patch [2]: [PATCH v12 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver ---
> commit 7fdedc509474184e47a62af468ae08b71f96dfd5
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Subject: phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
> 
> This commit adds a new MIPI CSI2 driver in DPHY mode. It imports existing
> CAMSS CSI PHY initialization sequences to support devices like the
> qcom,x1e80100-csi2-phy.
> 
>> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
>> index 60a0ead127fa9..779a3511ba852 100644
>> --- a/drivers/phy/qualcomm/Kconfig
>> +++ b/drivers/phy/qualcomm/Kconfig
>> @@ -28,6 +28,20 @@ config PHY_QCOM_EDP
>>   	  Enable this driver to support the Qualcomm eDP PHY found in various
>>   	  Qualcomm chipsets.
>>   
>> +config PHY_QCOM_MIPI_CSI2
>> +	tristate "Qualcomm MIPI CSI2 PHY driver"
>> +	depends on ARCH_QCOM || COMPILE_TEST
>> +	depends on OF
>> +	depends on PM
>> +	depends on COMMON_CLK
>> +	select GENERIC_PHY
>> +	select GENERIC_PHY_MIPI_DPHY
> 
> [Severity: Medium]
> Should this Kconfig entry select or depend on PM_OPP?
> 
> Without CONFIG_PM_OPP enabled, the stub for devm_pm_opp_of_add_table()
> used during probe will return -EOPNOTSUPP, causing the driver probe to
> unconditionally fail with an "invalid OPP table" error.

By design in fact as a result of a Sashiko review as I recall. Context 
window between runs seems required for this tool.

> 
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
>> new file mode 100644
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
> 
> [ ... ]
> 
>> +static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
>> +					   struct mipi_csi2phy_stream_cfg *cfg)
>> +{
>> +	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
>> +	struct mipi_csi2phy_lanes_cfg *lane_cfg = &cfg->lane_cfg;
>> +	u8 settle_cnt;
>> +	u8 val;
>> +	int i;
>> +
>> +	settle_cnt = phy_qcom_mipi_csi2_settle_cnt_calc(cfg->link_freq, csi2phy->timer_clk_rate);
>> +	if (!settle_cnt)
>> +		return -EINVAL;
> 
> [Severity: High]
> Does this incorrectly reject a valid settle count of zero?
> 
> Looking at the math in phy_qcom_mipi_csi2_settle_cnt_calc():
> 
> phy_qcom_mipi_csi2_settle_cnt_calc() {
>          ...
>          settle_cnt = t_hs_settle_ps / timer_period_ps - 6;
>          return settle_cnt;
> }
> 
> If the link frequency and timer clock rate yield exactly 6 timer periods
> for t_hs_settle, the calculation results in 0. By rejecting 0 here,
> legitimate MIPI CSI2 configurations might fail to initialize.

Yeah, I guess a zero settle count should be legitimate.

> 
>> diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
>> new file mode 100644
>> --- /dev/null
>> +++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
> 
> [ ... ]
> 
>> +static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
>> +{
> 
> [ ... ]
> 
>> +	ret = devm_clk_bulk_get_all(dev, &csi2phy->clks);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "Failed to get clocks\n");
>> +
>> +	if (num_clk != ret) {
>> +		return dev_err_probe(dev, -ENODEV, "clock count %d expected %d\n",
>> +				     ret, num_clk);
>> +	}
>> +
>> +	for (i = 0; i < num_clk; i++) {
>> +		if (!strcmp(csi2phy->clks[i].id, "timer")) {
> 
> [Severity: High]
> Could csi2phy->clks[i].id be NULL here?
> 
> The clk_bulk_get_all() infrastructure can leave the .id field as NULL if
> the device tree node has a "clocks" property but is missing "clock-names".
> Calling strcmp() on a NULL pointer will cause a kernel panic during probe
> when parsing malformed device trees.

clock-names are required in the schema but sure I add a check for this.

This ping-pong with this tool is taking forever, I need to figure out 
how to run this locally to stop wasting my own time.

>> +			csi2phy->timer_clk = csi2phy->clks[i].clk;
>> +			break;
>> +		}
>> +	}
>> +	if (!csi2phy->timer_clk)
>> +		return dev_err_probe(dev, -ENODEV, "no timer clock\n");
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
