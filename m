Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 399DCCD5BA4
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 11:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxvIGj3C2iiHfYs/47mvGiGP2F2EDfedGboRSXqQGDU=; b=QiiuCSppit07BZ
	aDUAwxsKsLs3E+PP5Zd5j+sNNsGa/NJFWnHs4kLTTCU7OxvUBwCq1kSGLiHvu+V/fzIuz4WWSoKNx
	mOi1Wgm+l4paYGrXxJTGhOxkRf5FrxBZbJpDNIkrbywO12sm6qZKTX9efRK5sAnJIrHUlZ/Yk9cMm
	/ewVMuagyo1M+vOfJVwB4ycnuXUM0QQo/K4r6Wy78qGg/lkRNLnIq5P6iIrxntpvNxTFFwATAr0cM
	nV/J5JHaYDyOOlAILK7uOVMSLh9J1DFY2Tf5Wy+Piv/khRbh8NbNGsTPF8r8sVLr9FKaMKOTGqA4t
	1Rj5DXLeAZgArjndIlkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ22e-00000007fMh-1W4y;
	Thu, 21 May 2026 11:58:20 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ22b-00000007fLv-1t0j
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 11:58:18 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-44a044cb827so4439639f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 04:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779364695; x=1779969495; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4stJ0wGm3jktbxjyMiS2oEBiggoOgvX2rImz04PGH7E=;
        b=hRDGy86Uj0E9GMnQc9myPe4aFp4m+bcxNO/bwejIBnMYa+LMN8OgZsLz+7ruEN8x3/
         MGnrUfazlBLsbNroSPHZZUgY2ZgZXZiGuug6WcZTbuPqjJC4b/ndGdHatZlQWNSM8pr5
         u13moBW+vLEsLWH9a9gA1TklqrRvRLwF87q+/VOMX2kcliL+HR1RJcIHcszIRim80Vh7
         3xU5i3seC7uGv8USQ2GnPF2FN9MFlg+MUE0mcJDg+nHEfBy/9+SjB/q0qFEfwoRJ2JdE
         Gwh4pGCdUinSI/X13YpYv0HWLW0VQGqEm73KMvPuD57jGp1gNH2+sRBCkA8bsOK4rfy4
         /oCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779364695; x=1779969495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4stJ0wGm3jktbxjyMiS2oEBiggoOgvX2rImz04PGH7E=;
        b=Dq9qPBq8sfOoqfEQQWtAIQYP+6U0swii4HjTnDXkj7IrXIE3YYqTHQU1EBffH/VtUw
         BWyQROaQ8cWRWNSf2lA7ojGLNgHXBNWxpL1Il75vEd0kGd8RKKzGItR2kAHT7B6Xbiaq
         0LRDQ3rooBBcmCy8mYHs9ocTDLaojbXBXa8tVx9c+j87ceSClz8yTUCEAkIjmHXVNgc2
         9vP+YWK2w7R0fnHpQDSXwX8ClBMH1ADrzh1oI0LxWki2vlyWLV/GfMFkSsZq8nN4boTJ
         pAgxZePH4Y3fLgqU7u/iKUHfSFalCvIcR/ixEcjELcMAhLEcWIcCX5oICzB4qqawLq/D
         0pgQ==
X-Forwarded-Encrypted: i=1; AFNElJ8dXe3UhGcaLUfgVs8u9dPc/s+4or6gAXxk6urz1R0TdcWoG5/Ftz3J+YH6+ZMpVm/7bxxeLpXIsW0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzP0qIjlHwqxxIP2deRMc5WEygSiRXxpswhzW9apkDxhaf4QZxx
	IEMF0h8aj6oKYKnUwq8SQ/OK03woft6F+UAxvACCL4S4oCTaibrZRwMh3KPLsmVVJ4A=
X-Gm-Gg: Acq92OHs+kdlmRWHUEr9Lc9Oc9xey+LqM/Iji2Y6vY2LP3zDyaLv8PstQPrcx/cLm+S
	GCaGDH3AgCvTWmRSr5gUshUmNADT52P3mV6ilzR0w4v/WBEgjUMxdPqIVbMvjViIulyrep+Y/fQ
	CI78ALUI9iOyhC47fxeUZiylrG3rCsjTxAwbBhBE1HfkalsnS6rotfeQdwiiB9/ROXxdvcDmuYl
	Ez8IODjVGVQCqDetE7XRtawnUd37jaXF8uJyZfF7SkH0VPsq60feOrAqnUWD4Lx7tRXGBV7KmQo
	Y0IZJivcU8KQH/+4/mgaGuhOjV495paSgoxgQhKBU2o6PB1uRnD5erZcFUPksGRlDwCfphrQtyK
	c6o3gapmApv3mIjCBlcCZv3I2qpqSGY+IGQsdbrJSW2QQ5HP3SS3NTfR8OlMyx9iUuod861Hham
	OQKzo6cy6moR/u2Iplo5PIhICehTAhLTg6tQ==
X-Received: by 2002:a05:6000:4615:b0:45b:d891:56bb with SMTP id ffacd0b85a97d-45ea4109a8dmr3655913f8f.38.1779364694940;
        Thu, 21 May 2026 04:58:14 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.55.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eaa93d291sm2227253f8f.36.2026.05.21.04.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 04:58:14 -0700 (PDT)
Message-ID: <d543fe6c-88a3-40b8-a83a-ccc6fa80eee3@linaro.org>
Date: Thu, 21 May 2026 12:58:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] phy: qcom: qmp-combo: skip USB power_off/exit
 after device teardown
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, val@packett.cool, laurentiu.tudor1@dell.com,
 alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-2-mike.scott@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260521010935.1333494-2-mike.scott@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_045817_531089_26579411 
X-CRM114-Status: GOOD (  26.92  )
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

On 21/05/2026 02:09, Michael Scott wrote:
> qmp_combo_usb_power_off() is reachable from an external consumer
> (notably dwc3 via phy_exit() during driver unbind) after this device's
> backing resources have already been released along a separate teardown
> chain. The dereference of qmp->pcs (whose ioremap mapping has been
> freed by devm cleanup) then takes a level-3 translation fault and
> oopses.
> 
> Easily reproducible during testing of USB-C role-switch enablement on
> Dell Latitude 7455 (X1E80100), by writing "none" to a USB-C DWC3's
> usb_role_switch role attribute, e.g.
> 
>    echo none > /sys/class/usb_role/a800000.usb-role-switch/role
> 
> which triggers the chain:
> 
>    Unable to handle kernel paging request at virtual address ffff8000876c5400
>    pc : qmp_combo_usb_power_off.isra.0+0x58/0x470 [phy_qcom_qmp_combo]
>    Call trace:
>      qmp_combo_usb_power_off+0x58/0x470 [phy_qcom_qmp_combo]
>      qmp_combo_usb_exit+0x38/0x90 [phy_qcom_qmp_combo]
>      phy_exit
>      dwc3_phy_exit [dwc3]
>      dwc3_core_remove [dwc3]
>      dwc3_remove [dwc3]
>      platform_remove
>      device_release_driver_internal
>      device_driver_detach
>      unbind_store
>      sysfs_kf_write
>      vfs_write
>      ksys_write
>      __arm64_sys_write
>      el0_svc
> 
> Two WARNs precede the oops from the same teardown chain, confirming
> the resource ordering:
> 
>    WARNING: drivers/clk/clk.c:4494 at clk_nodrv_disable_unprepare+0x8/0x18
>    WARNING: drivers/regulator/core.c:2657 at _regulator_put+0x84/0x98
> 
> i.e. the pipe clock provider has been unregistered and the regulators
> released before qmp_combo_usb_power_off() runs.
> 
> The proper long-term fix is a teardown-ordering rework so the QMP
> PHY's backing resources outlive any consumer that may still call its
> phy_ops. Pending that, guard the power_off/exit paths with the
> existing usb_init_count balance so re-entry after teardown does not
> oops. usb_init_count tracks the balance of usb_power_on/off; if it
> is zero we have either never powered on or have already powered off,
> and there is nothing to do.
> 
> The same guard is added to qmp_combo_usb_exit() since it is the entry
> point used by external consumers via phy_exit().
> 
> Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>

Something like this requires a Fixes: tag

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index cdcfad2e86b1..0db200292642 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3926,6 +3926,17 @@ static int qmp_combo_usb_power_off(struct phy *phy)
>   	struct qmp_combo *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> +	/*
> +	 * Reachable as ->exit from external consumers (notably dwc3) after
> +	 * this device's backing resources have already been released along
> +	 * a teardown chain. Refuse to touch registers in that case.
> +	 */
> +	if (!qmp->usb_init_count) {
> +		dev_dbg(qmp->dev, "%s: PHY not powered on, skipping\n",
> +			__func__);
> +		return 0;
> +	}
> +
>   	/* PHY reset */
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
> @@ -3968,6 +3979,17 @@ static int qmp_combo_usb_exit(struct phy *phy)
>   	struct qmp_combo *qmp = phy_get_drvdata(phy);
>   	int ret;
>   
> +	/*
> +	 * See qmp_combo_usb_power_off(): an external consumer may call
> +	 * phy_exit() after the QMP device's resources have been torn
> +	 * down. usb_init_count tracks usb_init/usb_exit balance.
> +	 */
> +	if (!qmp->usb_init_count) {
> +		dev_dbg(qmp->dev, "%s: PHY not initialised, skipping\n",
> +			__func__);
> +		return 0;
> +	}
> +
>   	mutex_lock(&qmp->phy_mutex);
>   	ret = qmp_combo_usb_power_off(phy);

This can't be right - you check usb_init_count before the mutex and then 
again inside the mutex @ qmp_combo_usb_power_off();

It seems like an error to even get to this function with !usb_init_count 
also check if that is a signed or an unsigned value as usb_init_count = 
-1 will evaluate true.

>   	if (ret)
> --
> 2.53.0
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
