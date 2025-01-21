Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B59C02185
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jan 2025 09:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVdnLQHQklxSjwIHWiYvB0ygD2733Z27ipooziG+LOg=; b=AXfZ9BEd9W0LYk
	l6zLQmlV7Aa7bgiQqwTx4dxNA8krZJSVaxciZ54gsqMPA3uGyJAymlTdFHnuiJH9s0XXgWhDn0DFa
	EYTI3GWHLY8Aq01zPvKX9jz2GyVi4wtSiupGkt9DYDI0dtBFpBV/VNz62s9S2c4p8EAW2lhd3XjDL
	Fq4isJoZW5lUTlV3CqaOe7tJd2a7k9HUSMkZt0NWza+cxdTtdEMtm8tGMxDk/J+JJwFRwiwjVYPFE
	9exFF65tvgRzqzmzvCdT3LSRB9Hp374y0UWUt8wv1i+Edb8Pm5Q4nGaEMc6Cq2HWBt0wgT++/Y0KC
	hbUpf1bJQk634S6+nSdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taAyd-00000007Tsu-01va;
	Tue, 21 Jan 2025 09:55:19 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taAyb-00000007TrG-0PjO
	for linux-phy@lists.infradead.org;
	Tue, 21 Jan 2025 09:55:18 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-386329da1d9so2937101f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Jan 2025 01:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737453315; x=1738058115; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BJEfTvcXUOg/2RMScN4VNlvtaWh5a7Q7ooc2IyVfYw8=;
        b=UE91nxfrm8ZaePEvy35IS7anwpPb8oCGgM4QtJ0++WEweW793KJl4Yy4BAHtkZzx5V
         uyUHU8BVll2n5CDC9aJETpDrf+V+uQFRHFhDtB8X2srH0qJRNAUKGsUmzRlS+TSxmHAI
         9UUtDDepf+Bp+RKDM4ZQvsCLUaKKfLsFhi+9mKr7EUqjYrJj4dilsnTrKIxlABfwOKrM
         bNlwhKvQGbhMz5VcKIm/Ah7KPmJqVyPiypKbKyV6OPhFFHXP/XbpmcSRYgVNV8sqiA/n
         n+oca4Z0F9UbOwYT4+wZ+xmm+2Zf/7QiLVpeqGf7WYruC1Z1CjfdX1v8Q3eLJuJmHRyZ
         UnXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737453315; x=1738058115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJEfTvcXUOg/2RMScN4VNlvtaWh5a7Q7ooc2IyVfYw8=;
        b=GbkLEEL2c1h3p/OFDX58ZWf9EnXUa6EVztCtmhUUa/V5ZayDOuU7l7DTh5zpQ6Q56C
         2RkelALt+hN6M83J6ttlz33Reigm4iJ2BSEu3q/VvIewtlptheuC4ZP6Yr4qd1fWeprr
         UOVcQtQgKqQSiooy1qDeZshyDxHQ1U9lq+rxUKXETesn5wXgQBDE1SCPuSPV9CQmXAlG
         XXFJQcjiX717uyLxoO1zmaTpdhzfErckwDSdow5iZy/igYJ25IUeyVX1sXRUP+bjomeQ
         DdZs0Mk+byWtvxLOp+VbnHRuUIFJiHzEfiZ5diCQXAnAZOeF+YuamXjDgqcwxQ/rkqbr
         4Hfg==
X-Forwarded-Encrypted: i=1; AJvYcCUPrmCk4idi4cBpapNcnUl8aFngnYv47NkPSD0fKHTvh/MAIuObr8Ntrh9ch7AV08rBJ94ZBmEeAaQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgFTpgnUNovFmr3PbK9rkAJv2RX9iEuztteAKbqxQouXXzazj1
	aSxqhWCVHkj/DAzHKAxv2aCPVUNegzV0SQIBiNG5ABZm+Pn/tARw2HKzTmouCek=
X-Gm-Gg: ASbGncvUyc8ATsQjb19oCXQxgjXzJ78GdMbNt3Yqy4zUFicRrqxA3Zofg8vqTz/+JpY
	ce60Z4ErNn2P2oi7/YmO7CkI7uNSoH4evR91cPkmgUyW4IMTGwexjwTuPs0X+9YtkLj6NnWUvPs
	CGOET/VLD/vwEt06EEkm6Hgoi6NKyJ5Z/xaxHjgrODt9GzjcLfnsNSWz8YQ8K/AOZsgzLMUhCNM
	k92+BXwSWznFF+3+cF74etcHBfPcewBiLY8fyltavLSPd9Xm8Z7McICH2MHJmk15Njf
X-Google-Smtp-Source: AGHT+IFN+/Ulyj4CwXzze+VR77TqlAAim9U99xctcP1kZZn/i+KqjTbOyWR88Y+G5DoLrMkVoNvbDg==
X-Received: by 2002:a5d:4f0b:0:b0:385:e0d6:fb73 with SMTP id ffacd0b85a97d-38bf56624a8mr12912498f8f.15.1737453315261;
        Tue, 21 Jan 2025 01:55:15 -0800 (PST)
Received: from linaro.org ([86.123.96.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf3275562sm13166638f8f.66.2025.01.21.01.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 01:55:14 -0800 (PST)
Date: Tue, 21 Jan 2025 11:55:13 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_qianyu@quicinc.com,
	neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
	quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
Message-ID: <Z49vAXdhROVm93TW@linaro.org>
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-2-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250121094140.4006801-2-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_015517_147394_C34BF09D 
X-CRM114-Status: GOOD (  18.50  )
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

On 25-01-21 17:41:39, Wenbin Yao wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Decide the in-driver logic based on whether the nocsr reset is present
> and defer checking the appropriateness of that to dt-bindings to save
> on boilerplate.
> 
> Reset controller APIs are fine consuming a nullptr, so no additional
> checks are necessary there.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 873f2f9844c6..ac42e4b01065 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2793,8 +2793,6 @@ struct qmp_phy_cfg {
>  
>  	bool skip_start_delay;
>  
> -	bool has_nocsr_reset;
> -
>  	/* QMP PHY pipe clock interface rate */
>  	unsigned long pipe_clock_rate;
>  
> @@ -3685,7 +3683,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  
>  	/* 20MHz PHY AUX Clock */
>  	.aux_clock_rate		= 20000000,
> @@ -3718,7 +3715,6 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  
>  	/* 20MHz PHY AUX Clock */
>  	.aux_clock_rate		= 20000000,
> @@ -3836,7 +3832,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
> @@ -3870,7 +3865,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
> @@ -3902,7 +3896,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
>  
>  	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>  	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>  };
>  
>  static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> @@ -4203,11 +4196,14 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>  
> -	if (cfg->has_nocsr_reset) {
> -		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> -		if (IS_ERR(qmp->nocsr_reset))
> +	qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> +	if (IS_ERR(qmp->nocsr_reset)) {
> +		if (PTR_ERR(qmp->nocsr_reset) == -ENOENT ||
> +		    PTR_ERR(qmp->nocsr_reset) == -EINVAL)
> +			qmp->nocsr_reset = NULL;
> +		else
>  			return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> -						"failed to get no-csr reset\n");
> +					     "failed to get no-csr reset\n");
>  	}
>  
>  	return 0;
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
