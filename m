Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C15FC4167B
	for <linux-phy@archiver.kernel.org>; Sun,  1 Jan 2023 20:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itCPW1pbdSWjR62Rqd1eqpkEHGuCiT/0x6gNaVRjMW4=; b=mjevgCtHyF/R6z
	mAhS8qCSK6rwTO9kT3qZUfa3HzEt85Ih6iodFsV95juxw4HD43m+2GiMAcRIxJR78rus+YTAh+eDB
	z405EkB3tMxNHf5Gnal+u8U+kEBvSB/zmDCwsbj7526Xym9IY7wU4a1l2mF6jkAbYPn1FcWgnQ+TW
	xEYNif2Pxa/FqQejDuqrl4Fn7jCpij9rcmPpiOmT5XYGFZxvVbm7mfusmrAVNkc64ov84H/Kx3dDp
	BB3M7JaVWREtRzGKicuLNp+Yi4utIjmVah8LXqq/ngJckw2CzbYtgLHMvGs1Gvo2oo+wmE+O1XSsH
	OkcJPaPCwVZEieXMPNhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC4yE-004jHy-CW; Sun, 01 Jan 2023 20:30:14 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pC4kQ-004aAQ-Pd
	for linux-phy@lists.infradead.org; Sun, 01 Jan 2023 20:16:01 +0000
Received: by mail-lf1-x135.google.com with SMTP id f34so38918828lfv.10
        for <linux-phy@lists.infradead.org>; Sun, 01 Jan 2023 12:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E8mP2UmCgPNXYMatJwLQfiWHiM9C1wdbJUCeXFCgIEE=;
        b=l5oWlMMKfrwp2mu0Zt5Clp4d2EdO6W0vbW3FRIhC19c/4pRpurZ05uP/brilkstMw/
         NJKwPjmd3Yas7b+LMa2K/kVYYEJD7YHrrnGNKvj0mI0u6lkNvq7bD/EQSsZSbI4QMC2d
         nna9WOry35n/VPYNImfTKBamqSHfNM8vso81e4cu9BUrTmFrEykH8OQgnqB6cJe8rMfT
         iTytJwOnL+1hr9pQ29fa4iKlV1KuIgiAHXaLd09UCVQdAvosiSp91hSL8s5jkBqO0ooH
         Iqx/6g7ED3qzqERmV2815I0H0TCe3Et/s73ZAjZTWurz5v/RE/DEO9241Z5Bk98wsa8F
         3WGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E8mP2UmCgPNXYMatJwLQfiWHiM9C1wdbJUCeXFCgIEE=;
        b=BqmJ200u2u7oXPoOFHQiDag3cwS6nbNSEZZ3yIvEmDvl/dX+8eWnxYRrwhsChJPmBq
         4Jkmv0oxtVel5HbY0rTnYkONXefrOesl6RO0KUQ6Y4TrQCbN93lFI3+xUDCbJ53IaPjz
         ZeBR7Piol6dqjrf354kpMQOJI094p/ZBisI80f3nyKqwQH3koG4Ii8B0qY+va8udNqPh
         vDltIwUu0a5qJ9dpTo4Avl2V3MY9j0SZidotvKOn2fM85FdipMgrYrVl453b8nM6iZOd
         Y7K9VVj4X1iscmnB3z049jsESriMsxOW65Q/PcoqAGT1fIxAu3paN71ISPrXnqOKgJzZ
         y+fQ==
X-Gm-Message-State: AFqh2koSbK48b09HWdQD2LS0sjWhDjuNU/wY4/nytxpQLjcAESHwGy3X
	SRE1hDqn8ch+q9lpdVQiRC2wnITtNjc4Ska2
X-Google-Smtp-Source: AMrXdXtJuAhBfNBrSyBrsQ8iqvzNNJH7QynvnsW2Tdv3ApAv7j0RgqYGoZTXa4VN6JRJvjfkuEyUqQ==
X-Received: by 2002:a05:6512:3f16:b0:4ca:f97f:4a21 with SMTP id y22-20020a0565123f1600b004caf97f4a21mr9473876lfa.37.1672604156462;
        Sun, 01 Jan 2023 12:15:56 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s1-20020a056512202100b004cb38794ebfsm205153lfs.238.2023.01.01.12.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 12:15:55 -0800 (PST)
Message-ID: <bbfba6ca-c410-b4aa-ba3c-2fbf55065b24@linaro.org>
Date: Sun, 1 Jan 2023 22:15:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 07/10] phy: qualcomm: qmp-pcie: Add support for SM8550
 g3x2 and g4x2 PCIEs
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, "vkoul@kernel.org"
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-8-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221116120157.2706810-8-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230101_121558_920091_5AD16F51 
X-CRM114-Status: GOOD (  29.02  )
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

On 16/11/2022 14:01, Abel Vesa wrote:
> Add the SM8550 both g4 and g3 configurations. In addition, there is a
> new "lane shared" table that needs to be configured for g4, along with
> the No-CSR list of resets.
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 354 +++++++++++++++++++++++
>   1 file changed, 354 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 47cccc4b35b2..87c7c20dfc8d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c

[skipped tables]

> @@ -1473,6 +1701,8 @@ struct qmp_pcie_offsets {
>   struct qmp_phy_cfg_tbls {
>   	const struct qmp_phy_init_tbl *serdes;
>   	int serdes_num;
> +	const struct qmp_phy_init_tbl *ln_shrd_serdes;
> +	int ln_shrd_serdes_num;
>   	const struct qmp_phy_init_tbl *tx;
>   	int tx_num;
>   	const struct qmp_phy_init_tbl *rx;
> @@ -1510,6 +1740,9 @@ struct qmp_phy_cfg {
>   	/* resets to be requested */
>   	const char * const *reset_list;
>   	int num_resets;
> +	/* no CSR resets to be requested */
> +	const char * const *nocsr_reset_list;
> +	int num_nocsr_resets;

Is there any difference between 'no CSR' resets and the plain ones? Can 
we handle them in a single array instead?

>   	/* regulators to be requested */
>   	const char * const *vreg_list;
>   	int num_vregs;
> @@ -1523,6 +1756,9 @@ struct qmp_phy_cfg {
>   
>   	bool skip_start_delay;
>   
> +	/* true, if PHY has lane shared serdes table */
> +	bool has_ln_shrd_serdes_tbl;

s/shrd/shared/g ? I think it's easier to read and to understand.

> +
>   	/* QMP PHY pipe clock interface rate */
>   	unsigned long pipe_clock_rate;
>   };
> @@ -1534,6 +1770,7 @@ struct qmp_pcie {
>   	bool tcsr_4ln_config;
>   
>   	void __iomem *serdes;
> +	void __iomem *ln_shrd_serdes;
>   	void __iomem *pcs;
>   	void __iomem *pcs_misc;
>   	void __iomem *tx;
> @@ -1548,6 +1785,7 @@ struct qmp_pcie {
>   	int num_pipe_clks;
>   
>   	struct reset_control_bulk_data *resets;
> +	struct reset_control_bulk_data *nocsr_resets;
>   	struct regulator_bulk_data *vregs;
>   
>   	struct phy *phy;
> @@ -1595,11 +1833,19 @@ static const char * const sdm845_pciephy_clk_l[] = {
>   	"aux", "cfg_ahb", "ref", "refgen",
>   };
>   
> +static const char * const sm8550_pciephy_clk_l[] = {
> +	"aux", "aux_phy", "cfg_ahb", "ref", "refgen",
> +};
> +
>   /* list of regulators */
>   static const char * const qmp_phy_vreg_l[] = {
>   	"vdda-phy", "vdda-pll",
>   };
>   
> +static const char * const sm8550_qmp_phy_vreg_l[] = {
> +	"vdda-phy", "vdda-pll", "vdda-qref",
> +};
> +
>   /* list of resets */
>   static const char * const ipq8074_pciephy_reset_l[] = {
>   	"phy", "common",
> @@ -1609,6 +1855,10 @@ static const char * const sdm845_pciephy_reset_l[] = {
>   	"phy",
>   };
>   
> +static const char * const sm8550_pciephy_nocsr_reset_l[] = {
> +	"pcie_1_nocsr_com_phy_reset",
> +};
> +
>   static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
>   	.serdes		= 0,
>   	.pcs		= 0x0200,
> @@ -2084,6 +2334,65 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
>   	.phy_status		= PHYSTATUS_4_20,
>   };
>   
> +static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
> +	.lanes = 2,
> +
> +	.tbls = {
> +		.serdes		= sm8550_qmp_gen3x2_pcie_serdes_tbl,
> +		.serdes_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_serdes_tbl),
> +		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
> +		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
> +		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
> +		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
> +		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
> +		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
> +		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
> +		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
> +	},
> +	.clk_list		= sdm845_pciephy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8250_pcie_regs_layout,
> +
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS,
> +};
> +
> +static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
> +	.lanes = 2,
> +
> +	.tbls = {
> +		.serdes			= sm8550_qmp_gen4x2_pcie_serdes_tbl,
> +		.serdes_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_tbl),
> +		.ln_shrd_serdes		= sm8550_qmp_gen4x2_pcie_serdes_ln_shrd_tbl,
> +		.ln_shrd_serdes_num	= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_ln_shrd_tbl),
> +		.tx			= sm8550_qmp_gen4x2_pcie_tx_tbl,
> +		.tx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_tx_tbl),
> +		.rx			= sm8550_qmp_gen4x2_pcie_rx_tbl,
> +		.rx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_rx_tbl),
> +		.pcs			= sm8550_qmp_gen4x2_pcie_pcs_tbl,
> +		.pcs_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_tbl),
> +		.pcs_misc		= sm8550_qmp_gen4x2_pcie_pcs_misc_tbl,
> +		.pcs_misc_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_misc_tbl),
> +	},
> +	.clk_list		= sm8550_pciephy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8550_pciephy_clk_l),
> +	.reset_list		= sdm845_pciephy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> +	.nocsr_reset_list	= sm8550_pciephy_nocsr_reset_l,
> +	.num_nocsr_resets	= ARRAY_SIZE(sm8550_pciephy_nocsr_reset_l),
> +	.vreg_list		= sm8550_qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +	.regs			= sm8250_pcie_regs_layout,
> +
> +	.has_ln_shrd_serdes_tbl	= true,
> +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> +	.phy_status		= PHYSTATUS_4_20,
> +};
> +
>   static void qmp_pcie_configure_lane(void __iomem *base,
>   					const struct qmp_phy_init_tbl tbl[],
>   					int num,
> @@ -2132,6 +2441,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   	void __iomem *serdes = qmp->serdes;
> +	void __iomem *ln_shrd_serdes = qmp->ln_shrd_serdes;
>   	void __iomem *tx = qmp->tx;
>   	void __iomem *rx = qmp->rx;
>   	void __iomem *tx2 = qmp->tx2;
> @@ -2159,6 +2469,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>   		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>   		qmp_pcie_init_port_b(qmp, tbls);
>   	}
> +
> +	if (cfg->has_ln_shrd_serdes_tbl)
> +		qmp_pcie_configure(ln_shrd_serdes, tbls->ln_shrd_serdes,
> +				       tbls->ln_shrd_serdes_num);
>   }
>   
>   static int qmp_pcie_init(struct phy *phy)
> @@ -2179,6 +2493,14 @@ static int qmp_pcie_init(struct phy *phy)
>   		goto err_disable_regulators;
>   	}
>   
> +	if (qmp->nocsr_resets) {
> +		ret = reset_control_bulk_assert(cfg->num_nocsr_resets, qmp->nocsr_resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "no-csr reset assert failed\n");
> +			goto err_disable_regulators;
> +		}
> +	}
> +
>   	usleep_range(200, 300);
>   
>   	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
> @@ -2240,6 +2562,14 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	if (ret)
>   		return ret;
>   
> +	if (qmp->nocsr_resets) {
> +		ret = reset_control_bulk_deassert(cfg->num_nocsr_resets, qmp->nocsr_resets);
> +		if (ret) {
> +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
> +			goto err_disable_pipe_clk;
> +		}
> +	}
> +
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>   
> @@ -2373,6 +2703,21 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>   	if (ret)
>   		return dev_err_probe(dev, ret, "failed to get resets\n");
>   
> +	if (cfg->nocsr_reset_list) {
> +		qmp->nocsr_resets = devm_kcalloc(dev, cfg->num_nocsr_resets,
> +				   sizeof(*qmp->nocsr_resets), GFP_KERNEL);
> +		if (!qmp->nocsr_resets)
> +			return -ENOMEM;
> +
> +		for (i = 0; i < cfg->num_nocsr_resets; i++)
> +			qmp->nocsr_resets[i].id = cfg->nocsr_reset_list[i];
> +
> +		ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_nocsr_resets,
> +								qmp->nocsr_resets);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to get no CSR resets\n");
> +	}
> +
>   	return 0;
>   }
>   
> @@ -2502,6 +2847,9 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
>   			return PTR_ERR(qmp->rx2);
>   
>   		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
> +
> +		if (cfg->has_ln_shrd_serdes_tbl)
> +			qmp->ln_shrd_serdes = devm_of_iomap(dev, np, 6, NULL);

I think we also need to check the returned value. Also, I think we can 
drop the conditional check here. we don't have to validate the DT, so if 
the reg is present in DT, then it's present. If not, it's not required.

>   	} else {
>   		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
>   	}
> @@ -2729,6 +3077,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>   	}, {
>   		.compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy",
>   		.data = &sm8450_qmp_gen4x2_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy",
> +		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy",
> +		.data = &sm8550_qmp_gen4x2_pciephy_cfg,
>   	},
>   	{ },
>   };

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
