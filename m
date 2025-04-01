Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8BDAC36014
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 15:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EZFRsArLltnZ+Y+jY+MyJQWi7dFbXOEBeiSP4UBaPJM=; b=T3qeOBKyHACqf/2sO87uzfGu6K
	0hUuau8GgWXnCznk1OPxOsbk/uwre2ykR9YudZ1nKW8nos/PAKO5tvLbpZ0xT4HV8kLQcNzwgfUZz
	2XVujYsxmgrLitdwJYOFH6kgx4ov5ORjMKP7p3tGrbg3RKCbZEgFZFa8wlfjQ7fWAgoXOvDUNBGwq
	m7Tn3ziLq1Q9RdS0EKi7zzg1FJJxKAxy2dDBCCwcTydk+i2LoETFr6Zyjup6p5qBNCcSoX1JmKhXv
	IDGnlz6joom70KT+N1ZhKr6jjkSbTH+iHid9ADJ2kZmLJxb56aEQwt4DiC97tGFsCRA8Z9SVwxI4W
	8GPoaJOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzdQI-00000003hkM-1pp1;
	Tue, 01 Apr 2025 15:21:06 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzdQF-00000003hjX-45CJ
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 15:21:05 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so39983765e9.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Apr 2025 08:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743520862; x=1744125662; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6QmY1VXbfg7Iw7RJbZONgQ7DZi2sp2JKT25/dy1CZn8=;
        b=FfuApKYzFLUiS0k5nhJhaaccHz9KsV3pNcZSGJ7m56ZxQbXaooFGdzYIWjIjNM///S
         EzTw+o9wqs11SmP2n0DRfyFueY3jyGF/cv2Xl1NbnBleeRJ7JQdXZ+uRLJXvSqxxHa4w
         KrH5f9bmtZnzZp6TKaGtAfrS8xdsCZjVqHNF7Lg0BF47L5SbNeyXSEtTyMU5z+bw5pw/
         qT38js4z1+LlyeVBVCIkWFBZTFUf386j+TDN4CmqPrdPGSKoP0+KP/2PWsLqiUZJPV7N
         9pqiFvRtUpzJeZAI7g5H2sGcihWyE64bCt32GL4cZ/YU8Y7GSpnF+cGv+LwxHxEybAFX
         6LLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520862; x=1744125662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6QmY1VXbfg7Iw7RJbZONgQ7DZi2sp2JKT25/dy1CZn8=;
        b=YHD1d7NDyhfATH6KQ9Wk2IVDa/hPWngG8OMRHRzh7bx8tqbuC748mT6T1SMH7bGFPy
         Cx04U0kmq4ksgC8JxhhJ6tCXqAtWGNJ45cHUhvMvZz7Tehx1gganfYJFK359QIlNDQCS
         HTXURtF3W8tXZqiy5UxBZ89v9COIhxZV9HHoMlP2+aeI0D4DlA3cCFoVtvQ8ydJf7CfR
         ynRfnCsivb4I10RsdJZExi9IyGKE8vZ5Zo9fgSzIVKsFU0VkGuzXmrbKFz1ig4qUfuF+
         C2FO7wEu1FCpe7K7UoNEjM8PhTenplbAIv9uXnAUNypJLcFEFC5KKHQHUh/5UGDGwxlR
         x8kw==
X-Forwarded-Encrypted: i=1; AJvYcCUxDZFV/R4nXalDBGdVpBrI/t5E1bAXXKJOV6XAvYDnwEVG9WJWUwXhdae4aGE31goRn+Wcvr4Ysc0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXA8pWOHB8R/Hz4IZ/k+il6gkJDlVa4ZKYZIhgD6Qc9bO2Xu9x
	uVgVlP5mFm+Yzmxdou8t2+m/SOMBsheXtV3IjX0y2cv4fKPE62Amj+yQW1I=
X-Gm-Gg: ASbGncuCdNVCBMkJmDBPaSUx2TiZ3Grv8NKAYa9fzVufgBYA4WAXFirrxfvaxYNjMZ6
	biqDDsDuCK/79Bx3zdDYuLm4QHz++GCiSVIlKGIpJO9oye5ZVoMQPvyD+GUKywToo34kpGuRAPw
	3sAmOi3UMd52Nbjmd4MrTwuLpXQPEnJ5B0tq3eOqMedGREPbd3AsK7ZUpd18OngX+pWhFBf/7XT
	ukmFP48tTWnZeky5zQXh4UwpCSwWgF8lm63Lbru8K5+8NvkYJSc/BRvTU1PE2MVXS0KeEDTAe7e
	pKXPErtAzG9vxFi9BQk5+MNj8WJ0+lHnsHYBn/CZGZMztAu5D+hcwp8vnVFUxtNhLR5q/qyYrZB
	SOYOO7L1/56DCo0g8o/A=
X-Google-Smtp-Source: AGHT+IEfubvOLWz2zSQ68/6ITVBTyInffdnTLvgA/r+W7bVzXQjsQ/YoKxi+Vly5jpfUYzoGt3YNgw==
X-Received: by 2002:a05:600c:34d0:b0:43c:f5e4:895e with SMTP id 5b1f17b1804b1-43db61d7785mr104914505e9.1.1743520861479;
        Tue, 01 Apr 2025 08:21:01 -0700 (PDT)
Received: from [172.21.167.71] (mob-194-230-148-227.cgn.sunrise.net. [194.230.148.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b663470sm14309214f8f.27.2025.04.01.08.21.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:21:01 -0700 (PDT)
Message-ID: <82f5fe14-3d98-4bd6-b5b5-852c8350edd8@gmail.com>
Date: Tue, 1 Apr 2025 17:20:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] phy: qcom: pcie: Determine has_nocsr_reset
 dynamically
To: Wenbin Yao <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
 abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
 konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
 <20250319094544.3980357-2-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
In-Reply-To: <20250319094544.3980357-2-quic_wenbyao@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_082104_018197_805D3F3E 
X-CRM114-Status: GOOD (  17.61  )
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
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>


Successfully tested on Snapdragon X1-26-100 on Asus Zenbook A14.

This fixes pcie6a_phy with "qcom,x1p42100-qmp-gen4x4-pcie-phy" as 
compatible, which was not working before.

Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 17 ++++-------------
>   1 file changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 018bbb300830..38dbe690f2d5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2969,8 +2969,6 @@ struct qmp_phy_cfg {
>   
>   	bool skip_start_delay;
>   
> -	bool has_nocsr_reset;
> -
>   	/* QMP PHY pipe clock interface rate */
>   	unsigned long pipe_clock_rate;
>   
> @@ -3934,7 +3932,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>   
>   	/* 20MHz PHY AUX Clock */
>   	.aux_clock_rate		= 20000000,
> @@ -3967,7 +3964,6 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>   
>   	/* 20MHz PHY AUX Clock */
>   	.aux_clock_rate		= 20000000,
> @@ -4087,7 +4083,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>   };
>   
>   static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
> @@ -4121,7 +4116,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>   };
>   
>   static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
> @@ -4153,7 +4147,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
>   
>   	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
>   	.phy_status		= PHYSTATUS_4_20,
> -	.has_nocsr_reset	= true,
>   };
>   
>   static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
> @@ -4456,12 +4449,10 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>   	if (ret)
>   		return dev_err_probe(dev, ret, "failed to get resets\n");
>   
> -	if (cfg->has_nocsr_reset) {
> -		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> -		if (IS_ERR(qmp->nocsr_reset))
> -			return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> -						"failed to get no-csr reset\n");
> -	}
> +	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
> +	if (IS_ERR(qmp->nocsr_reset))
> +		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> +				     "failed to get no-csr reset\n");
>   
>   	return 0;
>   }


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
