Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A2BC77B73
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 10:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQZnbJ0CND9g62tSjJhgzFMozcITFPoqp+BJ1X7Wp5M=; b=Q7v2Hg7FlNcl89
	aloJgnBVl6QIoqDibfctIebUKQrpc4G2IhMQJFte/l1TzWLf37uyncOOtXck0LJBZWlY43FZ3BZbM
	N7T9r8Df3XsFDGB2uWX24jidEDr2XdwJCk7/ZXSjmokO8Ma0cFGkyfd1QoA134frwfUXdkSZXxrLp
	7iOvLJIJujHZWhBPnwieh+UUj0mH5R013oZAEswj+dbzqv94WiOQ9FSLaJ4gzybtxqaYoFyICpxR1
	kzfumWz0d1edbuCaBASvHQdFlQ9WJTlzEV61TdcuEsQ+4Jd31oudQ1KD9U5zwXFTWYw+AKsYax7Rt
	zH6LJwFqszdiXSyiFF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp5XT-0056gJ-1I;
	Wed, 19 Apr 2023 10:59:51 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp5XQ-0056fZ-1h
	for linux-phy@lists.infradead.org;
	Wed, 19 Apr 2023 10:59:49 +0000
Received: by mail-lj1-x22a.google.com with SMTP id bz21so9795192ljb.11
        for <linux-phy@lists.infradead.org>; Wed, 19 Apr 2023 03:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681901986; x=1684493986;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JhnqP+JYWpX2HzWlP/4Ls+kriv5dclaEILtvuX+5sLA=;
        b=mY5tyJSkOj/2kORwfVDYq4JcHGiHCOhqzdd5ZaIGn1JodDgn5ZqqSLmXjwZppX7SP0
         6zMD/rwN5e2WpuVzqp4U0iT8aWlM+j7scpoc+AF93ywH/8bc6VRABQbTLyMn9Hj34TeS
         rJmAN9m34DzVTWLUU730Xmcq0w4PxViaH0xXo6hy3Sl4qA7fSiky8yNYjOkNZjCOrjAw
         pkYw2ASL7Y6JtItvPWaZwidRqXMDQAg9uQOji0uVmjMaeyNP4BAauczpqdhw0oIxnSBE
         7L4hdrH3Bslwy1LN0wP9gZLznTYhp+/EJ+T+edBqn3Pme+gndSMuma+OGQdli2NBrhuM
         Ys/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681901986; x=1684493986;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JhnqP+JYWpX2HzWlP/4Ls+kriv5dclaEILtvuX+5sLA=;
        b=hPpSNdlN43Y3mD7F573YaHUGajwn3zR9TSkAoX2Zw+rlUE15qse68n3f78ryfJnuk4
         YdXHTXvj1rIIh0zhRk6HjupbHlviTSrzHq596fezwW9ROGvuJYWnNl7M3xBnFEQc2Xp9
         0Zl+2LYPP3/VlxyCAC+1CGlhRAte4lVK3pOk5uqtGOStWpC2fngxw9LERP/MA5Pby5rP
         V+gU60s1QKKC68DAWnQ7v+SyVKsVZvkR2bT61a9JdNi3lTGwuYnZq90nDfR9/b59PyE/
         0Zdy0YDZp2FEL//uK4cjJacaNeRuYFXxnhV6Fj0GQ4FjvCTNoPtQNSF2HojtSuIdS9if
         teVw==
X-Gm-Message-State: AAQBX9ccJw+WqGQOKv3l2CZ+voc07ZuSdy20qr2pYRaungKh5HaoT1JR
	DwpdNrgAJGrBdEelAbZFQkqlwg==
X-Google-Smtp-Source: AKy350ZjeZSUx9Sx4A07w+LgFw5upEP+9BoCC223A2ue0kIg4ouVlq5wBRBb5urxg/Mny1IsBKlPYg==
X-Received: by 2002:a2e:994e:0:b0:298:aa76:2fb8 with SMTP id r14-20020a2e994e000000b00298aa762fb8mr2180765ljj.12.1681901986441;
        Wed, 19 Apr 2023 03:59:46 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id u25-20020a2e2e19000000b002a7e9e4e9dcsm2804138lju.114.2023.04.19.03.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 03:59:46 -0700 (PDT)
Message-ID: <999af225-2f21-0cf5-0292-3c5afa332121@linaro.org>
Date: Wed, 19 Apr 2023 12:59:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] phy: qcom-qmp-pcie: correct sm8350 PHY tables
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230414205425.3878902-1-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230414205425.3878902-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_035948_565216_D6A9150D 
X-CRM114-Status: GOOD (  17.85  )
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



On 14.04.2023 22:54, Dmitry Baryshkov wrote:
> Correct sm8350 PCIe PHY tables according to the vendor dtsi file.
> This accounts some additional differences between PHY programming on
> sm8350 and sm8450.
> 
> The name for the PCS register 0x8 is not present in the vendor kernels,
> but since on other generations the register prior to POWER_STATE_CONFIG2
> is called POWER_STATE_CONFIG1, we can establish that as its name.
> 
> Fixes: c70052739d16 ("phy: qcom-qmp-pcie: add support for sm8350 platform")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Are you referencing the entries in lahaina-2.1.dtsi?

[...]

> +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0xa8),
e.g. my downstream says 0x77 here

> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RATE_SLEW_CNTRL1, 0x0b),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x05),

Konrad

> +};
> +
> +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1, 0x00),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_EQ_CONFIG2, 0x0f),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG1, 0x0f),
> +	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
>  };
>  
>  static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_rx_tbl[] = {
> @@ -2325,15 +2349,15 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
>  		.tx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_tx_tbl),
>  		.rx		= sm8450_qmp_gen3_pcie_rx_tbl,
>  		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
> -		.pcs		= sm8450_qmp_gen3_pcie_pcs_tbl,
> -		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
> -		.pcs_misc	= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
> -		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
> +		.pcs		= sm8350_qmp_gen3x1_pcie_pcs_tbl,
> +		.pcs_num	= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_pcs_tbl),
> +		.pcs_misc	= sm8350_qmp_gen3x1_pcie_pcs_misc_tbl,
> +		.pcs_misc_num	= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_pcs_misc_tbl),
>  	},
>  
>  	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
> -		.serdes		= sm8450_qmp_gen3x1_pcie_rc_serdes_tbl,
> -		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_serdes_tbl),
> +		.serdes		= sm8350_qmp_gen3x1_pcie_rc_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_serdes_tbl),
>  		.rx		= sm8350_qmp_gen3x1_pcie_rc_rx_tbl,
>  		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
>  	},
> @@ -2369,6 +2393,8 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
>  	},
>  
>  	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
> +		.serdes		= sm8350_qmp_gen3x2_pcie_rc_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_serdes_tbl),
>  		.rx		= sm8350_qmp_gen3x2_pcie_rc_rx_tbl,
>  		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_rx_tbl),
>  		.pcs		= sm8350_qmp_gen3x2_pcie_rc_pcs_tbl,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> index a469ae2a10a1..ea466e14ca12 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> @@ -8,6 +8,7 @@
>  #define QCOM_PHY_QMP_PCS_PCIE_V5_H_
>  
>  /* Only for QMP V5 PHY - PCS_PCIE registers */
> +#define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG1		0x08
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2		0x0c
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4		0x14
>  #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x20

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
